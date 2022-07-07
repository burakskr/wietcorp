import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:wietcorp/Helper/ColorConstant.dart';
import 'package:wietcorp/Helper/PaddingConstant.dart';
import 'package:wietcorp/Models/ImageGetModel.dart';
import 'package:wietcorp/ViewModel/ImageViewModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: PaddingConstant.applicationAllPadding20,
          child: FutureBuilder<List<ImageGetModel>>(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ImageGetModel> _imagemodeldata = snapshot.data!;
                return SingleChildScrollView(
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: _imagemodeldata
                        .map(
                          (e) => StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: InkWell(
                              onTap: () {
                                if (e.categories!.isNotEmpty) {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      content: Padding(
                                        padding: PaddingConstant
                                            .applicationAllPadding20,
                                        child: Text(e.categories!.first.name
                                            .toString()),
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(e.url ??
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtbz5ERtTjKXmP3V9b1NsTcp-BAdURGoQNzg&usqp=CAU"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text("Error in API"),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.applicationRed,
                  ),
                );
              }
            },
            future: getimagemodel(),
          ),
        ),
      ),
    );
  }

  Future<List<ImageGetModel>> getimagemodel() async {
    final _viewmodel = Provider.of<ImageViewModel>(context, listen: false);
    return _viewmodel.getimagemodel();
  }
}

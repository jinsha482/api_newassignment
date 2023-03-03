import 'package:newassignment/controller/product_controller.dart';
import 'package:newassignment/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class HomePageView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.blue,
        elevation: 0,
       title: Text("Rest API Example",style: TextStyle(color: Colors.white),),
    centerTitle: true,  ),
      body: Column(
        children: [
         SizedBox(height:15),
        Expanded(
            child: Obx(
                  () {
                if (productController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else{
    return ListView.separated(

    itemCount: productController.productList.length,

    itemBuilder: (context, index) {
    return ProductTile(productController.productList[index]);
    },
    separatorBuilder: (context,int index){
    return Divider();
    }

    );

    }})

      ),
    ]));
  }
}

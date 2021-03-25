import 'package:dio_getx/pages/components/loading_overlay.dart';
import 'package:dio_getx/pages/posts/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/posts_list_item.dart';

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: Container(
        child: GetBuilder<PostsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.postsList.length,
                itemBuilder: (context, index) => PostsListItem(
                  post: controller.postsList[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

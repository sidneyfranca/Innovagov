import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/posts/posts_bloc.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/theme/theme.dart';
import 'app_buttons.dart';

class EmptyFeed extends StatelessWidget {
  const EmptyFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nenhum post ainda",
            style: themeData.textTheme.displaySmall,
          ),
          Space.hXSM(context),
          AppButton(
            child: Text(
              "Gerar posts iniciais",
              style: themeData.textTheme.displaySmall,
            ),
            onPressed: () {
              context.read<PostsBloc>().add(GenerateInitPosts());
            },
          ),
        ],
      ),
    );
  }
}

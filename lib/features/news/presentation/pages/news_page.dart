import 'package:final_clean/core/base/bloc_state.dart';
import 'package:final_clean/features/news/presentation/cubit/news_cubit.dart';
import 'package:final_clean/features/news/presentation/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nigga"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NewsCubit>().getNews();
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: BlocBuilder<NewsCubit, BaseState>(
        builder: (context, state) {
          if (state is NewsSuccess) {
            return ListView.builder(
              itemCount: state.newsEntity.totalResults,
              itemBuilder:
                  (context, index) =>
                      NewsWidget(article: state.newsEntity.article![index]),
            );
          } else if (state is NewsError) {
            return Center(child: Text(state.message ?? " What is up nigger"));
          } else if (state is StateLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Container();
        },
      ),
    );
  }
}

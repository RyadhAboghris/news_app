import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/components/componenets.dart';

import '../../cubit/news_cubit.dart';
import '../../cubit/news_states.dart';

class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var list = NewsCubit.get(context).search;

          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: defaultformfield(
                    conttroller: searchController,
                    type: TextInputType.text,
                    onChange: (value) {
                      NewsCubit.get(context).getSearch(value);
                    },
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'search must to be empty';
                      }
                      return null;
                    },
                    lable: 'Search',
                  ),
                ),
                Expanded(
                  child: articleBuilder(list, context, isSearch: true),
                ),
              ],
            ),
          );
        });
  }
}

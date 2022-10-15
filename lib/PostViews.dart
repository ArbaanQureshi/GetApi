import 'package:api/model.dart';
import 'package:api/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PostViews extends StatefulWidget {
  const PostViews({Key? key}) : super(key: key);

  @override
  State<PostViews> createState() => _PostViewsState();
}

class _PostViewsState extends State<PostViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Getter"),
      ),
      body: BlocBuilder<PostsCubits,List<Post>>(
        builder: (context, state) {
            if(state.isEmpty){
             return Center(
               child: CircularProgressIndicator(),
             );
           }else{
              return ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (context, index) =>
                      Card(child:ListTile(
                        leading: CircleAvatar(
                          child: Text(state[index].id.toString()),),
                        title: Text(state[index].title,maxLines: 1,),
                        subtitle: Text(state[index].body,maxLines: 1,),
                      ) ,
                        elevation: 3,
                        color: Colors.amber,
                      ));
            }
      },
      )
    );
  }
}

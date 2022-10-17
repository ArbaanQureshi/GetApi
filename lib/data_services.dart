import 'dart:convert' as convert;
import 'package:dio/dio.dart';
import 'package:api/model.dart';
// import 'package:http/http.dart' as http;

// class  DataServices{
//   final _baseUrl='jsonplaceholder.typicode.com';
//     Future<List<Post>> getPosts() async {
//       try {
//         final uri = Uri.http(_baseUrl,'/posts');
//         final response = await http.get(uri);
//         if (response.statusCode == 200) {
//           var json = convert.jsonDecode(response.body) as List;
//           var posts = json.map((e) => Post.fromJson(e)).toList();
//           return posts;
//         } else {
//           throw 'Something went wrong ${response.statusCode}';
//         }
//       } catch (e) {
//         rethrow;
//       }
//     }
// }

class DataServicesDio{
    final url='https://jsonplaceholder.typicode.com/posts';
    Future<List<Post>>getPost() async{
        try{
          Response response;
          var dio = Dio();
          response= await dio.get(url);
          if(response.statusCode==200){
            var json=response.data;
            var pos=List<Post>.from(
                json.map((e)=>Post.fromJson(e)));
            return pos;
          }else{
            throw 'someThing Wentr Wrong ${response.statusCode}';
          }
        }catch(e){
          rethrow;
        }
    }
}

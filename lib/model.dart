class Post{
  final int id;
  final int Userid;
  final String title;
  final String body;

  Post({
      required this.id,
      required this.Userid,
      required this.title,
      required this.body,
});

    factory Post.fromJson(Map<String,dynamic>e){
      return Post(id: e['id'], Userid: e['userId'], title: e['title'], body: e['body']);
    }
}
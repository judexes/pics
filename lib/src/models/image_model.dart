class ImageModel {
  int id;
  String url;
  String title;

  //  create a constructor, with same name as the class
  ImageModel(this.id, this.title, this.url);

  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}

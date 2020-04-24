class Comic {  //model
  //design design patterns OO
  String title;
  String brand;
  String numberOfpages;
  String typeOfCover;
  String releaseDate;
  String image;

  Comic(
      {this.title,
        this.brand,
        this.numberOfpages,
        this.typeOfCover,
        this.releaseDate,
        this.image});

  Comic.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    brand = json['brand'];
    numberOfpages = json['numberOfpages'];
    typeOfCover = json['typeOfCover'];
    releaseDate = json['releaseDate'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['brand'] = this.brand;
    data['numberOfpages'] = this.numberOfpages;
    data['typeOfCover'] = this.typeOfCover;
    data['releaseDate'] = this.releaseDate;
    data['image'] = this.image;
    return data;
  }
}
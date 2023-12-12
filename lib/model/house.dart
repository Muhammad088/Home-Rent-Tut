class House {
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommended() {
    return [
      House("The First House", "433 Orabi st. Cairo",
          "assets/images/house01.jpeg"),
      House("The Second House", "128 Sadat st. Cairo",
          "assets/images/house02.jpeg"),
    ];
  }

  static List<House> generateBestOffers() {
    return [
      House("The Moon", "433 Orabi st. Cairo", "assets/images/offer01.jpeg"),
      House("The Sun", "128 Sadat st. Cairo", "assets/images/offer02.jpeg"),
    ];
  }
}

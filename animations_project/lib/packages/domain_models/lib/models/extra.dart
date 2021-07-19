class Extra {
  final int id;
  final String imgUrl;
  final String name;

  Extra(
    int id,
    String name,
    String imgUrl,
  )   : this.id = id,
        this.name = name,
        this.imgUrl = imgUrl;
}

List<Extra> extras = [
  Extra(
    1,
    "Pepsi",
    "assets/images/pepsi.png",
  ),
  Extra(
    2,
    "Coke",
    "assets/images/coke.png",
  ),
  Extra(
    3,
    "Juice",
    "assets/images/juice.png",
  ),
  Extra(
    4,
    "Beef",
    "assets/images/beef.png",
  ),
  Extra(
    5,
    "Cookies",
    "assets/images/cookies.png",
  ),
  Extra(
    5,
    "Cheese",
    "assets/images/cheese.png",
  ),
];

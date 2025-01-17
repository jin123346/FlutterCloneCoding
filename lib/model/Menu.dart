class Menu {
  final String imguri;
  final String menuName;
  final int price;

  Menu({required this.imguri, required this.menuName, required this.price});

  @override
  String toString() {
    return 'Menu{imguri: $imguri, menuName: $menuName, price: $price}';
  }
}

List<Menu> menuList = [
  Menu(
      imguri: 'assets/images/eggSandwich.jpg', menuName: '에그샌드위치', price: 5800),
  Menu(
      imguri: 'assets/images/doughnut.jpg',
      menuName: '부드러운 생크림 카스텔라',
      price: 5800),
  Menu(imguri: 'assets/images/doughnut.jpg', menuName: '번트 치즈케이크', price: 5800),
  Menu(
      imguri: 'assets/images/eggSandwich.jpg', menuName: '에그샌드위치', price: 5800),
  Menu(
      imguri: 'assets/images/doughnut.jpg',
      menuName: '부드러운 생크림 카스텔라',
      price: 5800),
  Menu(imguri: 'assets/images/doughnut.jpg', menuName: '번트 치즈케이크', price: 5800),
];

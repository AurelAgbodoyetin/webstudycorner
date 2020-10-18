class StepModel {
  final int id;
  final String text;
  final String imgSource;

  StepModel({this.imgSource, this.id, this.text});

  static List<StepModel> list = [
    StepModel(
      id: 1,
      text: "Browse the menu\nand order directly from\nthe application",
      imgSource: 'assets/1.png'
    ),
    StepModel(
      id: 2,
      text:
          "Your order will be\nimmediately collected and\nsent by our courier",
          imgSource: 'assets/2.png'
    ),
    StepModel(
      id: 3,
      text: "Pick update delivery\nat your door and enjoy\ngroceries",
      imgSource: 'assets/3.png'
    ),
  ];
}

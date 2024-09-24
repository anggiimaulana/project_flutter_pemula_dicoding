
class PageApp {
  String name;
  String imageAsset;

  PageApp({
    required this.name,
    required this.imageAsset,
  });
}

var pageAppList = [
  PageApp(
    name: 'Tempat Wisata',
    imageAsset: 'images/wisata.png',
  ),
  PageApp(
    name: 'Kuliner',
    imageAsset: 'images/kuliner.png',
  ),
];

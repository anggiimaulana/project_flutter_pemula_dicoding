
class PageApp {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String price;
  String imageAsset;
  List<String> imageUrls;

  PageApp({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.price,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var pageAppList = [
  PageApp(
    name: 'Alun-Alun Indramayu',
    location: 'Kecamatan Indramayu',
    description:
        'Alun-Alun Indramayu adalah ruang terbuka hijau yang menjadi pusat aktivitas masyarakat setempat. Alun-alun ini sering digunakan untuk berbagai acara, seperti upacara, festival, dan pasar malam. Monumen Bambu Runcing yang ikonik berdiri di tengah alun-alun, memperingati perjuangan rakyat Indramayu melawan penjajah.',
    openDays: 'Buka Setiap Hari',
    openTime: '06.00 - 21.00',
    price: 'Rp 5000',
    imageAsset: 'images/alun-indramayu.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.stuNNmYA935e1By_Ok1iKwHaEK?w=271&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP.Fx0487r9i8ycorb9pf3YBwHaEL?w=261&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP.GxldSYlzmZbIzb9gxazq0wHaFj?w=199&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'
    ],
  ),
  PageApp(
    name: 'Wisata Pulau Biawak',
    location: 'Kecamatan Indramayu',
    description:
        'Pulau Biawak adalah destinasi wisata alam yang terletak sekitar 40 km dari pantai utara Indramayu. Pulau ini terkenal dengan mercusuar tua dan populasi biawak yang hidup bebas. Pengunjung dapat menikmati snorkeling, berkemah, dan menjelajahi keindahan alam yang masih asri.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 Jam',
    price: 'Rp. 450.000/orang',
    imageAsset: 'images/pulau-biawak.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF4dS4PWgX_4z213wwwxExPaWlRVR7vJXbIw&s',
      'https://th.bing.com/th/id/OIP.oLo3CHUmUegNVWx6dZ08CAHaEe?w=260&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXRNzZlcq-WzAHoJvKE2Ap89IOgYznEMvZgQ&s',
    ],
  ),
];

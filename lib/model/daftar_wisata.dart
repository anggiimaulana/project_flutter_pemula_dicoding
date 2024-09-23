
class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Alun-Alun Indramayu',
    location: 'Kecamatan Indramayu',
    description:
        'Alun-Alun Indramayu adalah ruang terbuka hijau yang menjadi pusat aktivitas masyarakat setempat. Alun-alun ini sering digunakan untuk berbagai acara, seperti upacara, festival, dan pasar malam. Monumen Bambu Runcing yang ikonik berdiri di tengah alun-alun, memperingati perjuangan rakyat Indramayu melawan penjajah.',
    openDays: 'Buka Setiap Hari',
    openTime: '06.00 - 21.00',
    ticketPrice: 'Rp 5000',
    imageAsset: 'images/alun-indramayu.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.stuNNmYA935e1By_Ok1iKwHaEK?w=271&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP.Fx0487r9i8ycorb9pf3YBwHaEL?w=261&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP.GxldSYlzmZbIzb9gxazq0wHaFj?w=199&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'
    ],
  ),
  TourismPlace(
    name: 'Wisata Pulau Biawak',
    location: 'Kecamatan Indramayu',
    description:
        'Pulau Biawak adalah destinasi wisata alam yang terletak sekitar 40 km dari pantai utara Indramayu. Pulau ini terkenal dengan mercusuar tua dan populasi biawak yang hidup bebas. Pengunjung dapat menikmati snorkeling, berkemah, dan menjelajahi keindahan alam yang masih asri.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Rp. 450.000/orang',
    imageAsset: 'images/pulau-biawak.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF4dS4PWgX_4z213wwwxExPaWlRVR7vJXbIw&s',
      'https://th.bing.com/th/id/OIP.oLo3CHUmUegNVWx6dZ08CAHaEe?w=260&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXRNzZlcq-WzAHoJvKE2Ap89IOgYznEMvZgQ&s',
    ],
  ),
  TourismPlace(
    name: 'Hutan Mangrove Indramayu',
    location: 'Karangsong',
    description:
        'Hutan Mangrove Karangsong adalah kawasan konservasi yang berfungsi sebagai benteng alami dari abrasi pantai. Selain itu, hutan mangrove ini juga menjadi destinasi ekowisata yang edukatif, menawarkan pemandangan indah dan habitat bagi berbagai jenis burung pantai',
    openDays: 'Buka Setiap Hari',
    openTime: '08.00 - 17.00',
    ticketPrice: 'Rp. 10.000/orang',
    imageAsset: 'images/hutan-mangrove.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.gRyqiAak8fBoKBpJGp1OWQAAAA?w=264&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP._tAQzvDYYXAgUNPk6SsDTgHaEK?w=296&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP.vZzCmI5jPPikN7WpXgvmcQHaE7?w=194&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
    ],
  ),
  TourismPlace(
    name: 'Agung Fantasi Waterpark',
    location: 'Jl. Pantura, Widasari',
    description:
        'Agung Fantasi Waterpark adalah taman rekreasi air yang populer di Indramayu. Terletak di Widasari, waterpark ini menawarkan berbagai wahana air seru seperti seluncuran, kolam renang, dan area bermain anak, menjadikannya tempat yang ideal untuk liburan keluarga.',
    openDays: 'Buka Setiap Hari',
    openTime: '08:00 - 17:00',
    ticketPrice: 'Rp 25.000/orang',
    imageAsset: 'images/agung-fantasi.jpeg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.KxsRSbcJH-GQagQSuUhMDwHaEc?w=275&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP.v0Y1uU9KdLPucxcoIV2XOwHaEK?w=272&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP.PeQvASRxHeqvij4iO_Rx7wHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7',
    ],
  ),
  TourismPlace(
    name: 'Tiga Bintang Firdaus',
    location: 'Kecamatan Terisi',
    description:
        ' Tiga Bintang Firdaus adalah taman wisata air yang terletak di Desa Jatimulya, Kecamatan Terisi. Tempat ini memiliki berbagai kolam renang, wahana permainan air, dan spot selfie yang instagramable, menjadikannya destinasi favorit untuk rekreasi keluarga.',
    openDays: 'Buka Setiap Hari',
    openTime: '08.30 - 16.30',
    ticketPrice: 'Rp. 25.000/orang',
    imageAsset: 'images/firdaus.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQruPAnkLow1zbt-kyGr58aH11NDsFIFVsySw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI_PjiaxQnVGQduyeZzJZJH3BGpq1siO_jYw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhhsFBoCa8zmx8EgDNahYss0oiqu1B268C0Q&s',
    ],
  ),
  TourismPlace(
    name: 'Pantai Cemara Indah',
    location: 'Kecamatan Indramayu',
    description:
        'Pantai Cemara Indah menawarkan pemandangan pantai yang asri dengan deretan pohon cemara yang rindang. Pantai ini cocok untuk bersantai, piknik, dan menikmati keindahan matahari terbenam bersama keluarga atau teman-teman.',
    openDays: 'Buka Setiap Hari',
    openTime: '06.00 - 18.00',
    ticketPrice: 'Rp 5.000/orang',
    imageAsset: 'images/cemara.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/proxy/J_0eaMfU3HgQfr7xdtXIECAbUzWxq9e0ZDhZLpgDsKchVFioQJxdr9EN4SWGM9LtUVMiSg6O8i1Vb7emKrFcecKNpV45V4iXnPuu9ehXVOowhWuFp3lTJ5Lrd4vc',
      'https://ik.imagekit.io/tvlk/blog/2024/05/shutterstock_1918556966.jpg?tr=dpr-2,w-675',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEKPyS9F7_HQvDZvgYe0ocjTNll61r0Bra8Q&s',
    ],
  ),
  TourismPlace(
    name: 'Islamic Center Indramayu',
    location: 'Kecamatan Indramayu',
    description:
        'Islamic Center Indramayu adalah salah satu masjid terbesar di Indramayu. Masjid ini memiliki arsitektur yang megah dan sering menjadi pusat kegiatan keagamaan serta sosial masyarakat setempat.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Gratis',
    imageAsset: 'images/islamic-center.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf42wcQ8KV6C4NWjIJNmd5k_zu_yMFYrhXEQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt8aS3ODaiVkjksA59hHjndq55QZOkKMvaRw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8z6TF2NU33ZlIm8CryTM4KvBUoDIYPwJqBg&s',
    ],
  ),
  TourismPlace(
    name: 'Pantai Karangsong',
    location: 'Karangsong',
    description:
        'Pantai Karangsong terkenal dengan hutan mangrovenya yang lebat dan menjadi tempat konservasi ekosistem pesisir. Pengunjung dapat menikmati pemandangan laut, berperahu, dan belajar tentang pentingnya pelestarian lingkungan di kawasan ini.',
    openDays: 'Buka Setiap Hari',
    openTime: '06.00 - 18.00',
    ticketPrice: 'Rp 10.000/orang',
    imageAsset: 'images/karangsong.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSc9ZW5LPqyMjFhkzwHPlZgWKyxzmH8tXZmg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqFrwmi6ZpelUEdg41CznnVd9CTpi6rZd-QA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8E7SgTkP9ehO5Cuh4FySO33ejk-ID6nib8w&s',
    ],
  ),
];

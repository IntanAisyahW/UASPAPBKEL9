import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Iklan Pertama dan Kedua
              Container(
                child: Row(
                  children: <Widget>[
                    // Iklan Pertama
                    Container(
                      width: 790,
                      height: 290,
                      color: Colors.amber,
                      margin: EdgeInsets.only(right: 20, left: 10),
                      child: Stack(
                        children: [
                          // Efek gradien pada gambar
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                colors: [Colors.black, Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.srcATop,
                            child: Image.asset(
                              'asset/pecel.jpg', // Path gambar
                              fit: BoxFit.fill,
                              width: 790,
                            ),
                          ),
                          // Teks promosi
                          Positioned(
                            bottom: 50,
                            left: 20,
                            child: Text(
                              'Promo 20%',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 40),
                            ),
                          ),
                          // Teks deskripsi promosi
                          Positioned(
                            bottom: 15,
                            left: 20,
                            child: Text(
                              'Untuk 10 Pembeli Pertama',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Iklan Kedua
                    Container(
                      width: 530,
                      height: 290,
                      color: Colors.amber,
                      child: Stack(
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                colors: [Colors.black, Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.srcATop,
                            child: Image.asset(
                              'asset/pecel.jpg', // Path gambar
                              fit: BoxFit.fill,
                              width: 530,
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 20,
                            child: Text(
                              'Promo 20%',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 40),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 20,
                            child: Text(
                              'Untuk 10 Pembeli Pertama',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // List View horizontal dengan ikon
              Container(
                height: 150,
                padding: EdgeInsets.all(30),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Container untuk kategori 'Makanan Terlaris'
                    Container(
                      width: 1350,
                      color: Colors.green,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Makanan Terlaris',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Icon(
                              FontAwesomeIcons.bowlRice,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Container untuk kategori 'Makanan Terlaris'
                    Container(
                      width: 1350,
                      color: Colors.red,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Makanan Terlaris',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Icon(
                              FontAwesomeIcons.utensils,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Container untuk kategori 'Minuman'
                    Container(
                      width: 1350,
                      color: Colors.blue,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Minuman',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Icon(
                              FontAwesomeIcons.mugHot,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Teks "Menu Pilihan"
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Menu Pilihan',
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ),
                  ),
                ],
              ),

              // Container untuk menu pertama
              Container(
                margin: EdgeInsets.only(right: 30, left: 30, bottom: 20),
                height: 150,
                child: Row(
                  children: [
                    // Gambar menu
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'asset/pecel2.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                      margin: EdgeInsets.only(right: 60),
                    ),
                    // Deskripsi menu
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Rating dan ikon bintang
                            Container(
                              width: 1100,
                              height: 40,
                              color: Colors.amber,
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                  Text('4.5')
                                ],
                              ),
                            ),
                            // Nama menu
                            Text(
                              'Pecel Sambel Tumpang',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            // Deskripsi menu
                            Text(
                                'Pecel, Sambel Tumpang, Telur Bali, Sate Usus'),
                            SizedBox(height: 10),
                            // Harga menu
                            Text('Harga: Rp 20.000'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Container untuk menu kedua (sama seperti menu pertama)
              Container(
                margin: EdgeInsets.only(right: 30, left: 30, bottom: 20),
                height: 150,
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'asset/pecel2.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                      margin: EdgeInsets.only(right: 60),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 1100,
                              height: 40,
                              color: Colors.amber,
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                  Text('4.5')
                                ],
                              ),
                            ),
                            Text(
                              'Pecel Sambel Tumpang',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                                'Pecel, Sambel Tumpang, Telur Bali, Sate Usus'),
                            SizedBox(height: 10),
                            Text('Harga: Rp 20.000'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Container untuk menu ketiga (sama seperti menu pertama dan kedua)
              Container(
                margin: EdgeInsets.only(right: 30, left: 30, bottom: 20),
                height: 150,
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'asset/pecel2.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                      margin: EdgeInsets.only(right: 60),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 1100,
                              height: 40,
                              color: Colors.amber,
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                  Text('4.5')
                                ],
                              ),
                            ),
                            Text(
                              'Pecel Sambel Tumpang',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                                'Pecel, Sambel Tumpang, Telur Bali, Sate Usus'),
                            SizedBox(height: 10),
                            Text('Harga: Rp 20.000'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Navigasi bawah aplikasi (BottomAppBar)
              BottomAppBar(
                shape: CircularNotchedRectangle(),
                notchMargin: 8.0,
                child: Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Tombol 'Home'
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            print('Item Home ditekan!');
                          },
                          child: buildNavItem(Icons.home, 'Home'),
                        ),
                      ),
                      // Tombol 'Menu' dengan efek poligon
                      InkWell(
                        onTap: () {
                          print('Item Menu ditekan!');
                        },
                        child: FlutterClipPolygon(
                          sides: 6,
                          borderRadius: 5.0,
                          rotate: 60.0,
                          boxShadows: [
                            PolygonBoxShadow(
                                color: Colors.black, elevation: 5.0),
                          ],
                          child: Container(
                            height: 60,
                            width: 60,
                            color: Colors.yellow,
                            child: Center(
                              child: Icon(Icons.menu, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      // Tombol 'Keranjang'
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            print('Item Keranjang ditekan!');
                          },
                          child: buildNavItem(Icons.shopping_cart, 'Keranjang'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Fungsi untuk membangun item navigasi
Widget buildNavItem(IconData icon, String text) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon),
      SizedBox(height: 5), // Spasi antara ikon dan teks
      Text(text, style: TextStyle(fontSize: 12)),
    ],
  );
}

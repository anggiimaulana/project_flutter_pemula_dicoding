import 'package:flutter/material.dart';
import 'package:proyek_akhir_flutter_pemula_dicoding/view/detail_page.dart';
import 'package:proyek_akhir_flutter_pemula_dicoding/view/wisata.dart';
import 'package:proyek_akhir_flutter_pemula_dicoding/view/kuliner.dart';
import 'package:proyek_akhir_flutter_pemula_dicoding/model/page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double inputWidth = constraints.maxWidth > 500
                    ? constraints.maxWidth * 0.25
                    : constraints.maxWidth;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Selamat Datang!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Silakan Masukkan Nama Lengkap Anda',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            width: inputWidth,
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: 'Nama Lengkap',
                                hintText: 'Masukkan nama lengkap',
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: Colors.blueAccent),
                                ),
                                prefixIcon: const Icon(Icons.person,
                                    color: Colors.blueAccent),
                                errorText: _errorMessage,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Nama lengkap harus diisi!';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainScreen(
                                          name: _nameController.text),
                                    ),
                                  );
                                } else {
                                  setState(() {
                                    _errorMessage = 'Nama tidak boleh kosong';
                                  });
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                backgroundColor: Colors.blueAccent,
                              ),
                              child: const Text(
                                'Masuk',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final String name;

  const MainScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Hai, $name!',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Silakan pilih',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Expanded(
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      if (constraints.maxWidth <= 600) {
                        return const PageAppGrid(
                            gridCount: 2, isSmallGrid: true);
                      } else {
                        return const PageAppGrid(
                            gridCount: 4, isSmallGrid: false);
                      }
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class PageAppGrid extends StatelessWidget {
  final int gridCount;
  final bool isSmallGrid;

  const PageAppGrid({
    Key? key,
    required this.gridCount,
    required this.isSmallGrid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridCount,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: constraints.maxWidth > 600 ? 1 : 0.8,
            ),
            itemCount: pageAppList.length,
            itemBuilder: (context, index) {
              final place = pageAppList[index];

              return InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const WisataScreen();
                    }));
                  } else if (index == 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const KulinerScreen();
                    }));
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreenPage(place: place);
                    }));
                  }
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Transparent background for small screens
                      Expanded(
                        child: Container(
                          color: constraints.maxWidth <= 600
                              ? Colors.transparent
                              : Colors
                                  .white, // Transparent background below 600px
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(15)),
                            child: Image.asset(
                              place.imageAsset,
                              fit: constraints.maxWidth <= 600
                                  ? BoxFit.contain
                                  : BoxFit
                                      .cover, // Ensure full image display below 600px
                              width: double.infinity,
                              height: double
                                  .infinity, // Ensure full height and width
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

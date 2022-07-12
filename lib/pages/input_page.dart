import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String textoGeneral = "";
  final TextEditingController _myController =
      TextEditingController(text: "Julio");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Input Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15.0,
                ),
                maxLines: 1,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: "Direccion",
                  label: Text("Direccion label"),
                  icon: Icon(Icons.abc),
                  prefixIcon: Icon(Icons.abc),
                  suffixIcon: Icon(Icons.abc),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto",
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 3,
                    ),
                  ),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  )
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      margin: EdgeInsets.all(2.5),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    hintText: "buscar producto...",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black38,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: isInvisible,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  suffixIcon: IconButton(
                    icon: isInvisible
                        ? Icon(Icons.remove_red_eye)
                        : Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _myController,
                decoration: InputDecoration(
                  counter: Text(""),
                ),
                style: GoogleFonts.poppins(),
                onTap: () {
                  print("On tap");
                },
                onChanged: (String text) {
                  // print(text);
                  textoGeneral = text;
                },
                // maxLength: 10,
                keyboardType: TextInputType.text,
                cursorColor: Colors.pinkAccent,
                onSubmitted: (String value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_myController.text);
                  },
                  child: Text("Obtener texto")),
              ElevatedButton(
                  onPressed: () {
                    _myController.clear();
                  },
                  child: Text("Reset")),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  TextEditingController dateController = TextEditingController();
  int selectedValue = 0;
  List<String> personajesDeAnime = [
    "Goku",
    "Gohan",
    "Vegeta",
    "Trunks",
    "Goten",
  ];

  selectedDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    dateController.text = dateSelected.toString().substring(0, 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selection Page"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                hintText: "Fecha de nacimiento",
              ),
              onTap: () {
                print("Aperturando el date picker...");
                FocusScope.of(context).requestFocus(FocusNode());
                selectedDate();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownButton(
              isExpanded: true,
              underline: Container(),
              value: selectedValue,
              items: [
                DropdownMenuItem(
                  child: Text(""),
                  value: 0,
                ),
                DropdownMenuItem(
                  child: Text("Elemento 1"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Elemento 2"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("Elemento 3"),
                  value: 3,
                ),
              ],
              onChanged: (int? value) {
                selectedValue = value!;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

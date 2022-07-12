import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Card Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Card 1
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      offset: Offset(4, 4),
                      blurRadius: 12.0),
                  BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      offset: Offset(-4, -4),
                      blurRadius: 12.0),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black.withOpacity(0.66)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple.withOpacity(0.6),
                            offset: const Offset(4, 4),
                            blurRadius: 10,
                          )
                        ]),
                    child: Text(
                      "Follow me",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Card 2
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      offset: Offset(4, 4),
                      blurRadius: 12,
                    )
                  ]),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/imagex1.png",
                    height: 120,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fiorella Guadalupe de las nieves azules",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "In nulla occaecat eu laborum. Mollit aliqua amet ullamco aliqua labore dolore dolore anim voluptate Lorem elit cillum incididunt. Culpa adipisicing laboris ut reprehenderit ad. Non ea culpa tempor adipisicing aliqua irure ex ex minim anim irure cupidatat elit. Nisi esse occaecat sint nisi consectetur duis ea cupidatat in dolor ea sunt quis. Dolor officia aute mollit dolore pariatur ut sint ipsum ad laboris fugiat qui. Reprehenderit incididunt mollit in veniam velit nisi.",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Card 3
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "Lorem laboris nisi nostrud excepteur duis do sunt voluptate cillum et quis eiusmod eiusmod elit. Ullamco id consequat mollit sunt dolor qui consectetur sunt labore. Mollit aute magna fugiat dolor proident anim tempor. Irure cillum ullamco consectetur sunt aliquip consequat. Laborum occaecat ipsum dolor labore consequat sit exercitation eu deserunt. Proident ex veniam laborum elit exercitation officia veniam voluptate quis sint culpa ad officia.",
                      maxLines: 6,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Image.network(
                    "https://images.pexels.com/photos/3560154/pexels-photo-3560154.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    height: 130,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
            ),
            //Card 4
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: Offset(2, 2),
                    blurRadius: 12,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Ceo at Apple Inc",
                          style: TextStyle(
                              letterSpacing: 0.2,
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ]),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(225, 233, 253, 1),
                      //color: Colors.indigo[100],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.blueAccent,
                          size: 18,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Card 5
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: Offset(2, 2),
                    blurRadius: 12,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromRGBO(197, 210, 251, 1),
                    child: Icon(
                      Icons.biotech_outlined,
                      size: 30,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The quick, brown fox jumps over",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Card 6
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: Offset(2, 2),
                    blurRadius: 12,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lorem dolor sit amet, consetetur",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(),
                      Row(children: [
                        Text(
                          "On",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.toggle_on,
                          color: Colors.blueAccent,
                        ),
                      ]),
                    ],
                  ),
                  Divider(
                    thickness: 0.6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lorem dolor sit amet, consetetur",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(),
                      Row(children: [
                        Text(
                          "Off",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.toggle_off_outlined,
                          color: Colors.blueAccent,
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

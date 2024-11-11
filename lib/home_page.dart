import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graddingapp/project/routes/route_const.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/app_logo.png'),
          centerTitle: true,
          leading: Image.asset(
            'assets/images/leading.png',
          ),
          actions: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
            Image.asset('assets/images/notification_icon.png')
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/hotel.png',
                    fit: BoxFit.fitWidth,
                    width: 400,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "5-10 Minutes Walk Away",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF066AC9),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[50],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            )),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.supervised_user_circle_outlined),
                              Text(
                                "Total Rooms",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF066AC9),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text('5.0')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "The Aster Villa Hotel",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF101010)),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$200",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.blue),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "/month",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.room,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Alice Spring NT 0870 Australia",
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF101010),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Aston Hotel, Alice Spring NT 0870, Australia is a modern hotel. elegant 5 Star hotel overlooking the sea. perfect for a romantic, charming ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Amenities',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          // Icon(Icons.fire_hydrant),
                          SvgPicture.asset(
                            'assets/vectors/furnishing.svg',
                            width: 32, // Adjust the icon size as needed
                            height: 32,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            "Furnishings",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          // Icon(Icons.local_parking_rounded),
                          SvgPicture.asset(
                            'assets/vectors/parking.svg',
                            width: 32, // Adjust the icon size as needed
                            height: 32,
                          ),
                          const SizedBox(

                            width: 16,
                          ),
                          const Text(
                            "Parking",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          // Icon(Icons.garage),
                          SvgPicture.asset(
                            'assets/vectors/garage.svg',
                            width: 32, // Adjust the icon size as needed
                            height: 32,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            "Garage",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          // Icon(Icons.gradient_rounded),
                          SvgPicture.asset(
                            'assets/vectors/garden.svg',
                            width: 32, // Adjust the icon size as needed
                            height: 32,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text("Garden/terrace",
                              style: TextStyle(fontSize: 14, color: Colors.black54))
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 13),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          // Icon(Icons.disabled_by_default_outlined),
                          SvgPicture.asset(
                            'assets/vectors/disabled.svg',
                            width: 32, // Adjust the icon size as needed
                            height: 32,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            "Disable access",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          // Icon(Icons.balcony_outlined),
                          SvgPicture.asset(
                            'assets/vectors/balcony.svg',
                            width: 32, // Adjust the icon size as needed
                            height: 32,
                          ),
                          const SizedBox(

                            width: 16,
                          ),
                          const Text(
                            "Balcony/patio",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/vectors/leaving_room.svg',
                            width: 32, // Adjust the icon size as needed
                            height: 32,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            "Living Room",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          // Icon(Icons.video_camera_back),
                          SvgPicture.asset(
                            'assets/vectors/broadband.svg',
                            width: 32, // Adjust the icon size as needed
                            height: 32,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            "Broadband",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          context.pushNamed(GoPaths.chatPage, extra: {"user": "Hit-man Sharma"});
                        },
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                        child: Row(
                          children: [
                            Image.asset('assets/images/chat.png'),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "Chat With Experts",
                              style: TextStyle(
                                  fontSize: 12.34,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green),
                            ),
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {
                          context.push(GoPaths.formPage);
                          // extra: {"username": "hello"});
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(152, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Book Now",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

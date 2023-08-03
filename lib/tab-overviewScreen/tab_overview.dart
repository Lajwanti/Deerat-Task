import 'package:flutter/material.dart';

class TabOverview extends StatelessWidget {
  const TabOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Agency",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),

            //agency card
            const Card(
              margin: EdgeInsets.only(top: 15),
              color: Colors.white70,
              //shadowColor: Colors.blueGrey,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.album, color: Colors.cyan, size: 45),
                    title: Text(
                      "Eskon Properties",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "6 Projects | 120 Properties",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 13),

            //About the project
            const Text(
              "About The Project",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017.',
              softWrap: true,
              style: TextStyle(fontSize: 17),
            ),
            const Divider(),

            //Starting form
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //starting form and BD text widget
                      const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Starting Form",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "BD 175,000",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ]),
                      //Download icon and view properties button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[200],
                            ),
                            child: const Icon(
                              Icons.download_outlined,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "View Properties",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //image 2
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/deerat2.png"),
                ),
              ),
            ),
            const Divider(),

            //overview
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Overview",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                ListTile(
                  title: Text("Broke Ground"),
                  trailing: Text(
                    "2022",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text("Date available"),
                  trailing: Text(
                    "Ready",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text("Compound"),
                  trailing: Text(
                    "Bella",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text("Price/ Square m"),
                  trailing: Text(
                    "Semi 635.9",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text("Added"),
                  trailing: Text(
                    "1 May 2023",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text("Show more..."),
                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            //Amenities
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Amenities",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //Kitchen
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        width: MediaQuery.sizeOf(context).width * .25,
                        height: MediaQuery.sizeOf(context).height * .1,
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.kitchen_outlined),
                              SizedBox(height: 4), // spacing between two
                              Text('Kitchen'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      //Security
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        width: MediaQuery.sizeOf(context).width * .25,
                        height: MediaQuery.sizeOf(context).height * .1,
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.security_outlined),
                              SizedBox(height: 4), // spacing between two
                              Text('Security'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      //Balcony
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        width: MediaQuery.sizeOf(context).width * .25,
                        height: MediaQuery.sizeOf(context).height * .1,
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.balcony_outlined),
                              SizedBox(height: 4), // spacing between two
                              Text('Balcony'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      //central AC
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        width: MediaQuery.sizeOf(context).width * .25,
                        height: MediaQuery.sizeOf(context).height * .1,
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.ac_unit_outlined),
                              SizedBox(height: 4), // spacing between two
                              Text('Central AC'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),

            //Location & facilities
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Location & Facilities",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //Location map image and button
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/locationpic.jpg"),
                    ),
                  ),
                  //Open map button
                  child: ListTile(
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[100],
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Open Map",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),

            //Near by you will find
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "In your near by you will find:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //Kitchen
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        width: MediaQuery.sizeOf(context).width * .4,
                        height: MediaQuery.sizeOf(context).height * .15,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Container(

                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.school,color: Colors.white70,)),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("School")
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4), // spacing between two
                             const Text('Nearest is 8km away'),
                             const SizedBox(height: 4,),
                             const Padding(
                               padding: EdgeInsets.symmetric(horizontal: 10),
                               child: Row(
                                  children: [
                                    Text("Discover all",style: TextStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 17,)
                                  ],
                                ),
                             ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      //Hospital
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        width: MediaQuery.sizeOf(context).width * .4,
                        height: MediaQuery.sizeOf(context).height * .15,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Container(

                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.local_hospital_outlined,color: Colors.white70,)),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("Hospitals")
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4), // spacing between two
                              const Text('Nearest is 8km away'),
                              const SizedBox(height: 4,),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("Discover all",style: TextStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 17,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 10,),
                      //Restaurants
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        width: MediaQuery.sizeOf(context).width * .4,
                        height: MediaQuery.sizeOf(context).height * .15,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Container(

                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.restaurant,color: Colors.white70,)),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("Restaurants")
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4), // spacing between two
                              const Text('Nearest is 8km away'),
                              const SizedBox(height: 4,),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("Discover all",style: TextStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 17,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
            const Divider(),

            //Get a real look
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Get a real look",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/reallookimg.jpg"),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black.withOpacity(.4),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Start with 360 tour",
                          style: TextStyle(color: Colors.white),
                        ),
                      ) ,
                    ),
                  ),
                ),

              ],
            ),
            Divider(),
            const SizedBox(height: 20,)



          ],
        ),
      ),
    );
  }
}

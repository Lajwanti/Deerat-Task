import 'package:deerataloyoun/tab-overviewScreen/tab_overview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with
    SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(

          children: [
          Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
            color: Colors.white70,
          ),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  //padding: const EdgeInsets.fromLTRB(0, 0, 0, 73),
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * .4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/deerat1.png"),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white70,
                              ),
                              child: const Icon(Icons.arrow_back_ios_new_outlined,size: 35,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white70,
                                  ),
                                  child: const Icon(Icons.photo_album_outlined,size: 35,),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white70,
                                  ),
                                  child: const Icon(Icons.forward_outlined,size: 35,),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white70,
                                  ),
                                  child: const Icon(Icons.bookmark_border_outlined,size: 35,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )


                    ],
                  ),

                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              // color: Colors.white70,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/deetapeofile.jpg"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Deerat Aloyoun",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                const SizedBox(height: 10,),
                                const Text("Manama, Bahrain",style: TextStyle(fontSize: 15,color: Colors.grey)),
                                const SizedBox(height: 10),
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.greenAccent,
                                    ),
                                    child:const Row(
                                      children:[
                                        Icon(Icons.downloading_outlined,color: Colors.grey),
                                        SizedBox(width: 5,),
                                        Text("Baity Verified  ",style: TextStyle(fontSize: 18)),
                                      ],
                                    )),


                              ],
                            ),

                          ),

                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: TabBar(
                            labelColor: Colors.deepOrangeAccent,
                            indicatorColor: Colors.deepOrangeAccent,
                            controller: _controller,
                            tabs: const [
                              Tab(text: "OverView",),
                              Tab(text: "Properties",),
                              Tab(text: "Master Plan",),
                              Tab(text: "Amenities",),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: TabBarView(
                            controller: _controller,
                            children: const [
                              TabOverview(),
                              Text("dfmkdfm"),
                              Text("dfjkdl"),
                              Text("skjdl")



                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ],

            ),
          ),

        ),
            
          ],
        ),
      )
    );
  }
}

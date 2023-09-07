


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 24,
                  ),

                 Expanded(child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0),
                   child: SizedBox(
                     height: 42,
                     child: TextFormField(
                         decoration:  InputDecoration(
                           contentPadding: const EdgeInsets.all(12),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20.0),
                           ),
                             hintText:  "What's on Your mind?",
                             hintStyle: const TextStyle(fontSize: 14, color: Colors.black),



                         )
                     ),
                   ),
                 ),),
                  const SizedBox(width: 10,),
                  const Icon(Icons.image, color: Colors.green, size: 30,),
                ],
              ),
            ),

             Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 10,
              color: const Color(0xffCACCD2),
            ),



            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStories(),
                    _buildStories(),
                    _buildStories(),
                    _buildStories(),
                  ],
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 10,
              color: const Color(0xffCACCD2),
            ),

            _buildNewsFeeds(),
            _buildNewsFeeds(),

          ],
        ),
      )
    );
  }

  Column _buildNewsFeeds() {
    return Column(
            children: [
              SizedBox(
                height: 48,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      child: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 20,
                      ),
                    ),

                     const Expanded(
                      child: SizedBox(
                        height: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Doctor who", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                            Row(
                              children: [
                                Text("20 h", style: TextStyle(fontSize: 12),),
                                SizedBox(
                                  width: 4,
                                ),
                                Icon(
                                  CupertinoIcons.time,
                                  size: 12,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Icon(Icons.more_horiz_outlined),
                    const SizedBox(width: 10,),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        child: const Icon(Icons.close)),
                  ],
                ),

              ),

              Container(
                height: 260,
                color: Colors.grey,
              ),

              const SizedBox(height: 10,),


              Container(

                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(

                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 54,
                            ),
                            Positioned(
                                left: 28,
                                child: CachedNetworkImage(imageUrl: "https://cdn3.iconfinder.com/data/icons/object-emoji/50/Heart-128.png", height: 20, width: 20,)),

                            Positioned(
                                left: 14,
                                child: CachedNetworkImage(imageUrl: "https://cdn4.iconfinder.com/data/icons/emoji-66/64/21-haha-512.png", height: 20, width: 20,)),

                            CachedNetworkImage(imageUrl: "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/199_Like_logo_logos-512.png", height: 20, width: 20, color: blue,),

                          ],
                        ),
                        const Text("4.1k", style: TextStyle(color: Colors.grey),)
                      ],
                    ),

                    const Row(
                      children: [
                        Text("290 comments", style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 10,),
                        Text("90 shares ", style: TextStyle(color: Colors.grey),),
                      ],
                    )

                  ],
                ),
              ),

              const Divider(
                color: Colors.grey,
              ),


              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up_alt_rounded, color: Colors.grey,),
                      SizedBox(width: 6,),
                      Text("Like"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment, color: Colors.grey,),
                      SizedBox(width: 6,),
                      Text("Comment"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.share, color: Colors.grey,),
                      SizedBox(width: 6,),
                      Text("Share",),
                    ],
                  ),

                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 10,
                color: const Color(0xffCACCD2),
              ),
            ],
          );
  }

  Widget _buildStories() {
    return Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        color: Colors.green[300],
                      ),

                      height: 220,
                      width: 120,
                    ),
                    const Positioned(
                      left: 10,
                      top: 10,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: grey,
                        ),
                      ),
                    ),

                    const Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Nikel Maharajan",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),),
                        )),

                  ],
                );
  }
}




import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:practice/colors.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text("Watch", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),)
                    ),
                    FloatingActionButton.small(
                      onPressed: (){},
                      elevation: 0,
                      backgroundColor: iconColor,
                      child: const Icon(Icons.person, color: blackColor,),
                    ),
                    FloatingActionButton.small(
                      onPressed: (){},
                      elevation: 0,
                      backgroundColor: iconColor,
                      child: const Icon(Icons.search, color: blackColor,),
                    )
                  ],
                ),
              ),

              _buildStoriesFeed(),
              _buildStoriesFeed(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoriesFeed() {
    return Column(
              children: [

                Stack(
                  children: [
                    Container(
                      height: 600,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.grey[350],
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Doctor who", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),),
                                Row(
                                  children: [
                                    Icon(Icons.timelapse, color: Colors.grey[350], size: 20,),
                                    const SizedBox(width: 4,),
                                    Text("public", style: TextStyle(color: Colors.grey[350]),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),



                        Row(
                          children: [
                            const Icon(Icons.volume_off, color: Colors.white,size: 28,),
                            const SizedBox(width: 10,),
                            const Icon(Icons.more_horiz_outlined, color: Colors.white, size: 28,),
                            const SizedBox(width: 10,),
                            const Icon(Icons.close, color: Colors.white, size: 28,),
                            const SizedBox(width: 10,),

                          ],
                        )

                      ],
                    ),
                    const Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                          child: Text("Video of the Day", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),),
                        )),
                  ],
                ),


                Container(

                  margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
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

                      Row(
                        children: [
                          const Text("290 comments", style: TextStyle(color: Colors.grey),),
                          const SizedBox(width: 10,),
                          const Text("90 shares ", style: TextStyle(color: Colors.grey),),
                          const SizedBox(width: 10,),
                          const Text("17K views ", style: TextStyle(color: Colors.grey),),
                        ],
                      )


                    ],
                  ),
                ),


                const Divider(color: Colors.grey,),





                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.thumb_up_alt_rounded, color: Colors.grey,),
                        const SizedBox(width: 6,),
                        const Text("Like"),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.comment, color: Colors.grey,),
                        const SizedBox(width: 6,),
                        const Text("Comment"),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.share, color: Colors.grey,),
                        const SizedBox(width: 6,),
                        const Text("Share",),
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
}


import 'package:flutter/material.dart';
import 'package:practice/colors.dart';



class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);


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
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text("Notifications", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),)
                    ),

                    FloatingActionButton.small(
                      onPressed: (){},
                      elevation: 0,
                      backgroundColor: iconColor,
                      child: const Icon(Icons.search, color: Colors.black,),
                    )
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 12, right: 10, left: 10),
                  child: const Text("New", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),

              _buildNotifications(color: lightBlue),




              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 12, right: 10, left: 10),

                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("People you may know", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Icon(Icons.more_horiz_outlined),

                    ],
                  ),
                ),
              ),



              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 10,),
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 28,
                  ),
                  const SizedBox(width: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      const Text("Nikel Maharjan", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                      Container(
                        margin: const EdgeInsets.only(top: 3, bottom: 6),
                          child: const Text("Raj Maharjan and 11 mutual friends", style: TextStyle(color: Colors.grey, fontSize: 12),)),

                      Row(
                        children: [
                          Container(
                            width: 150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffE7F3FF)
                              ),
                                onPressed: (){}, child: const Text("Add friend", style: TextStyle(color: blue),)),
                          ),
                          const SizedBox(width: 8,),
                          Container(
                            width: 150,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffE5E6EC)
                                ),
                                onPressed: (){}, child: const Text("Remove", style: TextStyle(color: Colors.black),)),
                          )
                        ],
                      )



                    ],
                  )
                ],
              ),

              const SizedBox(height: 14,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 10,),

                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 28,
                  ),
                  const SizedBox(width: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      const Text("निकल महर्जन ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                      Container(
                          margin: const EdgeInsets.only(top: 3, bottom: 6),
                          child: const Text("Nikel Maharjan and 11 mutual friends", style: TextStyle(color: Colors.grey, fontSize: 12),)),

                      Row(
                        children: [
                          Container(
                            width: 150,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffE7F3FF)
                                ),
                                onPressed: (){}, child: const Text("Add friend", style: TextStyle(color: blue),)),
                          ),
                          const SizedBox(width: 8,),
                          Container(
                            width: 150,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffE5E6EC)
                                ),
                                onPressed: (){}, child: const Text("Remove", style: TextStyle(color: Colors.black),)),
                          )
                        ],
                      ),





                    ],
                  )
                ],
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                height: 40,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xffE5E6EA),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: const Align(
                    alignment: Alignment.center,
                    child: Text("see all", style: TextStyle(fontWeight: FontWeight.bold),)),
              ),

              Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 12, right: 10, left: 10),
                  child: const Text("Earlier", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),

              _buildNotifications(color: lightBlue),

              const SizedBox(height: 10,),

              _buildNotifications(),

              const SizedBox(height: 10,),

              _buildNotifications()






            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotifications({Color? color}) {
    return Container(
      color: color,
                height: 80,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 28,
                      ),

                      const SizedBox(width: 10,),
                      Expanded(
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(text: 'Doctor who ', style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'added 4 new photos: 60th anniversary trailer\n'),
                                TextSpan(text: '10 hours ago', style: TextStyle(color: Colors.grey, fontSize: 14)),
                              ],
                            ),
                            maxLines: 3,
                          )
                      ),

                      const Icon(Icons.more_horiz_outlined),
                    ],
                  ),
                ),
              );
  }
}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled4practicingreduxxfull/urls/url.dart';
import '../../api/apicall.dart';
import '../../redux/actions.dart';
import '../../redux/state.dart';
import 'get_model.dart';
class GetScreen extends StatefulWidget {
  const GetScreen({Key? key}) : super(key: key);

  @override
  State<GetScreen> createState() => _GetScreenState();
}

class _GetScreenState extends State<GetScreen> {

  @override
  void initState() {
    super.initState();
    getApiCall();

  }
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, snap) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Column(
              children: [ SizedBox(height: 50,),
            Row(
              children: [ SizedBox(width: 25,),
                Text('Activity', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
              ],
            ),
             SizedBox(height: 15,),
             Row(children: [ SizedBox(width: 20,),
               Text(' Games', style: TextStyle(color: Colors.white, fontSize: 25),)],),
             Expanded(
               child: ListView.builder(
                shrinkWrap: true,
                itemCount: snap.getinfo!.results?.length,
                //snap.getinfo!.results.length,
                itemBuilder: (context, index) {

                 return Column(

                    children: [
                      // SizedBox(height: 0,),
                      // Row(
                      //   children: [ SizedBox(width: 30,),
                      //     Text('Activity',
                      //       style: TextStyle(color: Colors.white, fontSize: 30),),
                      //   ],
                      // ),
                      // SizedBox(height: 40,),
                      // Row(
                      //   children: [ SizedBox(width: 30,),
                      //     Text('Games',
                      //       style: TextStyle(color: Colors.white, fontSize: 17),)
                      //   ],
                      // ),
                     // SizedBox(height: 0,),

                      Padding(
                        padding: const EdgeInsets.only(left: 30,),
                        child: Column(
                          children: [ SizedBox(height: 20, ),

                            Row(
                              children: [
                                Container(

                                  decoration: BoxDecoration(    //color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 70,
                                  width: 70,

                                  child: Image.network(    ('${snap.getinfo!.results![index]!.image}'), fit: BoxFit.fitHeight,),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column( mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                         snap.getinfo!.results![index]!.name.toString(),
                                        style: TextStyle(color: Colors.white),),
                                     // SizedBox(height: 10,),
                                      Text(snap.getinfo!.results![index]!.releaseDate.toString(),
                                        //snap.getinfo!.results![index]!.slug.toString(),
                                        style: TextStyle(color: Colors.white),)
                                    ],
                                  ),

                                ),
                                //SizedBox(width: 50,),
                                //   Padding(
                                //     padding: const EdgeInsets.only(left: 80),
                                //     child: Column(
                                //       children: [
                                //         Container(
                                //         width: 30, // Adjust the width as needed
                                //         height: 30, // Adjust the height as needed
                                //         decoration: BoxDecoration(
                                //           borderRadius: BorderRadius.circular(50), // Half of the width or height for a circular shape
                                //           color: Colors.grey[200], // Set your desired background color
                                //         ),
                                //         child: Icon(Icons.add),
                                // ),
                                //       ],
                                //     ),
                                //   )
                              ],
                            ),
                            //SizedBox(height: 10,),
                  //           Row(
                  //             children: [
                  //               Container(
                  //                 decoration: BoxDecoration(color: Colors.red,
                  //                     borderRadius: BorderRadius.circular(10)),
                  //                 height: 70,
                  //                 width: 70,
                  //                 child:  Image.network(    ('${snap.getinfo!.results![1]!.image}'),            ),
                  //
                  //
                  //
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(left: 10,),
                  //                 child: Column(
                  //                   children: [
                  //                     Row(
                  //                       children: [
                  //                         Text( snap.getinfo!.results![1]!.name.toString(),
                  //                           style: TextStyle(color: Colors.white),),
                  //                       ],
                  //                     ),
                  //                     SizedBox(height: 10,),
                  //                     Row(children: [
                  //                       Text(
                  // snap.getinfo!.results![1]!.releaseDate.toString(),
                  //                         style: TextStyle(color: Colors.white),)
                  //                     ],)
                  //                   ],
                  //                 ),
                  //               )
                  //
                  //
                  //             ],
                  //           ),
                  //           SizedBox(height: 10,),
                  // //           Row(
                  // //             children: [
                  // //               Container(
                  // //                 decoration: BoxDecoration(color: Colors.red,
                  // //                     borderRadius: BorderRadius.circular(10)),
                  // //                 height: 70,
                  //                 width: 70,
                  //                 child:  Image.network(    ('${snap.getinfo!.results![2]!.image}'),            ),
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(left: 10,),
                  //                 child: Column(
                  //                   children: [
                  //                     Row(
                  //                       children: [
                  //                         Text( snap.getinfo!.results![2]!.name.toString(),
                  //                           style: TextStyle(color: Colors.white),),
                  //                       ],
                  //                     ),
                  //                     SizedBox(height: 10,),
                  //                     Row(children: [
                  //                       Text(
                  // snap.getinfo!.results![2]!.releaseDate.toString(),
                  //                         style: TextStyle(color: Colors.white),)
                  //                     ],)
                  //                   ],
                  //                 ),
                  //               )
                  //
                  //
                  //             ],
                  //           ),
                  //           SizedBox(height: 10,),
                  //           Row(
                  //             children: [
                  //               Container(
                  //                 decoration: BoxDecoration(color: Colors.red,
                  //                     borderRadius: BorderRadius.circular(10)),
                  //                 height: 70,
                  //                 width: 70,
                  //                 child:  Image.network(    ('${snap.getinfo!.results![3]!.image}'),            ),
                  //
                  //
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(left: 10,),
                  //                 child: Column(
                  //                   children: [
                  //                     Row(
                  //                       children: [
                  //                         Text( snap.getinfo!.results![3]!.name.toString(),
                  //                           style: TextStyle(color: Colors.white),),
                  //                       ],
                  //                     ),
                  //                     SizedBox(height: 10,),
                  //                     Row(children: [
                  //                       Text(
                  //                         snap.getinfo!.results![3]!.releaseDate.toString(),
                  //                         style: TextStyle(color: Colors.white),)
                  //                     ],)
                  //                   ],
                  //                 ),
                  //               )
                  //
                  //
                  //             ],
                  //           ),
                  //           SizedBox(height: 10,),
                  // //           Row(
                  //             children: [
                  //               Container(
                  //                 decoration: BoxDecoration(color: Colors.red,
                  //                     borderRadius: BorderRadius.circular(10)),
                  //                 height: 70,
                  //                 width: 70,
                  //                 child:  Image.network(    ('${snap.getinfo!.results![4]!.image}'),            ),
                  //
                  //
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(left: 10,),
                  //                 child: Column(
                  //                   children: [
                  //                     Row(
                  //                       children: [
                  //                         Text( snap.getinfo!.results![4]!.name.toString(),
                  //                           style: TextStyle(color: Colors.white),),
                  //                       ],
                  //                     ),
                  //                     SizedBox(height: 10,),
                  //                     Row(children: [
                  //                       Text(
                  // snap.getinfo!.results![4]!.releaseDate.toString(),
                  //                         style: TextStyle(color: Colors.white),)
                  //                     ],)
                  //                   ],
                  //                 ),
                  //               )
                  //
                  //
                  //             ],
                  //           )
                          ],
                        ),
                      )
                    ],
                  );

                }
            ),
             ),
          ]
          ),

        );

      }
    );

  }


  getApiCall() {
    ApiService().getApi(
      context,
      url: URL.getUrl,
      sucessResponse: (sucessResponse) async {




        StoreProvider.of<AppState>(context).dispatch(
          AddAction(
            type: 'api data',
            data: sucessResponse,
          ),
        );
      },





    errorResponse: (errorResponse) async {

        Fluttertoast.showToast(
          msg: errorResponse!['message'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      print("bilawal: $token");


        debugPrint("2222222222222 ./././././ $errorResponse");

      },
    );
  }
}

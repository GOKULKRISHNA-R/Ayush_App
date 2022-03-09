

import 'package:ayush_app/screens/home/appointmen.dart';
import 'package:customize/customize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

import '../../additional files/constants.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  final List<String> hospitals = ['Current Location',
    'Ayush multispeciality homoeopathic clinic',
    'Sona AYUSH Multispecialty Health Center',
    'Shree Varma Ayush Hospitals',
    'Vignesh Hospital',
    'Guna ayush hospital',
    'Global Ayush Hospital and Kidney Research Centre',
    'Ayush Lifecare Hospitals',
    'Ayush Child Care Clinic'];

  String currentHospital = 'Current Location';


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FlutterMap(
        options: MapOptions(
          center: latLng.LatLng(11.2743544,77.6040418),
          zoom: 10.00,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate: "https://api.mapbox.com/styles/v1/gokulakannan/cl0aryiuv000x14pc3k8qcr1n/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZ29rdWxha2FubmFuIiwiYSI6ImNsMGFwcmtmNzBwanEzYnA5YjN2ZWR4NTEifQ.QGou-k3OvEh1O63i3lqcCA",
              additionalOptions: {
                'accessToken': 'pk.eyJ1IjoiZ29rdWxha2FubmFuIiwiYSI6ImNsMGFwcmtmNzBwanEzYnA5YjN2ZWR4NTEifQ.QGou-k3OvEh1O63i3lqcCA',
                'id': 'mapbox.mapbox-streets-v8',
              }
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: latLng.LatLng(11.2743544,77.6040418),
                builder: (ctx) =>
                    IconButton(
                      icon: const Icon(Icons.location_on),
                      color: Colors.red,
                      iconSize: 45.0,
                      onPressed: (){

                        showModalBottomSheet(
                          backgroundColor: FxColors.amber100,
                          context: context ,
                          builder: (BuildContext context) {
                            return Column(
                              children:  [
                                Container(
                                  child: const Text('AYUSH MULTISPECIALITY HOMOEOPATHIC CLINIC',
                                  style: TextStyle( color: Colors.black87,fontSize: 20,),
                                  ),
                                  // color: Colors.amber,width: ,
                                ),
                                Row(
                                  children: [
                                    const Image(image: AssetImage('assets/h2.jpeg'),
                                    height: 200,
                                    width: 300,),
                                    Column(
                                      children: [
                                        TextButton.icon(onPressed:() {}, icon: const Icon(Icons.phone), label: const Text('contact')),
                                        TextButton.icon(onPressed:() {}, icon: const Icon(Icons.directions), label: const Text('route')),
                                        TextButton.icon(onPressed:() {}, icon: const Icon(Icons.link), label: const Text('website'))
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('Location',style: TextStyle(color: Colors.black87),),
                                    TextButton.icon(onPressed:() {}, icon: const Icon(
                                        Icons.local_hospital,
                                      color: Colors.black87,
                                    ), label: const Text(''))
                                  ],
                                ),

                                const Text('73-1, Rajiv Gandhi Road, Main Road, Sankar Nagar, Salem, Tamil Nadu 636007',
                                style: TextStyle(fontSize: 17,
                                    fontStyle: FontStyle.italic,
                                ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: FxColors.amber400,
                                  ),
                                  onPressed: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Appointmentbooking() ));
                                  },
                                  child:
                                    const Text('book'),
                                )
                              ],
                            );
                          },
                        );

                      },
                    ),
              ),
              // Marker(
              //   width: 80.0,
              //   height: 80.0,
              //   point: latLng.LatLng(11.6755929,78.1238193),
              //   builder: (ctx) =>
              //       IconButton(
              //         icon: const Icon(Icons.location_on),
              //         color: Colors.red,
              //         iconSize: 45.0,
              //         onPressed: (){
              //
              //           showModalBottomSheet(
              //             backgroundColor: FxColors.amber100,
              //             context: context ,
              //             builder: (BuildContext context) {
              //               return Column(
              //                 children:  [
              //                   Container(
              //                     child: const Text('Sona AYUSH Multispecialty Health Center',
              //                       style: TextStyle( color: Colors.black87,fontSize: 20,),
              //                     ),
              //                     // color: Colors.amber,width: ,
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Image(image: AssetImage('assets/h2.jpeg'),
              //                         height: 200,
              //                         width: 300,),
              //                       Column(
              //                         children: [
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.phone), label: const Text('contact')),
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.directions), label: const Text('route')),
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.link), label: const Text('website'))
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Text('Location',style: TextStyle(color: Colors.black87),),
              //                       TextButton.icon(onPressed:() {}, icon: const Icon(
              //                         Icons.local_hospital,
              //                         color: Colors.black87,
              //                       ), label: const Text(''))
              //                     ],
              //                   ),
              //
              //                   const Text('73-1, Rajiv Gandhi Road, Main Road, Sankar Nagar, Salem, Tamil Nadu 636007',
              //                     style: TextStyle(fontSize: 17,
              //                       fontStyle: FontStyle.italic,
              //                     ),
              //                   ),
              //                   ElevatedButton(
              //                     style: ElevatedButton.styleFrom(
              //                       primary: FxColors.amber400,
              //                     ),
              //                     onPressed: (){
              //                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Appointmentbooking() ));
              //                     },
              //                     child:
              //                     const Text('book'),
              //                   )
              //                 ],
              //               );
              //             },
              //           );
              //
              //         },
              //       ),
              // ),
              // Marker(
              //   width: 80.0,
              //   height: 80.0,
              //   point: latLng.LatLng(11.6708485,78.1477085),
              //   builder: (ctx) =>
              //       IconButton(
              //         icon: const Icon(Icons.location_on),
              //         color: Colors.red,
              //         iconSize: 45.0,
              //         onPressed: (){
              //
              //           showModalBottomSheet(
              //             backgroundColor: FxColors.amber100,
              //             context: context ,
              //             builder: (BuildContext context) {
              //               return Column(
              //                 children:  [
              //                   Container(
              //                     child: const Text('Shree varma ayush hospital',
              //                       style: TextStyle( color: Colors.black87,fontSize: 20,),
              //                     ),
              //                     // color: Colors.amber,width: ,
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Image(image: AssetImage('assets/h2.jpeg'),
              //                         height: 200,
              //                         width: 300,),
              //                       Column(
              //                         children: [
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.phone), label: const Text('contact')),
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.directions), label: const Text('route')),
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.link), label: const Text('website'))
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Text('Location',style: TextStyle(color: Colors.black87),),
              //                       TextButton.icon(onPressed:() {}, icon: const Icon(
              //                         Icons.local_hospital,
              //                         color: Colors.black87,
              //                       ), label: const Text(''))
              //                     ],
              //                   ),
              //
              //                   const Text('73-1, Rajiv Gandhi Road, Main Road, Sankar Nagar, Salem, Tamil Nadu 636007',
              //                     style: TextStyle(fontSize: 17,
              //                       fontStyle: FontStyle.italic,
              //                     ),
              //                   ),
              //                   ElevatedButton(
              //                     style: ElevatedButton.styleFrom(
              //                       primary: FxColors.amber400,
              //                     ),
              //                     onPressed: (){
              //                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Appointmentbooking() ));
              //                     },
              //                     child:
              //                     const Text('book'),
              //                   )
              //                 ],
              //               );
              //             },
              //           );
              //
              //         },
              //       ),
              // ),
              // Marker(
              //   width: 80.0,
              //   height: 80.0,
              //   point: latLng.LatLng(11.6566489,78.1557415),
              //   builder: (ctx) =>
              //       IconButton(
              //         icon: const Icon(Icons.location_on),
              //         color: Colors.red,
              //         iconSize: 45.0,
              //         onPressed: (){
              //
              //           showModalBottomSheet(
              //             backgroundColor: FxColors.amber100,
              //             context: context ,
              //             builder: (BuildContext context) {
              //               return Column(
              //                 children:  [
              //                   Container(
              //                     child: const Text('Vignesh Hospital',
              //                       style: TextStyle( color: Colors.black87,fontSize: 20,),
              //                     ),
              //                     // color: Colors.amber,width: ,
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Image(image: AssetImage('assets/h2.jpeg'),
              //                         height: 200,
              //                         width: 300,),
              //                       Column(
              //                         children: [
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.phone), label: const Text('contact')),
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.directions), label: const Text('route')),
              //                           TextButton.icon(onPressed:() {}, icon: const Icon(Icons.link), label: const Text('website'))
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Text('Location',style: TextStyle(color: Colors.black87),),
              //                       TextButton.icon(onPressed:() {}, icon: const Icon(
              //                         Icons.local_hospital,
              //                         color: Colors.black87,
              //                       ), label: const Text(''))
              //                     ],
              //                   ),
              //
              //                   const Text('73-1, Rajiv Gandhi Road, Main Road, Sankar Nagar, Salem, Tamil Nadu 636007',
              //                     style: TextStyle(fontSize: 17,
              //                       fontStyle: FontStyle.italic,
              //                     ),
              //                   ),
              //                   ElevatedButton(
              //                     style: ElevatedButton.styleFrom(
              //                       primary: FxColors.amber400,
              //                     ),
              //                     onPressed: (){
              //                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Appointmentbooking() ));
              //                     },
              //                     child:
              //                     const Text('book'),
              //                   )
              //                 ],
              //               );
              //             },
              //           );
              //
              //         },
              //       ),
              // )
            ],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: FxColors.amber100,
            context: context ,
            builder: (BuildContext context) {
              return DropdownButtonFormField<String>(
                dropdownColor: FxColors.amber400,
                value: currentHospital ,
                onChanged:  (val) {
                  setState(() => currentHospital = val!);
                },
                decoration: textInputDecoration,
                items: hospitals.map((e) => DropdownMenuItem<String>(

                    value: e ,child:Text(e)
                )

                ).toList(),

              );
            },
          );
        },
        backgroundColor: FxColors.amber400,
        child: const Icon(Icons.search),
      ),

    );
  }
}

import 'package:customize/customize.dart';
import 'package:flutter/material.dart';
import '../../additional files/constants.dart';


class Appointmentbooking extends StatefulWidget {
  const Appointmentbooking({Key? key}) : super(key: key);

  @override
  _AppointmentbookingState createState() => _AppointmentbookingState();
}

class _AppointmentbookingState extends State<Appointmentbooking> {

  final _formKey = GlobalKey<FormState>();

  var items = ['Select Doctor','Dr. Dhanush - Ayurveda ','Dr. Kannan - Yoga','Dr. Babu - Siddha','Dr. Krishna - Unani','Dr. Maha - Homeopathy'] ;
  String _patientName = '';
  String _contactNo = '' ;
  String _address = '' ;
  String _healthP = '' ;
  String _doc = '' ;


  @override
  Widget build(BuildContext context) {

    showAlertDialog(BuildContext context) {

      // set up the button
      Widget okButton = TextButton(
        child: const Text("OK"),
        onPressed: () {
          Navigator. pop(context, true);
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: const Text("Token Booked"),
        content: Column(
          children: <Text> [
            Text('Name : '+_patientName+'\n'),
            Text('Phone : '+_contactNo+'\n'),
            Text('Address : '+_address+'\n'),
            Text('Issues : '+_healthP+'\n'),
            Text('Doctor : '+_doc+'\n'),
          ],
        ),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return Scaffold(

      backgroundColor: FxColors.amber100 ,

      appBar: AppBar(
        backgroundColor: FxColors.amber500 ,
        elevation: 0.0,
        title: const Text(
          'Appointment Booking',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),


      ),

      body: Container(

          padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 50 ),

          child: Form(

              key: _formKey,

              child: Column(

                children:  <Widget>[

                  const SizedBox( height: 20,),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(
                        hintText: 'Patient Name',
                        prefixIcon: const Icon(Icons.person)
                    ) ,

                    onChanged:  (val) => setState(() => _patientName = val ) ,
                    validator: (val) => val!.isEmpty ? 'Enter your Name' : null  ,
                  ),

                  const SizedBox( height: 20,),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(
                        hintText: 'Contact Number',
                        prefixIcon: const Icon(Icons.call)
                    ) ,

                    onChanged:  (val) => setState(() => _contactNo = val ) ,
                    validator: (val) => val!.length != 10 ? 'Enter an valid Mobile number' : null ,

                  ),

                  const SizedBox( height: 20,),
                  TextFormField(
                    maxLines: 4 ,
                    decoration: textInputDecoration.copyWith(
                      hintText: 'Address',
                      prefixIcon: const Icon(Icons.home),
                    ) ,
                    onChanged:  (val) => setState(() => _address = val ) ,
                    validator: (val) => val!.isEmpty ? 'Enter your Address' : null  ,

                  ),

                  // PASSWORD
                  const SizedBox( height: 20,),
                  TextFormField(
                    maxLines: 2,
                    decoration: textInputDecoration.copyWith(
                        hintText: 'Health Problems\n'
                            'eg: Cold , fever ,...',
                        prefixIcon: const Icon(Icons.local_hospital)
                    ) ,
                    onChanged:  (val) => setState(() => _healthP = val ) ,
                    validator: (val) => val!.isEmpty ? 'Enter your Problem' : null  ,


                  ),

                  const SizedBox( height: 20,),

                  DropdownButtonFormField<String>(
                    dropdownColor: Colors.amber,
                    value: 'Select Doctor' ,
                    onChanged:  (val) => setState(() => _doc = val! ) ,
                    decoration: textInputDecoration,
                    items: items.map((e) => DropdownMenuItem<String>(value: e,child: Text(e)) ).toList(),

                    validator: (val) => val == 'Select Doctor' ? 'Select a Doctor' : null ,

                  ),

                  const SizedBox( height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: FxColors.amber600,
                    ),
                    onPressed: () {
                      showAlertDialog(context);
                    },

                    child: const Text(
                      'Book',
                      style: TextStyle(
                        color: Colors.white ,
                        fontSize: 18 ,
                      ),
                    ),
                  ),

                ],
              )

          )
      ),
    );
  }
}


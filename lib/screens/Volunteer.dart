import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kulmiye/main_paths.dart';
// import 'package:siciidjama/API/MurashaxAPI.dart';

class Volunteers extends StatefulWidget {
  const Volunteers({super.key});

  @override
  _VolunteersState createState() => _VolunteersState();
}

class _VolunteersState extends State<Volunteers> {
  // Murashax API = Murashax();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  late FocusNode myFocusNodeName;
  late FocusNode myFocusNodeMobile;
  late FocusNode myFocusNodeEmail;

  @override
  void initState() {
    myFocusNodeName = FocusNode();
    myFocusNodeMobile = FocusNode();
    myFocusNodeEmail = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNodeName.dispose();
    myFocusNodeMobile.dispose();
    myFocusNodeEmail.dispose();
    super.dispose();
  }

  _showDialog(String err) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.redAccent.shade100,
            title: Text(
              'Failed',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 21,
                color: Colors.red.shade700,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            content: Text(
              err,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 14,
                color: Colors.red.shade800,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                // color: Colors.red,
                // shape: const RoundedRectangleBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  'Close',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    wordSpacing: 1,
                  ),
                ),
              )
            ],
          );
        });
  }

  _showDialogSuccess(String success) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text(
              'SuccessFully',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 21,
                color: Colors.green.shade700,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            content: Text(
              success,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 14,
                color: Colors.green.shade800,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                // color: Colors.green,
                // shape: const RoundedRectangleBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  'Close',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    wordSpacing: 1,
                  ),
                ),
              )
            ],
          );
        });
  }

  _registerVolun() {
    setState(() {
      if (_formKey.currentState!.validate()) {
        debugPrint(
            "${_mobileController.text.trim().toLowerCase()} ${_nameController.text} ${_emailController.text}");
        // API
        //     .createVolun(
        //   _name.text,
        //   _mobile.text.trim(),
        //   _email.text.trim().toLowerCase(),
        // )
        //     .whenComplete(() {
        //   if (API.error != null) {
        //     _showDialog(API.error);
        //     debugPrint(
        //         "${_mobile.text.trim().toLowerCase()} ${_name.text} ${_email.text}");
        //   } else {
        //     _showDialogSuccess('Successfully Registered');
        //     setState(() {
        //       _name.clear();
        //       _mobile.clear();
        //       _email.clear();
        //     });
        //     debugPrint('Successfully Registered');
        //   }
        // });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Volunteer"),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 0.0,
            bottom: 15.0,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "Assets/images/volunteer.png",
                height: context.screenSize.height * 0.29,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Is Diwaan Gali Si Aad Kulmiye Party Ula Shaqaysed',
                textAlign: TextAlign.center,
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontFamily: 'Poppins',
                  // color: Colors.black,
                  // fontSize: 16,
                  // fontWeight: FontWeight.w600,
                  // letterSpacing: 0.5,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                onChanged: () => _formKey.currentState!.validate(),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Fadlan Gali Magacaaga';
                        }
                        return null;
                      },
                      focusNode: myFocusNodeName,
                      style: context.theme.inputDecorationTheme.hintStyle,
                      decoration: const InputDecoration(
                        labelText: "Magaca",
                        hintText: "Magaca",
                        prefixIcon: Icon(
                          CupertinoIcons.person_fill,
                          size: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      focusNode: myFocusNodeMobile,
                      controller: _mobileController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Fadlan Gali Mobile Numberkaga';
                        }

                        return null;
                      },
                      style: context.theme.inputDecorationTheme.hintStyle,
                      decoration: const InputDecoration(
                        labelText: "Mobile",
                        hintText: "Mobile",
                        prefixIcon: Icon(
                          CupertinoIcons.person_fill,
                          size: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      focusNode: myFocusNodeEmail,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please Enter Your Email';
                        }

                        return null;
                      },
                      style: context.theme.inputDecorationTheme.hintStyle,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        hintText: "Email",
                        prefixIcon: Icon(
                          CupertinoIcons.person_fill,
                          size: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () {
                        _formKey.currentState!.validate();
                      },
                      title: "Register",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

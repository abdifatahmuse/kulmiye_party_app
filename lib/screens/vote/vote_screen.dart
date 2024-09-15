import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kulmiye/main_paths.dart';
// import 'package:siciidjama/API/MurashaxAPI.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Murashax API = Murashax();

  List distractList = [
    {
      "id": "1",
      "name": "26 June",
      "dagmo": "26 June",
    },
    {
      "id": "2",
      "name": "Ibraahim Koodbuur",
      "dagmo": "Ibraahim Koodbuur",
    },
    {
      "id": "3",
      "name": "Calaamada",
      "dagmo": "Calaamada",
    }
  ];

  var dagmitem;
  var status;
  var _selectedDistract;

  // String xafadoUrl =
  //     'https://murashaxsiciid-backend.herokuapp.com/api/xaafado/getXaafados';
  // Future<List> _getStateList() async {
  //   http.Response response = await http.get(
  //     xafadoUrl,
  //     headers: {
  //       'Accept': 'application/json',
  //     },
  //   );

  //   status = response.body.contains('Error');

  //   var data = json.decode(response.body);
  //   print('xaafados Data : $data');

  //   if (status) {
  //     print(
  //         'Error From API :  Error: ${data["Error"]}, StatusCode: ${data['resultcode']}');

  //     status = data['resultcode'];
  //   } else {
  //     print('xaafados Data : $data');

  //     setState(() {
  //       distractList = data['xaafados'];
  //     });
  //     // return data['xaafados'];
  //   }
  // }

  final TextEditingController _name = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _magaalada = TextEditingController();
  final TextEditingController _goobta_codeynta = TextEditingController();
  final TextEditingController _kaadha_codeynta = TextEditingController();
  final TextEditingController _email = TextEditingController();
  // TextEditingController _password = TextEditingController();

  // bool _showpassword = false;

  final _formKey = GlobalKey<FormState>();

  //  keyboard
  late FocusNode myFocusNodeName;
  late FocusNode myFocusNodeMobile;
  late FocusNode myFocusNodeCity;
  late FocusNode myFocusNodeVoteArea;
  late FocusNode myFocusNodeVoteCard;
  late FocusNode myFocusNodeEmail;

  @override
  void initState() {
    myFocusNodeName = FocusNode();
    myFocusNodeMobile = FocusNode();
    myFocusNodeCity = FocusNode();
    myFocusNodeVoteArea = FocusNode();
    myFocusNodeVoteCard = FocusNode();
    myFocusNodeEmail = FocusNode();

    // _getStateList();

    super.initState();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNodeName.dispose();
    myFocusNodeMobile.dispose();
    myFocusNodeCity.dispose();
    myFocusNodeVoteArea.dispose();
    myFocusNodeVoteCard.dispose();
    myFocusNodeEmail.dispose();

    super.dispose();
  }

  // String dagmada = "${_selectedCompany.name}, ${_selectedCompanyx.name}";
  _register() {
    if (_formKey.currentState!.validate()) {
      // API
      //     .register(_name.text, _mobile.text.trim(), _myState,
      //         _kaadha_codeynta.text.trim(), _email.text.trim().toLowerCase())
      //     .whenComplete(() {
      //   if (API.error != null) {
      //     // _showDialog(API.error);
      //     debugPrint(
      //         "${_mobile.text.trim().toLowerCase()} ${_name.text.trim()}");
      //   } else {

      //     // _showDialogSuccess('Successfully Registered');

      //     setState(() {
      //       _name.clear();
      //       _mobile.clear();
      //       _magaalada.clear();
      //       _goobta_codeynta.clear();
      //       _kaadha_codeynta.clear();
      //       _email.clear();
      //     });
      //     debugPrint('Successfully Registered');
      //   }
      // });
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('U Codee'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 0.0,
          bottom: 15.0,
        ),
        child: Form(
          key: _formKey,
          onChanged: () => _formKey.currentState!.validate(),
          child: Column(
            children: [
              Text(
                'Is Diiwaan Gali Si Aad U Codayso',
                textAlign: TextAlign.center,
                style: context.theme.textTheme.titleLarge?.copyWith(
                    // fontFamily: 'Poppins',
                    // color: Colors.white,
                    // fontSize: 21,
                    // fontWeight: FontWeight.w400,
                    // letterSpacing: 0.5,
                    ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _name,
                keyboardType: TextInputType.name,
                focusNode: myFocusNodeName,
                style: context.theme.inputDecorationTheme.hintStyle,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please Enter Your Name';
                  }

                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Name",
                  prefixIcon: Icon(
                    CupertinoIcons.phone,
                    size: 25,
                  ),
                ),
              ),
              TextFormField(
                controller: _mobile,
                focusNode: myFocusNodeMobile,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please Enter Your Mobile Number';
                  }

                  return null;
                },
                style: context.theme.inputDecorationTheme.hintStyle,
                decoration: const InputDecoration(
                  labelText: "Mobile",
                  hintText: "Mobile",
                  prefixIcon: Icon(
                    CupertinoIcons.phone,
                    size: 25,
                  ),
                ),
              ),
              DropdownButtonFormField<String>(
                value: _selectedDistract,
                iconSize: 20.0,
                isDense: true,
                borderRadius: buttonBorderRadius,
                menuMaxHeight: 190.0,
                itemHeight: 50,
                icon: const Icon(CupertinoIcons.chevron_down),
                hint: Text(
                  'Select Distract',
                  style: context.theme.inputDecorationTheme.hintStyle,
                ),
                style: context.theme.inputDecorationTheme.hintStyle,
                decoration: const InputDecoration(
                  labelText: "Distract",
                  hintText: "Distract",
                  filled: true,
                  isDense: true,
                  prefixIcon: Icon(
                    CupertinoIcons.location_solid,
                    size: 25,
                  ),
                ),
                onChanged: (String? newValue) {
                  _selectedDistract = newValue;
                  setState(() {});
                },
                validator: (value) {
                  if (value == null) {
                    return 'Select a Distract';
                  }
                  return null;
                },
                items: distractList.map((item) {
                  dagmitem = item['dagmo'].toString();
                  return DropdownMenuItem(
                    value: item['id'].toString(),
                    child: Text(item['name']),
                  );
                }).toList(),
              ),
              TextFormField(
                controller: _kaadha_codeynta,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please Enter Your Vote Card';
                  }
                  return null;
                },
                focusNode: myFocusNodeVoteCard,
                style: context.theme.inputDecorationTheme.hintStyle,
                decoration: const InputDecoration(
                  labelText: "Vote Card Number",
                  hintText: "Vote Card Number",
                  prefixIcon: Icon(
                    CupertinoIcons.creditcard_fill,
                    size: 25,
                  ),
                ),
              ),
              TextFormField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please Enter Your Email';
                  }

                  return null;
                },
                focusNode: myFocusNodeEmail,
                style: context.theme.inputDecorationTheme.hintStyle,
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Email",
                  prefixIcon: Icon(
                    CupertinoIcons.mail,
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
      ),
    );
  }
}

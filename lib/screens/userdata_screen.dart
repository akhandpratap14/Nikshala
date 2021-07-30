import 'package:flutter/material.dart';
import 'package:nikshala/utilities/data.dart';
import 'package:sizer/sizer.dart';
import '../utilities/data.dart';

class displayUserData extends StatefulWidget {
  const displayUserData({Key? key}) : super(key: key);

  @override
  _displayUserDataState createState() => _displayUserDataState();
}

late String name;
late String email;
late String website;

bool loading = false;

var activeIndex = 0;
UserModel dataUser = UserModel();

class _displayUserDataState extends State<displayUserData> {
  void updateUI(dataUser) {
    setState(() {
      if (dataUser == null) {
        name = 'no data found';
        email = 'Unable to get Data from Server !';
        website = '';
        return;
      }
      name = dataUser[0]['name'];
      email = dataUser[0]['email'];
      website = dataUser[0]['website'];
      loading = false;
    });
  }

  @override
  void initState() {
    loading = true;
    var user = dataUser.getUserData().then((value) {
      updateUI(value);
    });
    print(user);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: loading == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                boxShadow: [
                                  new BoxShadow(
                                      color: Color(0x0f000000),
                                      blurRadius: 24.0,
                                      offset: Offset(0, 4)),
                                ]),
                            width: size.width * 0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Text(name),
                                  ),
                                  Container(
                                    child: Text(email),
                                  ),
                                  Container(
                                    child: Text(website),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'lamees';
    });
    //simulate network request to get bio for username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'programmer, animal lover & adventurous';
    });

    // statement won't run before the result is retrieved
    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hi');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}

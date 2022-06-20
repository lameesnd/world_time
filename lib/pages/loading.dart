import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void Setup_WorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Beirut', flag: 'lebanon.png', url: 'Asia/Beirut');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time!;
    });
  }

  @override
  void initState() {
    super.initState();
    Setup_WorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}

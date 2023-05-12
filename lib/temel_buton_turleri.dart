import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            onLongPress: () {
              debugPrint('Uzun basıldı');
            },
            child: Text('Buton')),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              // backgroundColor: MaterialStateProperty.all(Colors.red.shade200),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.teal;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Colors.orange.shade200;
                }
                return Colors.amber;
              }),
              foregroundColor: MaterialStateProperty.all(Colors.yellow.shade200),
              overlayColor: MaterialStateProperty.all(Colors.yellow.withOpacity(0.5))),
          icon: Icon(Icons.add),
          label: Text('Button with Icon'),
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.red.shade200, onPrimary: Colors.yellow.shade200),
            child: Text('Elevated button')),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.time_to_leave),
            label: Text('Elevated with icon')),
        OutlinedButton(onPressed: () {}, child: Text('Outlined button')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.person),
            style: OutlinedButton.styleFrom(
                shape: StadiumBorder(), side: BorderSide(color: Colors.purple.shade200)),
            label: Text('Outlined with icon')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.person),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.pink, width: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            label: Text('Outlined with icon'))
      ],
    );
  }
}

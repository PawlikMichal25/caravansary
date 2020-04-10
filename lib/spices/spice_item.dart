import 'package:caravansary/data/spices/model/spice.dart';
import 'package:flutter/material.dart';

class SpiceItem extends StatelessWidget {
  final Spice spice;

  const SpiceItem(this.spice);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildSectionDecoration(),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      height: 80.0,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                spice.name,
                style: TextStyle(fontSize: 16.0, color: const Color(0xFF737373), fontFamily: 'Brasley'),
              ),
            ),
          ),
          Image.network(imageUrl),
        ],
      ),
    );
  }

  Decoration _buildSectionDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          blurRadius: 10.0, // has the effect of softening the shadow
          spreadRadius: 5.0, // has the effect of extending the shadow
          offset: Offset(3.0, 3.0),
        )
      ],
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    );
  }
}

// TODO Delete this
const imageUrl =
    'https://nuts.com/images/rackcdn/ed910ae2d60f0d25bcb8-80550f96b5feb12604f4f720bfefb46d.ssl.cf1.rackcdn.com/5e02462635aacd58-tzpjpBj1-large.jpg';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'burc_detay.dart';
import 'models/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var MyTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      BurcDetay(secilenBurc: listelenenBurc)));
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
              width: 64,
              height: 64,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: MyTextStyle.headline5,
            ),
            subtitle: Text(listelenenBurc.burcTarihi),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}

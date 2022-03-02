import 'package:falapp/model/burc.dart';
import 'package:falapp/model/burc_detay.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc ListelenenBurc;
  const BurcItem({required this.ListelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      BurcDetay(secilenBurc: ListelenenBurc)));
            },
            leading: Image.asset(
              "images/" + ListelenenBurc.burckucukResim,
            ),
            title: Text(
              ListelenenBurc.burcAdi,
              style: myTextStyle.headline6,
            ),
            subtitle: Text(
              ListelenenBurc.burcTarih,
              style: myTextStyle.subtitle1,
            ),
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

import 'package:falapp/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: Colors.pink,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(secilenBurc.burcAdi + "Burcu ve Özellikleri"),
            centerTitle: true,
            background: Image.asset(
              "images/" + secilenBurc.burcbuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetay,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        )
      ],
    ));
  }
}

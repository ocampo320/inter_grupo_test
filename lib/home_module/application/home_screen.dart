import 'package:country_app/home_module/application/widgets/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../infreestructure/home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Lista de paises",
          ),
          centerTitle: true,
        ),
        body: ChangeNotifierProvider(
            create: (_) => HomeProvider(),
            child: Consumer<HomeProvider>(builder:
                (BuildContext context, HomeProvider provider, Widget? child) {
              provider.loadCountries();
              return ListView.builder(
                shrinkWrap: true,
                itemCount: provider.cousntries.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardWidget(
                      countries: provider.cousntries[i],
                    ),
                  );
                },
              );
            })));
  }
}

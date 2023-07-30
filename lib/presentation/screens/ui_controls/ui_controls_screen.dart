import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiCrontrolsView(),
    );
  }
}

class _UiCrontrolsView extends StatefulWidget {
  const _UiCrontrolsView();

  @override
  State<_UiCrontrolsView> createState() => _UiCrontrolsViewState();
}

enum Trasportation { car, plane, submarin, boat }

class _UiCrontrolsViewState extends State<_UiCrontrolsView> {
  bool isDeveloper = true;
  Trasportation selectedTrasportation = Trasportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text('Vehiculo de trasporte'),
          subtitle: Text('$selectedTrasportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('viajar por carro'),
                value: Trasportation.car,
                groupValue: selectedTrasportation,
                onChanged: (value) => setState(() {
                      selectedTrasportation = Trasportation.car;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('viajar por barco'),
                value: Trasportation.boat,
                groupValue: selectedTrasportation,
                onChanged: (value) => setState(() {
                      selectedTrasportation = Trasportation.boat;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('viajar por Avion'),
                value: Trasportation.plane,
                groupValue: selectedTrasportation,
                onChanged: (value) => setState(() {
                      selectedTrasportation = Trasportation.plane;
                    })),
            RadioListTile(
                title: const Text('By Submarin'),
                subtitle: const Text('viajar por Submarino'),
                value: Trasportation.submarin,
                groupValue: selectedTrasportation,
                onChanged: (value) => setState(() {
                      selectedTrasportation = Trasportation.submarin;
                    })),
          ],
        ),
        //TODO: por aqui

        CheckboxListTile(
          title: const Text('¿Desayuno?'),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })),
         CheckboxListTile(
          title: const Text('¿Almuerzo?'),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
          CheckboxListTile(
          title: const Text('¿Cena?'),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),             
      ],
    );
  }
}

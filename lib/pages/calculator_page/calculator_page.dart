import 'package:application_calculadora/controller/calculo_imc_controller.dart';
import 'package:application_calculadora/shared/custom_appbar.dart';
import 'package:application_calculadora/shared/custom_buttons.dart';
import 'package:application_calculadora/shared/custom_drawer.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController heighController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  String textInfo = "Informe seus dados";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const CustomDrawer(),
      appBar: CustomAppBar(
        title: 'Calculadora IMC',
        image: Image.asset('assets/images/logo_home.png'),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                textInfo = CalcularController()
                    .resetFields(heighController, weightController);
              });
            },
            child: SizedBox(width: 50, child: const Icon(Icons.refresh)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Image.asset('assets/images/user.png'),
              ),
              const SizedBox(
                height: 47,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: weightController,
                  decoration: const InputDecoration(
                    hintText: 'Peso (kg)',
                  ),
                ),
              ),
              const SizedBox(
                height: 38.5,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: heighController,
                  decoration: const InputDecoration(
                    hintText: 'Altura (cm)',
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 33.5),
                  width: 300,
                  height: 50,
                  child: CustomButtons(
                    context: context,
                    text: 'Calcular',
                    primary: Theme.of(context).primaryColor,
                    pressed: () {
                      setState(() {
                        textInfo = CalcularController()
                            .calculaImc(heighController, weightController);
                      });
                    },
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 33), child: Text(textInfo)),
            ],
          ),
        ),
      ),
    );
  }
}

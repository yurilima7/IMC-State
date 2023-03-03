import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:imc_aula/widgets/imc_gauge_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcSetstate extends StatefulWidget {
  const ImcSetstate({super.key});

  @override
  State<ImcSetstate> createState() => _ImcSetstateState();
}

class _ImcSetstateState extends State<ImcSetstate> {
  final pesoEC = TextEditingController();
  final alturaEC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    pesoEC.dispose();
    alturaEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC SetState'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SfRadialGauge(
                axes: [
                  RadialAxis(
                    showLabels: false,
                    showAxisLine: false,
                    showTicks: false,
                    minimum: 12.5,
                    maximum: 47.9,
                    ranges: [
                      ImcGaugeRange(
                        color: Colors.blue,
                        start: 12.5,
                        end: 18.5,
                        label: 'MAGREZA',
                      ),
                      ImcGaugeRange(
                        color: Colors.green,
                        start: 18.5,
                        end: 24.5,
                        label: 'NORMAL',
                      ),
                      ImcGaugeRange(
                        color: Colors.yellow[600]!,
                        start: 24.5,
                        end: 29.9,
                        label: 'SOBREPESO',
                      ),
                      ImcGaugeRange(
                        color: Colors.red[500]!,
                        start: 29.9,
                        end: 39.9,
                        label: 'OBESIDADE',
                      ),
                      ImcGaugeRange(
                        color: Colors.red[900]!,
                        start: 39.9,
                        end: 47.9,
                        label: 'OBESIDADE GRAVE',
                      ),
                    ],
                    pointers: const [
                      NeedlePointer(
                        value: 15,
                        enableAnimation: true,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: pesoEC,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Peso'),
                inputFormatters: [
                  CurrencyTextInputFormatter(
                    locale: 'pt_BR',
                    symbol: '',
                    decimalDigits: 2,
                    turnOffGrouping: true,
                  )
                ],
              ),
              TextFormField(
                controller: alturaEC,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Altura'),
                inputFormatters: [
                  CurrencyTextInputFormatter(
                    locale: 'pt_BR',
                    symbol: '',
                    decimalDigits: 2,
                    turnOffGrouping: true,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Calcular IMC'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:spirobank/spirobank.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final deviceManager = DeviceManager.instance;
  final devices = <DeviceInfo>[];
  Patient? patient;

  double predicted = 0;
  double actual = 0;

  @override
  void initState() {
    deviceManager.devices.listen((event) {
      setState(() {
        devices.add(event);
      });
    });
    deviceManager.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () async {
                patient = await Patient.create(
                  birthdate: DateTime(1998, 3, 20),
                  height: 185,
                  weight: 92,
                  ethnic: EthnicGroup.ethnicGroupCaucasian,
                  gender: Gender.male,
                );
              },
              child: Text('Create patient'),
            ),
            TextButton(
              child: Text('Start scan'),
              onPressed: () {
                deviceManager.startScan();
              },
            ),
            TextButton(
              child: Text('Start test'),
              onPressed: () async {
                await deviceManager.connectedDevice?.startTest(
                  TestType.testPeakFlowFev1,
                  15,
                  TurbineType.reusable,
                );
              },
            ),
            Row(
              children: [
                Expanded(child: Text('actual: $actual')),
                Expanded(child: Text('predicted: $predicted')),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: devices.length,
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () async {
                      await deviceManager.connect(devices[index].deviceId);
                      final device = deviceManager.connectedDevice!;

                      device.flows.listen((flow) async {
                        final a = await patient?.actualPercentageOfTarget(
                              flow: flow.value,
                              volumeStep: device.volumeStep,
                              isFirstPacakge: flow.isFirstValue,
                            ) ??
                            actual;
                        final b = await patient?.predictedPercentageOfTarget(
                              flow: flow.value,
                              volumeStep: device.volumeStep,
                              isFirstPacakge: flow.isFirstValue,
                            ) ??
                            predicted;
                        setState(() {
                          actual = a;
                          predicted = b;
                        });
                      });
                    },
                    child: Text(devices[index].name),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

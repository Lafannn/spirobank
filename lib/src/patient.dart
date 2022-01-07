import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:spirobank/src/ethnic_group.dart';
import 'package:spirobank/src/gender.dart';
import 'package:spirobank/src/messages/create_patient_request.pbserver.dart';
import 'package:spirobank/src/messages/ethnic_group.pb.dart' as messages;
import 'package:spirobank/src/messages/gender.pb.dart' as messages;
import 'package:spirobank/src/messages/get_percentage_request.pb.dart';
import 'package:spirobank/src/messages/patient.pb.dart' as messages;

class Patient {
  static const _methodChannel = MethodChannel('spirobank');

  static Future<Patient> create({
    required DateTime birthdate,
    required double height,
    required double weight,
    required EthnicGroup ethnic,
    required Gender gender,
  }) async {
    final request = CreatePatientRequest(
      date: birthdate.toIso8601String(),
      height: height,
      weight: weight,
      ethnic: messages.EthnicGroup.values[ethnic.index],
      gender: messages.Gender.values[gender.index],
    );
    final data = await _methodChannel.invokeMethod<Uint8List>(
      'createPatient',
      request.writeToBuffer(),
    );
    final patientMessage = messages.Patient.fromBuffer(data!.toList());
    return Patient._(patientMessage);
  }

  final messages.Patient _patientMessage;

  Patient._(this._patientMessage);

  Future<double> actualPercentageOfTarget({
    required double flow,
    required int volumeStep,
    required bool isFirstPacakge,
  }) async {
    final request = GetPercentageRequest(
      flow: flow,
      volumeStep: volumeStep,
      isFirstPackage: isFirstPacakge,
    );

    final actualPercentage = await _methodChannel.invokeMethod<double>(
      'actualPercentageOfTarget',
      request.writeToBuffer(),
    );

    return actualPercentage ?? 0;
  }

  Future<double> predictedPercentageOfTarget({
    required double flow,
    required int volumeStep,
    required bool isFirstPacakge,
  }) async {
    final request = GetPercentageRequest(
      flow: flow,
      volumeStep: volumeStep,
      isFirstPackage: isFirstPacakge,
    );

    final predictedPercentage = await _methodChannel.invokeMethod<double>(
      'predictedPercentageOfTarget',
      request.writeToBuffer(),
    );

    return predictedPercentage ?? 0;
  }
}

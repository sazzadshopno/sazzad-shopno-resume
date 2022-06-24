import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../constant/constant.dart';
import '../data/model/models.dart';
import 'homepage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Client client;
  late Future<void> _onGetJsonData;
  PersonalInformationResponse? personalInformationResponse;
  @override
  void initState() {
    super.initState();
    client = Client();
    _onGetJsonData = _getJsonData();
  }

  Future<void> _getJsonData() async {
    Response response = await client.get(Uri.parse(queryUrl));
    Map<String, dynamic> decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes));
    personalInformationResponse =
        PersonalInformationResponse.fromJson(decodedResponse);
  }

  @override
  void dispose() {
    client.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _onGetJsonData,
        builder: (BuildContext _, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Homepage(
              personalInformationResponse: personalInformationResponse!,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

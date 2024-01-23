// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:malicious_url_detector/services/api_services.dart';
import 'package:malicious_url_detector/url_checker/model.dart';

class HomepageController extends GetxController {
  static HomepageController get to => Get.find();

  TextEditingController urlController = TextEditingController();

  bool loading = false;
  CheckResponseModel? checkData;

  checkUrlSafety() async {
    if (urlController.text.isNotEmpty == true) {
      loading = true;
      update();
      String urlEntered = urlController.text.trim();
      var checkResponse = await fetchUrlAnalysis(urlEntered);

      // var isMaliciousResponse = fetchUrlAnalysis(urlEntered);

      if (checkResponse.toString() == 'error') {
        print("Error checking the URL");
        Fluttertoast.showToast(
          msg: "Error checking the URL, check your network and retry",
        );
      } else {
        print("URL checked");

        // if (isMaliciousResponse = true) {
        //   Fluttertoast.showToast(
        //       msg: "The URL is Malicious", backgroundColor: Colors.red);
        // } else {
        //   Fluttertoast.showToast(msg: "The URL is safe");
        // }

        var dataBody = checkResponse;

        CheckResponseModel checkResponseData = checkResponseModelFromJson(
          jsonEncode(
            dataBody,
          ),
        );
        checkData = checkResponseData;
        print(checkData?.toJson());
        update();
      }
    } else {
      Fluttertoast.showToast(msg: "Enter a valid URL to check");
      checkData = null;
      update();
    }
    loading = false;
    update();
  }
}

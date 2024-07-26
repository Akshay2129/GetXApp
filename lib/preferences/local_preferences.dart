import 'dart:convert';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageUtils {
  static late final SharedPreferences instance;

  static Future<SharedPreferences> init() async =>
      instance = await SharedPreferences.getInstance();
  static Future<void> saveUserDetails(String token) async {
    await instance.setString('token', token);
  }

  static Future<void> saveGroupDetails(Map<String, dynamic> groupData) async {
    String groupDataString = jsonEncode(groupData);
    await instance.setString('data', groupDataString);
  }

  static Future<void> saveFirebaseToken(String firebaseToken) async {
    await instance.setString('firebaseToken', firebaseToken);
  }

  static Future<String?> fetchFirebaseToken() async {
    final firebaseToken = instance.getString('firebaseToken') ?? '';
    if (firebaseToken.isEmpty) {
      return "";
    }
    return firebaseToken;
  }

  static Future<String?> fetchToken() async {
    final token = instance.getString('token') ?? '';
    if (token.isEmpty) {
      return "";
    }
    return token;
  }

  static Future<void> clear() async {
    await instance.clear();
  }

  static Future<void> savePhoneNumber(String number) async {
    await instance.setString('phoneNumber', number);
  }

  static Future<void> groupId(String groupId) async {
    await instance.setString('groupId', groupId);
  }

  static Future<String?> fetchGrouId() async {
    final groupId = instance.getString('groupId') ?? '';
    if (groupId.isEmpty) {
      return "";
    }
    return groupId;
  }

  static Future<void> empId(String empId) async {
    await instance.setString('empId', empId);
  }

  static Future<String?> fetchempId() async {
    final empId = instance.getString('empId') ?? '';
    if (empId.isEmpty) {
      return "";
    }
    return empId;
  }

  static Future<void> groupName(String groupName) async {
    await instance.setString('groupName', groupName);
  }

  static Future<String?> fetchGroupName() async {
    final groupName = instance.getString('groupName') ?? '';
    if (groupName.isEmpty) {
      return "";
    }
    return groupName;
  }

  static Future<void> locationButton(bool loctionflag) async {
    await instance.setBool('locationflag', loctionflag);
  }

  static Future<bool> fetchLocationButton() async {
    final locationFlag = instance.getBool('locationflag') ?? true;
    return locationFlag;
  }

  static Future<String?> fetchPhoneNumber() async {
    final number = instance.getString('phoneNumber') ?? "";
    if (number.isEmpty) {
      return "";
    }
    return number;
  }
}

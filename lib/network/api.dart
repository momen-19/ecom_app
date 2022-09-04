import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const String baseUrl = 'https://student.valuxapps.com/api';

final dio = Provider<Dio>((ref) => Dio(BaseOptions(baseUrl: baseUrl)));
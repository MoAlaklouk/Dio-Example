import 'package:dio_example/api/dio.dart';
import 'package:get/get.dart';

import '../model/TNews.dart';

class HomeController extends GetxController {
  bool isLoading = false;
  // @override
  // void onInit() {
  //   getData();
  //   super.onInit();
  // }

  TNews? tNews;
  getData() async {
    isLoading = true;
    dynamic result;
    try {
      result = await DioHelper().get(
        'https://newsapi.org/v2/everything?q=tesla&from=2022-06-04&sortBy=publishedAt&apiKey=545215c0085a4510ba607f072682e79c',
      );
      print(result);
    } catch (e) {
      print(e);
    }

    isLoading = false;

    tNews = TNews.fromJson(result.data);
    update();
  }

  // postData() async {
  //   final result = await DioHelper().post(
  //       'https://flutterapi.mogaza.org/public/api/EmpPhone',
  //       data: {'name': 'احمد'});

  //   print(result.toString());
  //   update();
  // }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

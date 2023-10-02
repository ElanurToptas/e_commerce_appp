import 'package:flutter/material.dart';

class Routes {
  static Routes instance = Routes();

  Future<dynamic> pushAndRemoveUntil({required Widget widget, required BuildContext context}) {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => widget), (route) => false);
  }

  Future<dynamic> push({required Widget widget, required BuildContext context}) {
    return Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => widget));
  }
}

/*
pushAndRemoveUntil Metodu:
Bu metod, bir sayfayı açar ve geçmişteki tüm sayfaları kapatır (yani geri tuşuna basıldığında önceki sayfalara dönüş engellenir). İşte bu metodun iç işleyişi:

widget: Açılacak sayfanın widget'ı.
context: Gezinme işlemini başlatmak için kullanılan BuildContext.
 */

/*
push Metodu:
Bu metod, yeni bir sayfayı açar ancak geçmişteki sayfaları kapatmaz. İşte bu metodun iç işleyişi:

widget: Açılacak sayfanın widget'ı.
context: Gezinme işlemini başlatmak için kullanılan BuildContext.
 */

import 'package:healthoholic/const/const.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(icBg), fit: BoxFit.fill)),
    child: child,
  );
}
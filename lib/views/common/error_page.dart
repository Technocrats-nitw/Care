import 'package:flutter_svg/svg.dart';
import 'package:technocrats/constants.dart';

import '../../pkgs.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        SvgPicture.asset(
          "${Constants.imageAsset}bugs.svg",
        ),
        20.heightBox,
        Constants.wentWrong.text.xl.semiBold.makeCentered()
      ]),
    );
  }
}

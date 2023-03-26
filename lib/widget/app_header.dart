import 'package:flutter/material.dart';
import 'package:webinfo_senter/common/text_theme.dart';
import 'package:webinfo_senter/data/model/akun.dart';
import 'package:webinfo_senter/widget/display_photo.dart';

class AppHeader extends StatelessWidget {
  final Akun akun;

  const AppHeader(this.akun, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang',
                style: myTextTheme.bodyLarge,
              ),
              Text(
                akun.nama,
                style: myTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ],
          ),
        ),
        ClipOval(
          child: DisplayPhoto(
            url: akun.urlFotoProfil,
            width: 50.0,
            height: 50.0,
          ),
        ),
      ],
    );
  }
}

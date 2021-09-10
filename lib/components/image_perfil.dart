import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebbook/util/thema.dart';
import 'package:flutter/material.dart';

class ImagemPerfil extends StatelessWidget {
  final String urlImagem;
  final bool viewed;

  const ImagemPerfil({
    Key? key,
    required this.urlImagem,
    this.viewed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: ColorPalette.blueFacebook,
      child: CircleAvatar(
        radius: viewed ? 22 : 17,
        backgroundImage: CachedNetworkImageProvider(urlImagem),
        backgroundColor: Colors.green[200],
      ),
    );
  }
}

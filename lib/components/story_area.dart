import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebbook/components/image_perfil.dart';
import 'package:facebbook/data/dados.dart';
import 'package:facebbook/models/model.dart';
import 'package:facebbook/util/thema.dart';
import 'package:flutter/material.dart';

class StoryArea extends StatelessWidget {
  final User user;
  final List<Story> stories;

  const StoryArea({Key? key, required this.stories, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (contex, indice) {

            if (indice == 0) {

              Story userStory = Story(
                  user: currentUser,
                  urlImage: currentUser.urlImage);

              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: StoryCard(
                    addStory: true, story: userStory
                ),
              );
            }

            Story story = stories[indice - 1];

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: StoryCard(
                story: story,
              ),
            );
          }),
    );
  }
}

class StoryCard extends StatelessWidget {
  final Story story;
  final bool addStory;

  const StoryCard({Key? key, required this.story, this.addStory = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: story.urlImage,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              gradient: ColorPalette.degradeStory,
              borderRadius: BorderRadius.circular(12)),
        ),
        Positioned(
            top: 8,
            left: 8,
            child: addStory
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.add),
                      iconSize: 30,
                      color: ColorPalette.blueFacebook,
                      onPressed: () {},
                    ),
                  )
                : ImagemPerfil(
             urlImagem: story.user.urlImage,
              viewed: story.viewed,
            )
        ),
        Positioned(
          bottom: 8,
            left: 8,
            right: 8,
            child: Text(
                addStory ? "Criar Story" :
                story.user.name, style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
              maxLines: 2,
             overflow: TextOverflow.ellipsis,
        ))
      ],
    );
  }
}

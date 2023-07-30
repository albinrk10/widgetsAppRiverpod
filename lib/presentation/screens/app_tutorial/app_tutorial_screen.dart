import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Cupidatat minim esse ipsum in reprehenderit labore.',
      'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Sit occaecat culpa aliqua labore.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Enim velit proident nisi reprehenderit qui non anim laboris in.',
      'assets/images/3.png')
];

class AppTutorailScreen extends StatelessWidget {
  static const name = 'tutorail_screen';

  const AppTutorailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideDate) => _Slide(
                      title: slideDate.title,
                      caption: slideDate.caption,
                      imagenUrl: slideDate.imageUrl))
                  .toList()),
           Positioned(
            right: 20,
            top: 50,
            child: TextButton(onPressed:() => context.pop(), child: const Text('Salir'))   
            ),   
        ]
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imagenUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imagenUrl});

  @override
  Widget build(BuildContext context) {

    final titleStyle =  Theme.of(context).textTheme.titleLarge;
    final captionStyle =  Theme.of(context).textTheme.titleLarge;

    return Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imagenUrl)),
          const SizedBox(height: 20,),
          Text(title,style: titleStyle,),
          const SizedBox(height: 10,),
          Text(caption ,style: captionStyle,),

        ],
      ),
    ),
    );
  }
}

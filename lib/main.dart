import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevin_portfolio/ui/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Kevin Portfolio',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget separatorAppBar = Row(
      children: [
        const SizedBox(width: 5),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: VerticalDivider(
            thickness: 0.8,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        const SizedBox(width: 5),
      ],
    );

    final Size size = MediaQuery.of(context).size;
    final double appBarHeight = 55.0;

    const List<Map<String, String>> proyects = [
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
      }
    ];

    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color1,
        toolbarHeight: appBarHeight,
        actions: [
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Sobre mi",
                style: TextStyle(color: Colors.red.withOpacity(0.6)),
              ),
            ),
            onPressed: () {},
          ),
          separatorAppBar,
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Proyectos",
                style: TextStyle(color: Colors.red.withOpacity(0.6)),
              ),
            ),
            onPressed: () {},
          ),
          separatorAppBar,
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Experiencia",
                style: TextStyle(color: Colors.red.withOpacity(0.6)),
              ),
            ),
            onPressed: () {},
          ),
          separatorAppBar,
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Contacto",
                style: TextStyle(color: Colors.red.withOpacity(0.6)),
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ListView(
            children: [
              Container(
                height: size.height - appBarHeight,
                width: size.width,
                child: Stack(fit: StackFit.expand, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bienvenidos a mi portfolio",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 32,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Kevin Figueroa",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 55,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Desarrollador FullStack",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        width: size.width / 2.2,
                        child: Image.asset(
                          "imagen_fondo_portfolio.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: size.width,
                child: Column(
                  children: [
                    SectionTitle(
                      size: size,
                      title: "Proyectos",
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    /*Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                              "Estos son algunos de mis proyectos en los que trabajé...",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white.withOpacity(0.8))),
                        ),
                      ),*/

                    Wrap(children: [
                      for (Map proyect in proyects)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: size.height * 0.25,
                            width: size.width / 3.8,
                            child: Row(children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset(
                                    proyect["image"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        proyect["title"],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(proyect["description"],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w300)),
                                      const Spacer(),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: MaterialButton(
                                          onPressed: () async {
                                            await launch(proyect["link"]);
                                          },
                                          color: Colors.red,
                                          child: Text(
                                            "Ir a proyecto",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                    ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key key, @required this.size, @required this.title})
      : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width / 2.8,
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.8)),
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.red,
              thickness: 3,
            ),
          ],
        ),
      ),
    );
  }
}

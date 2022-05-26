import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevin_portfolio/ui/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kevin_portfolio/ui/widgets/custom_stepper/custom_stepper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:html' as html;

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

void downloadFile(String url) {
  html.AnchorElement anchorElement = new html.AnchorElement(href: url);
  anchorElement.download = url;
  anchorElement.click();
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

    final Widget separatorDrawerMobile = Row(
      children: [
        const SizedBox(width: 5),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            thickness: 0.8,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        const SizedBox(width: 5),
      ],
    );
    final Size size = MediaQuery.of(context).size;
    final double appBarHeight = 55.0;

    final PageController proyectsController =
        PageController(viewportFraction: 0.65, initialPage: 1);

    final List<String> usedTecnologies = [
      "flutter",
      "django",
      "python",
      "vueJs",
      "MySQL",
      "MongoDB",
      "PosgresSQL",
      "JavaScript",
      "HTML",
      "CSS",
      "Flask",
      "Firebase",
    ];

    List<Map> steps = [
      {
        "title": "Telecentro",
        "position": "Desarrollador flutter",
        "tasks":
            "Mantenimiento, desarrollo de nuevas funcionalidades en APP Sucursal Virtual",
        //"achievements":
        //    "Logré ayudar en el proceso de refactorización de la app SV",
        "logo": "telecentro-logo.png",
        "subtitle": "3/5/21 - Actualidad"
      },
      {
        "title": "Binit",
        "position": "Desarrollador web",
        "tasks": "Desarrollo web en .NET",
        //"achievements":
        //    "Logré ayudar en el proceso de refactorización de la app SV",
        "logo": "binit-logo.jpeg",
        "subtitle": "5/4/21 - 23/4/21"
      },
      {
        "title": "Freelance Colombia",
        "position": "Desarrollador FullStack / Mobile",
        "tasks":
            "Desarrollo de dos aplicaciones móviles hechas en Flutter y un panel administrativo hecho en vueJs. además contribuí en el desarrollo del backend utilizando Django y postgreSQL",
        //"achievements":
        //    "Logré ayudar en el proceso de refactorización de la app SV",
        "logo": "colombia-logo.jpeg",
        "subtitle": "8/20 - 2/21"
      }
    ];

    const List<Map<String, dynamic>> proyects = [
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": [
          "logo-flutter",
          "logo-dart",
          "logo-firebase",
          "logo-playstore"
        ]
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": ["logo-flutter", "logo-dart", "logo-firebase"]
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": ["logo-flutter", "logo-dart", "logo-firebase"]
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": ["logo-flutter", "logo-dart", "logo-firebase"]
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": ["logo-flutter", "logo-dart", "logo-firebase"]
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": ["logo-flutter", "logo-dart", "logo-firebase"]
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": ["logo-flutter", "logo-dart", "logo-firebase"]
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": ["logo-flutter", "logo-dart", "logo-firebase"]
      },
      {
        "title": "Movies App",
        "description":
            "Aplicación para obtener información de películas, estrenos, trailers, reseñas, buscador y repartos de cada película.",
        "image": "proyecto_1.png",
        "link-demo":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "link-repository":
            "https://play.google.com/store/apps/details?id=app.movie.finder",
        "tecnologies-logo": ["logo-flutter", "logo-dart", "logo-firebase"]
      }
    ];

    final bool isMobileDesign = size.width < 480;

    if (isMobileDesign) {
      return MobileDesign(
        appBarHeight: appBarHeight,
        separatorDrawerMobile: separatorDrawerMobile,
        size: size,
        proyectsController: proyectsController,
        proyects: proyects,
        steps: steps,
      );
    } else {
      return WebDesign(
          appBarHeight: appBarHeight,
          separatorAppBar: separatorAppBar,
          size: size,
          proyectsController: proyectsController,
          proyects: proyects);
    }
  }
}

GlobalKey drawerKey = GlobalKey();

class MobileDesign extends StatelessWidget {
  const MobileDesign({
    Key key,
    @required this.appBarHeight,
    @required this.separatorDrawerMobile,
    @required this.size,
    @required this.proyectsController,
    @required this.proyects,
    @required this.steps,
  }) : super(key: key);

  final double appBarHeight;
  final Widget separatorDrawerMobile;
  final Size size;
  final steps;
  final PageController proyectsController;
  final List<Map<String, dynamic>> proyects;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color1,
      ),
      drawer: Drawer(
        key: drawerKey,
        child: Column(
          children: [
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
            separatorDrawerMobile,
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
            separatorDrawerMobile,
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
            separatorDrawerMobile,
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
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: color1,
            child: Opacity(
              opacity: 0.15,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // NARANJA
                  Positioned(
                      right: -size.width * 0.1,
                      top: -size.height * 0.1,
                      child: CircleAvatar(
                          backgroundColor: Colors.primaries[0], radius: 90)),

                  //ROJO
                  Positioned(
                    top: size.height / 3,
                    left: -size.width * 0.15,
                    child: CircleAvatar(
                        backgroundColor: Colors.primaries[1], radius: 70),
                  ),
                  Positioned(
                      top: size.height * 0.48,
                      right: -size.width * 0.13,
                      child: CircleAvatar(
                          backgroundColor: Colors.primaries[2], radius: 80)),
                  // Violeta
                  Positioned(
                      top: size.height * 0.7,
                      left: -size.width * 0.1,
                      child: CircleAvatar(
                          backgroundColor: Colors.primaries[3], radius: 110)),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: size.height * 0.6,
                      width: size.width,
                      child: Center(
                        child: Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            runSpacing: 45,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /*
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
                            */
                                    FittedBox(
                                      child: Text(
                                        "Kevin Figueroa",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 55,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    FittedBox(
                                      child: Row(
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
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 40),
                              Align(
                                alignment: Alignment.center,
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
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.55,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: size,
                            title: "Proyectos",
                          ),
                          const SizedBox(height: 40),
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

                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: CarouselSlider.builder(
                                  options: CarouselOptions(
                                    viewportFraction: 0.77,
                                    initialPage: 1,
                                    enableInfiniteScroll: false,
                                    reverse: false,
                                    autoPlay: false,
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                  ),
                                  itemCount: proyects.length,
                                  itemBuilder: (context, index, _) {
                                    Map proyect = proyects[index];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: color2,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Image.asset(
                                                proyect["image"],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    FittedBox(
                                                      child: Text(
                                                        proyect["title"],
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Expanded(
                                                      flex: 2,
                                                      child: AutoSizeText(
                                                        proyect["description"],
                                                        minFontSize: 2,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white60,
                                                          letterSpacing: 1.1,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Expanded(
                                                      child: Column(
                                                        children: [
                                                          Expanded(
                                                            child: TextButton(
                                                              onPressed:
                                                                  () async {
                                                                await launch(
                                                                    proyect[
                                                                        "link-repository"]);
                                                              },
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Icon(
                                                                      Icons
                                                                          .code_outlined,
                                                                      color: Colors
                                                                          .black87,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "Ir a código",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 5),
                                                          Expanded(
                                                            child: TextButton(
                                                              onPressed:
                                                                  () async {
                                                                await launch(
                                                                    proyect[
                                                                        "link-demo"]);
                                                              },
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Icon(
                                                                      Icons
                                                                          .visibility_rounded,
                                                                      color: Colors
                                                                          .black87,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "Ir a demo",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 15),
                                                    Expanded(
                                                      child: FittedBox(
                                                        child: Wrap(
                                                          children: [
                                                            for (String tecnologyLogo
                                                                in proyect[
                                                                    "tecnologies-logo"])
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        4.0),
                                                                child:
                                                                    CircleAvatar(
                                                                        backgroundColor:
                                                                            Colors
                                                                                .white,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(4.0),
                                                                          child:
                                                                              Image.asset(tecnologyLogo + ".png"),
                                                                        )),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          const SizedBox(height: 15),
                          SmoothPageIndicator(
                              controller: proyectsController, // PageController
                              count: proyects.length,
                              effect: ScrollingDotsEffect(
                                  activeDotColor: Colors.red,
                                  dotColor: color2), // your preferred effect
                              onDotClicked: (index) {})
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: size.width,
                      height: size.height * 0.7,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: size,
                            title: "Experiencia Laboral",
                          ),
                          const SizedBox(height: 40),
                          Expanded(
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: CustomStepper(
                                  physics: NeverScrollableScrollPhysics(),
                                  controlsBuilder: (BuildContext context,
                                      {VoidCallback onStepContinue,
                                      VoidCallback onStepCancel}) {
                                    return const SizedBox.shrink();
                                  },
                                  customSteps: [
                                    for (Map work in steps)
                                      CustomStep(
                                        stateIcon: work["logo"],
                                        state: CustomStepState.disabled,
                                        content: Container(
                                          child: Row(children: [
                                            Expanded(
                                              child: Text(
                                                work["tasks"],
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ),
                                          ]),
                                        ),
                                        title: Text(
                                          work["title"],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        subtitle: Text(work["subtitle"],
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w200)),
                                        isActive: true,
                                      )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: size.width,
                      height: size.height * 0.45,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: size,
                            title: "Sobre mí",
                          ),
                          const SizedBox(height: 40),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: AutoSizeText(
                              "Hola! \n\nHace unos 3 años me dedico a programar, tengo experiencia desarrollando software en varios lenguajes como Python / Javascript.\n\nMe considero alguien con mucha predisposición para trabajar, responsable y eficiente cuando se me otorga una tarea, me gusta tener una agradable relación con las personas y sobre todo ser útil en el área que me corresponde.\n\nSiempre analizo el problema que se me presenta y busco la mejor solución, además de mi formación académica estoy siempre en constante aprendizaje dentro del desarrollo de software.\n\nKevin F.",
                              textAlign: TextAlign.center,
                              minFontSize: 2,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                  letterSpacing: 1.1,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: size.width,
                      height: size.height * 0.28,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: size,
                            title: "Certificaciones",
                          ),
                          const SizedBox(height: 40),
                          Expanded(
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            )),
                                        child: Image.asset(
                                          "buenos-aires-logo.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Text(
                                            "CODO a CODO 2019",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30),
                                            child: Divider(
                                                height: 1, color: Colors.grey),
                                          ),
                                          const SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: MaterialButton(
                                              height: 50,
                                              minWidth: size.width,
                                              onPressed: () {
                                                final String url =
                                                    "codo-a-codo.pdf";
                                                downloadFile(url);
                                              },
                                              color: Colors.blueAccent,
                                              child: Text(
                                                "DESCARGAR",
                                                style: TextStyle(
                                                    color: Colors.white60,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
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
            FittedBox(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8)),
              ),
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

class WebDesign extends StatelessWidget {
  const WebDesign({
    Key key,
    @required this.appBarHeight,
    @required this.separatorAppBar,
    @required this.size,
    @required this.proyectsController,
    @required this.proyects,
  }) : super(key: key);

  final double appBarHeight;
  final Widget separatorAppBar;
  final Size size;
  final PageController proyectsController;
  final List<Map<String, dynamic>> proyects;

  @override
  Widget build(BuildContext context) {
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
                        /*
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
                        */
                        FittedBox(
                          child: Text(
                            "Kevin Figueroa",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 55,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 12),
                        FittedBox(
                          child: Row(
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
                height: size.height * 0.5,
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

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                            controller: proyectsController,
                            scrollDirection: Axis.horizontal,
                            itemCount: proyects.length,
                            itemBuilder: (context, index) {
                              Map proyect = proyects[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: color2,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  width: size.width * 0.2,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Image.asset(
                                            proyect["image"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                proyect["title"],
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                proyect["description"],
                                                style: TextStyle(
                                                  color: Colors.white60,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              Wrap(
                                                children: [
                                                  TextButton(
                                                    onPressed: () async {
                                                      await launch(proyect[
                                                          "link-repository"]);
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Icon(
                                                          Icons.code_outlined,
                                                          color: Colors.black87,
                                                        ),
                                                        Text(
                                                          "Ir a código",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  TextButton(
                                                    onPressed: () async {
                                                      await launch(
                                                          proyect["link-demo"]);
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .visibility_rounded,
                                                          color: Colors.black87,
                                                        ),
                                                        Text(
                                                          "Ir a demo",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Wrap(
                                                children: [
                                                  for (String tecnologyLogo
                                                      in proyect[
                                                          "tecnologies-logo"])
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4.0),
                                                      child: CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(4.0),
                                                            child: Image.asset(
                                                                tecnologyLogo +
                                                                    ".png"),
                                                          )),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SmoothPageIndicator(
                        controller: proyectsController, // PageController
                        count: proyects.length,
                        effect: ScrollingDotsEffect(
                            activeDotColor: Colors.red,
                            dotColor: color2), // your preferred effect
                        onDotClicked: (index) {})
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

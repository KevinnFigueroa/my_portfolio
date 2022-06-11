import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevin_portfolio/ui/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kevin_portfolio/ui/widgets/custom_stepper/custom_stepper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:html' as html;
import 'dart:convert';
import 'package:http/http.dart';

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
      "Flutter",
      "Django",
      "Python",
      "VueJs",
      "MySQL",
      "MongoDB",
      "PosgreSQL",
      "JavaScript",
      "HTML",
      "CSS",
      "Flask",
      "Firebase",
      "NodeJs",
      "Google Cloud Platform",
      "Google Play",
      "Apple Store",
    ];

    List<Map> steps = [
      {
        "title": "Telecentro",
        "position": "Desarrollador flutter",
        "tasks":
            "Deploys, Mantenimiento y desarrollo de nuevas funcionalidades en APP Sucursal Virtual",
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
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
        "tecnologies": [
          {
            "logo": "logo-flutter",
            "tecnology": "Flutter",
          },
          {
            "logo": "logo-dart",
            "tecnology": "Dart",
          },
          {
            "logo": "logo-firebase",
            "tecnology": "Firebase",
          },
          {
            "logo": "logo-playstore",
            "tecnology": "Playstore",
          },
        ]
      }
    ];

    return MobileDesign(
      appBarHeight: appBarHeight,
      separatorDrawerMobile: separatorDrawerMobile,
      size: size,
      proyectsController: proyectsController,
      proyects: proyects,
      steps: steps,
      usedTecnologies: usedTecnologies,
    );
  }
}

class MobileDesign extends StatefulWidget {
  MobileDesign({
    Key key,
    @required this.appBarHeight,
    @required this.separatorDrawerMobile,
    @required this.size,
    @required this.proyectsController,
    @required this.proyects,
    @required this.steps,
    @required this.usedTecnologies,
  }) : super(key: key);

  final double appBarHeight;
  final Widget separatorDrawerMobile;
  final Size size;
  final steps;
  final PageController proyectsController;
  final List<Map<String, dynamic>> proyects;
  final List<String> usedTecnologies;

  @override
  _MobileDesignState createState() => _MobileDesignState();
}

class _MobileDesignState extends State<MobileDesign> {
  final _formNameKey = GlobalKey<FormState>();

  final _formSuggestionKey = GlobalKey<FormState>();

  String username;

  String suggestion;

  bool _isLoading = false;

  sendEmail() async {
    try {
      // Mi backend
      final uri = Uri.parse('https://nodejs-send-email.vercel.app/send_email');
      final headers = {'Content-Type': 'application/json'};
      final String subject = "Nuevo contacto desde portafolio :)";

      Map<String, dynamic> body = {
        'name': username,
        'content': suggestion,
        "subject": subject
      };

      String jsonBody = json.encode(body);
      final encoding = Encoding.getByName('utf-8');

      Response response = await post(
        uri,
        headers: headers,
        body: jsonBody,
        encoding: encoding,
      );

      showMessage("Tu mensaje ha sido enviado con éxito!");
    } catch (error) {
      print("Hubo un error $error");
      setState(() {
        _isLoading = false;
      });
    }
  }

  void showMessage(String message) {
    print(widget.size.width);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(
            horizontal: widget.size.width * 0.1, vertical: 30),
        padding: EdgeInsets.all(6.0),
        backgroundColor: Colors.lightBlueAccent,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 25),
            FittedBox(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 25),
            Expanded(
              child: AutoSizeText(
                message,
                maxLines: 1,
                minFontSize: 6,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(width: 25),
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    final bool isMobileDesign = widget.size.width < 480;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color1,
      ),
      /*
      drawer: Drawer(
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
            widget.separatorDrawerMobile,
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
            widget.separatorDrawerMobile,
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
            widget.separatorDrawerMobile,
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
      */
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
                    right: -widget.size.width * 0.1,
                    top: -widget.size.height * 0.1,
                    child: CircleAvatar(
                        backgroundColor: Colors.primaries[0],
                        radius:
                            ((widget.size.width + widget.size.height) / 12)),
                  ),
                  //ROJO
                  Positioned(
                    top: widget.size.height / 5,
                    left: -widget.size.width * 0.15,
                    child: CircleAvatar(
                        backgroundColor: Colors.primaries[1],
                        radius:
                            ((widget.size.width + widget.size.height) / 15)),
                  ),
                  Positioned(
                      top: widget.size.height * 0.48,
                      right: -widget.size.width * 0.13,
                      child: CircleAvatar(
                          backgroundColor: Colors.primaries[2],
                          radius:
                              ((widget.size.width + widget.size.height) / 13))),
                  // Violeta
                  Positioned(
                      top: widget.size.height * 0.7,
                      left: -widget.size.width * 0.1,
                      child: CircleAvatar(
                          backgroundColor: Colors.primaries[3],
                          radius:
                              ((widget.size.width + widget.size.height) / 10))),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: widget.size.height * 0.6,
                      width: widget.size.width,
                      child: Center(
                        child: Presentation(
                          size: widget.size,
                          isMobileDesign: isMobileDesign,
                        ),
                      ),
                    ),
                    Container(
                      width: widget.size.width,
                      height: widget.size.height * 0.57,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: widget.size,
                            title: "Proyectos",
                          ),
                          const SizedBox(height: 40),
                          CardProyectCarrousel(
                            proyects: widget.proyects,
                            size: widget.size,
                            isMobileDesign: isMobileDesign,
                          ),
                        ],
                      ),
                    ),
                    /*
                    const SizedBox(height: 30),
                    Container(
                      height: widget.size.height * 0.15,
                      width: widget.size.width,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (String tecnology in widget.usedTecnologies)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.primaries[widget
                                        .usedTecnologies
                                        .indexOf(tecnology)],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: AutoSizeText(
                                    tecnology,
                                    minFontSize: 2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    */
                    const SizedBox(height: 40),
                    Container(
                      width: widget.size.width,
                      height: widget.size.height * 0.6,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: widget.size,
                            title: "Experiencia Laboral",
                          ),
                          const SizedBox(height: 40),
                          Expanded(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CustomStepper(
                                    physics: NeverScrollableScrollPhysics(),
                                    controlsBuilder: (BuildContext context,
                                        {VoidCallback onStepContinue,
                                        VoidCallback onStepCancel}) {
                                      return const SizedBox.shrink();
                                    },
                                    customSteps: [
                                      for (Map work in widget.steps)
                                        CustomStep(
                                          stateIcon: work["logo"],
                                          state: CustomStepState.disabled,
                                          content: Container(
                                            child: Row(children: [
                                              Expanded(
                                                child: AutoSizeText(
                                                  work["tasks"],
                                                  minFontSize: 8,
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ),
                                            ]),
                                          ),
                                          title: AutoSizeText(
                                            work["title"],
                                            minFontSize: 10,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          subtitle: AutoSizeText(
                                              work["subtitle"],
                                              minFontSize: 6,
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w200)),
                                          isActive: true,
                                        )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: widget.size.width,
                      height: widget.size.height * 0.35,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: widget.size,
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
                    const SizedBox(height: 40),
                    Container(
                      width: widget.size.width,
                      height: widget.size.height * 0.3,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: widget.size,
                            title: "Certificaciones",
                          ),
                          const SizedBox(height: 40),
                          Expanded(
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Container(
                                      height: widget.size.height * 0.25,
                                      width: widget.size.width * 0.25,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: ExactAssetImage(
                                            "ba-logo.jpeg",
                                          ),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    )),
                                    const SizedBox(height: 20),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          FittedBox(
                                            child: AutoSizeText(
                                              "CODO a CODO 2019",
                                              minFontSize: 2,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: MaterialButton(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                minWidth:
                                                    widget.size.width / 2.5,
                                                onPressed: () {
                                                  final String url =
                                                      "codo-a-codo.pdf";
                                                  downloadFile(url);
                                                },
                                                color: Colors.blueAccent,
                                                child: FittedBox(
                                                  child: AutoSizeText(
                                                    "DESCARGAR",
                                                    minFontSize: 2,
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
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
                    const SizedBox(height: 40),
                    Container(
                      width: widget.size.width,
                      height: widget.size.height * 0.5,
                      child: Column(
                        children: [
                          SectionTitle(
                            size: widget.size,
                            title: "Contáctame",
                          ),
                          const SizedBox(height: 40),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: widget.size.width * 0.15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Form(
                                          key: _formNameKey,
                                          child: TextFormField(
                                            onChanged: (value) {
                                              username = value;
                                            },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Por favor ingrese un nombre';
                                              }
                                              return null;
                                            },
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              labelText: "Nombre",
                                              suffixIcon: Icon(
                                                Icons.person,
                                                color: Colors.white,
                                              ),
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 17),
                                              labelStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Expanded(
                                          child: Form(
                                            key: _formSuggestionKey,
                                            child: TextFormField(
                                              expands: true,
                                              maxLines: null,
                                              onChanged: (value) {
                                                suggestion = value;
                                              },
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor ingrese texto';
                                                }
                                                return null;
                                              },
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                              decoration: InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width: 1,
                                                    style: BorderStyle.solid,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width: 1,
                                                    style: BorderStyle.solid,
                                                  ),
                                                ),
                                                disabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width: 1,
                                                    style: BorderStyle.solid,
                                                  ),
                                                ),
                                                labelText: "Contacto",
                                                suffixIcon: Icon(
                                                  Icons.comment,
                                                  color: Colors.white,
                                                ),
                                                hintStyle: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 17),
                                                labelStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  MaterialButton(
                                    onPressed: () async {
                                      if (_isLoading) return;
                                      if (_formNameKey.currentState
                                              .validate() &&
                                          _formSuggestionKey.currentState
                                              .validate()) {
                                        setState(() {
                                          _isLoading = true;
                                        });

                                        await sendEmail();

                                        setState(() {
                                          _isLoading = false;
                                        });
                                      } else {
                                        print("Datos no validados");
                                        return;
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Spacer(),
                                        FittedBox(
                                          child: AutoSizeText(
                                            "Enviar",
                                            minFontSize: 2,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        _isLoading
                                            ? Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 15.0),
                                                child: SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child:
                                                      CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                    Colors.white,
                                                  )),
                                                ),
                                              )
                                            : Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 15.0),
                                                child: Icon(
                                                  Icons.near_me,
                                                  color: Colors.white,
                                                ),
                                              ),
                                      ],
                                    ),
                                    color: Colors.red,
                                    height: widget.size.height * 0.07,
                                    minWidth: widget.size.width,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
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

class CardProyectCarrousel extends StatefulWidget {
  CardProyectCarrousel({
    Key key,
    @required this.proyects,
    @required this.size,
    @required this.isMobileDesign,
  }) : super(key: key);

  final bool isMobileDesign;
  final Size size;
  final List proyects;

  @override
  _CardProyectCarrouselState createState() => _CardProyectCarrouselState();
}

class _CardProyectCarrouselState extends State<CardProyectCarrousel> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    PageController proyectsController = PageController(
        viewportFraction: widget.isMobileDesign ? 0.7 : 0.4, initialPage: 1);
    print(proyectsController.viewportFraction);
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: PageView.builder(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  controller: proyectsController,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.proyects.length,
                  itemBuilder: (context, index) {
                    Map proyect = widget.proyects[index];
                    var _scale = _currentIndex == index ? 1.0 : 0.8;

                    return TweenAnimationBuilder(
                      tween: Tween(begin: _scale, end: _scale),
                      duration: const Duration(milliseconds: 350),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: child,
                        );
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: color2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    proyect["image"],
                                    fit: BoxFit.cover,
                                    height: widget.size.height,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FittedBox(
                                        child: AutoSizeText(
                                          proyect["title"],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 27,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Expanded(
                                        flex: 2,
                                        child: AutoSizeText(
                                          proyect["description"],
                                          minFontSize: 2,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white60,
                                            letterSpacing: 1.1,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: MaterialButton(
                                                color: color3,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                onPressed: () async {
                                                  await launch(proyect[
                                                      "link-repository"]);
                                                },
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.code_outlined,
                                                      color: Colors
                                                          .lightBlueAccent,
                                                    ),
                                                    Expanded(
                                                      child: Center(
                                                        child: AutoSizeText(
                                                          "Ir a código",
                                                          minFontSize: 2,
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .lightBlueAccent,
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Expanded(
                                              child: MaterialButton(
                                                color: color3,
                                                onPressed: () async {
                                                  await launch(
                                                      proyect["link-demo"]);
                                                },
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.visibility_rounded,
                                                      color: Colors
                                                          .lightBlueAccent,
                                                    ),
                                                    Expanded(
                                                      child: Center(
                                                        child: AutoSizeText(
                                                          "Ir a demo",
                                                          minFontSize: 2,
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .lightBlueAccent,
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
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
                                      const SizedBox(height: 15),
                                      Expanded(
                                        child: FittedBox(
                                          child: Wrap(
                                            children: [
                                              for (Map tecnology
                                                  in proyect["tecnologies"])
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 4),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4.0),
                                                        child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors.white,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(6.0),
                                                              child: Image.asset(
                                                                  tecnology[
                                                                          "logo"] +
                                                                      ".png"),
                                                            )),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      AutoSizeText(
                                                        tecnology["tecnology"],
                                                        minFontSize: 2,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                      ),
                                                    ],
                                                  ),
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
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(height: 15),
          SmoothPageIndicator(
              controller: proyectsController, // PageController
              count: widget.proyects.length,
              effect: ScrollingDotsEffect(
                  activeDotColor: Colors.red,
                  dotColor: color2), // your preferred effect
              onDotClicked: (index) {}),
        ],
      ),
    );
  }
}

class Presentation extends StatelessWidget {
  const Presentation({
    Key key,
    @required this.size,
    @required this.isMobileDesign,
  }) : super(key: key);

  final Size size;
  final bool isMobileDesign;

  @override
  Widget build(BuildContext context) {
    return isMobileDesign
        ? Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 45,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      child: Container(
                        height: 65,
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            DefaultTextStyle(
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  RotateAnimatedText('Desarrollador Flutter',
                                      duration: const Duration(seconds: 4)),
                                  RotateAnimatedText('Desarrollador FullStack',
                                      duration: const Duration(seconds: 4)),
                                ],
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ),
                          ],
                        ),
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
              Container(
                height: size.height * 0.1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: MaterialButton(
                            color: Color.fromRGBO(14, 118, 168, 1),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FittedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText("Linkedin",
                                        minFontSize: 2,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800)),
                                    const SizedBox(width: 10),
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 15,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            child: Image.asset(
                                              "logo-linkedin.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            onPressed: () {
                              launch(
                                  "https://www.linkedin.com/in/kevin-david-figueroa-784113183/");
                            }),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: MaterialButton(
                            color: Color.fromRGBO(23, 21, 21, 1),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FittedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText("Github",
                                        minFontSize: 2,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800)),
                                    const SizedBox(width: 10),
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 15,
                                          child: Image.asset(
                                            "logo-github.png",
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            onPressed: () {
                              launch("https://github.com/KevinnFigueroa");
                            }),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      FittedBox(
                        child: Text(
                          "Kevin Figueroa",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 70,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 12),
                      FittedBox(
                          child: Container(
                        height: 65,
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            DefaultTextStyle(
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  RotateAnimatedText(
                                    'Desarrollador Flutter',
                                    duration: const Duration(seconds: 4),
                                  ),
                                  RotateAnimatedText(
                                    'Desarrollador FullStack',
                                    duration: const Duration(seconds: 4),
                                  ),
                                ],
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                      const Spacer(),
                      Container(
                        width: size.width / 3.5,
                        child: Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                  color: Color.fromRGBO(14, 118, 168, 1),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: FittedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AutoSizeText("Linkedin",
                                              minFontSize: 2,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w800)),
                                          const SizedBox(width: 10),
                                          CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 20,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.transparent,
                                                radius: 15,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(50)),
                                                  child: Image.asset(
                                                    "logo-linkedin.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    launch(
                                        "https://www.linkedin.com/in/kevin-david-figueroa-784113183/");
                                  }),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: MaterialButton(
                                  color: Color.fromRGBO(23, 21, 21, 1),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: FittedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AutoSizeText("Github",
                                              minFontSize: 2,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w800)),
                                          const SizedBox(width: 10),
                                          CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 20,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.transparent,
                                                radius: 15,
                                                child: Image.asset(
                                                  "logo-github.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    launch("https://github.com/KevinnFigueroa");
                                  }),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 0),
              Expanded(
                child: Align(
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
              ),
            ],
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
                    fontSize: 30,
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

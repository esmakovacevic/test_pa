import 'package:flutter/material.dart';
import 'package:product_arena/main.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Log Out'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('Are you sure you want log out from console?'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Dismiss the Dialog
                          },
                        ),
                        FlatButton(
                          child: Text('Yes'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginDemo()),
                            ); // Navigate to login
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.logout_outlined))
        ],
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 120,
              width: 140,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Full Stack Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Outfit',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Razvoj softwera je kao slaganje lego kockica, putem koda se prave programi koji izvršavaju određenu radnju te služe svrsi. Cilj programiranja nije samo finalizacija zadataka, cilj je da napravljeni kod ima smisao i da izvršava ono što mu je svrha!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Outfit',
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    child: const Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Flutter Mobile App + Node.js Backend',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Outfit',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Veoma koristan kurs kako razviti Flutter aplikaciju sa backendom napisanim u Node.js-u. Iako ćemo na tromjesečnoj praksi koristiti drugačiji način spajanja te ćemo koristiti AWS cloud, ovo može biti super korisno. Obavezno je da se ovaj kurs prođe čitav te da se ista aplikacija razvije.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Outfit',
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 255, 102, 10),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        var url = Uri.parse(
                            "https://www.youtube.com/watch?v=ylJz7N-dv1E");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text(
                        'Pogledaj',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'How to speak the language of Application Architecture',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Outfit',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Razvoj softwera nije samo slaganje kockica, već zahtijeva planiranje načina slaganja tih kockica. Kako bi bio/bila u stanju da razumiješ koncepte kako se ovo radi, potrebno je da barem pogledaš ovaj video. Ovdje možeš pronaći veoma dobar sadržaj. Ako budeš imao/la vremena, toplo preporučujemo da pogledaš još sličnih videa na ovu temu!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Outfit',
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 255, 102, 10),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        var url = Uri.parse(
                            "https://www.youtube.com/watch?v=kGYGEcdPE2U");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text(
                        'Pogledaj',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              )

              //  child: FlatButton(
              //    onPressed: () {
              //    Navigator.pop(context);
              //  },
              // child: const Text(
              //  'Welcome',
              //  style: TextStyle(color: Colors.white, fontSize: 25),
              //  ),
              // ),
              ),
        ),
      ),
    );
  }
}

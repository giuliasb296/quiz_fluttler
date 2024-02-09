import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter/quizz.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Novais',
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: const [Icon(Icons.search)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Desafie \nsua mente!',
                style: GoogleFonts.poppins(
                    fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,), //text
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                
                //Todos
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Todos',
                    style: GoogleFonts.poppins(),
                  ),
                ),

                //Pata
                Container(
                  width: 150,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/pata.png', width: 50, height: 50),
                      Text(
                        'Animais',
                        style: GoogleFonts.poppins(color: Colors.white),
                      )
                    ],
                  ),
                ),

                //Astrologia
                Container(
                  width: 150,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/astrologia.png',
                          width: 50, height: 50),
                      Text(
                        'Astrologia',
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                ),

                //Tecnologia
                Container(
                  width: 150,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/tecnologia.png',
                          width: 50, height: 50),
                      Text(
                        'Tecnologia',
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Card Golfinho
          Container(
            margin: const EdgeInsets.all(16),
            height: 300,
            width: double.infinity,
            child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Quiz())),
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  children: [
                    Image.asset('assets/golfinho.png', width: 150, height: 150),
                    Text('Mostre seu conhecimento \nmarítmo',
                        style: GoogleFonts.indieFlower(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    ListTile(
                      leading: const Icon(Icons.star, color: Colors.amberAccent),
                      title: Text(
                        '1500 pontos',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                
                //Card Sapo
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 100,
                  width: 230,
                  child: Card(
                    color: Colors.green[50],
                    elevation: 4,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/sapo.png',
                              width: 70, height: 70),
                        ),
                        Text(
                          'Mostre seu conhecimento \nterrestre',
                          style: GoogleFonts.indieFlower(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        ListTile(
                          leading:
                              const Icon(Icons.star, color: Colors.amberAccent),
                          title: Text(
                            '1500 pontos',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                ), 
                
                //Card Aves
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 100,
                  width: 230,
                  child: Card(
                    color: Colors.blueGrey[50],
                    elevation: 4,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/ave.png',
                              width: 70, height: 70),
                        ),
                        Text(
                          'Mostre seu conhecimento \naéreo',
                          style: GoogleFonts.indieFlower(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        ListTile(
                          leading:
                              const Icon(Icons.star, color: Colors.amberAccent),
                          title: Text(
                            '1200 pontos',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}

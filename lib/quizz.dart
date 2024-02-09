import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Quiz Marítmo', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
        ),
      body: Column(
        children: [
          Container(
            color: Colors.deepPurple[50],
            width: double.infinity,
            height: 400,
          ),
          Wrap(
            children:[meuBtn('d'), meuBtn('a'), meuBtn('b'), meuBtn('c')],
          )
        ],
      )    );
  }
}

Widget meuBtn(String resposta, VoidCallback onPressed) => Container(
  margin: const EdgeInsets.all(16),
  width: 160,
  child: ElevatedButton(
    onPressed: () {},
    child: Text(resposta),
  ),
  );
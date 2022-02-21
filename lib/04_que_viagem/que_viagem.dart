import 'dart:ui';

import 'package:flutter/material.dart';

class QueViagem extends StatefulWidget {
  const QueViagem({Key? key}) : super(key: key);

  @override
  State<QueViagem> createState() => _QueViagemState();
}

class _QueViagemState extends State<QueViagem> {
  Color corBase = Colors.blue.shade800;
  final titulos = [
    "Ponte Dom Luís I",
    "Torre Dos Clérigos",
    "Livraria Lello",
  ];

  final imagens = [
    "https://i.imgur.com/JCelTKF.jpg",
    "https://i.imgur.com/MGuco6w.jpg",
    "https://i.imgur.com/4iml7h5.jpg",
  ];

  final textos = [
    "A Ponte Dom Luís, é uma ponte em estrutura metálica com dois tabuleiros, construída entre os anos 1881 e 1886, ligando as cidades do Porto e Vila Nova de Gaia separadas pelo rio Douro.",
    "A Igreja e Torre dos Clérigos, construída entre 1732 e 1763, é um notável conjunto arquitetônico situado na cidade ddo Porto, sendo considerado um cartão-postal da cidade e integra três elementos principais: a Igreja dos Clérigos, a Torre dos Clérigos e a Casa da Irmandade.",
    "A livraria Lello situa-se no Centro Histórico da cidade do Porto. Em virtude do seu ímpar valor histórico e artístico, a Lello tem sido reconhecida como uma das mais belas livrarias do mundo por diversas personalidades e entidades. Também considera-se que o lugar inspirou a autora J.K. Rowling para criar a famosa série Harry Potter."
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Que Viagem",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Que Viagem! Turismo",
              style: TextStyle(
                  fontSize: 28, color: corBase, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.amber.shade600,
            bottom: TabBar(
              indicatorColor: corBase,
              tabs: [
                setTab("VOOS", Icons.flight_rounded),
                setTab("PASSEIOS", Icons.shopping_bag),
                setTab("MAPA", Icons.explore_rounded),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              setVoo(),
              setPasseio(),
              setMapa(),
            ],
          ),
        ),
      ),
    );
  }

  Tab setTab(String titulo, IconData icone) {
    return Tab(
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: 18,
          color: corBase,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: Icon(
        icone,
        size: 36,
        color: corBase,
      ),
    );
  }

  Container setVoo() {
    return Container(
      padding: const EdgeInsets.all(45),
      child: Column(
        children: [
          const Text(
            "PARTIDA",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text("Abril 26, 2022"),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    "GRU",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Garullos, Brazil"),
                ],
              ),

              //Gira o avião
              const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.flight_rounded,
                  size: 48,
                ),
              ),

              Column(
                children: const [
                  Text(
                    "OPO",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Porto, Portugal"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  ListView setPasseio() {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pontos Turísticos do Porto",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //Ponte
              const SizedBox(
                height: 25,
              ),
              Text(
                titulos[0],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(imagens[0]),
              const SizedBox(
                height: 5,
              ),
              Text(
                textos[0],
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),

              //Torre
              const SizedBox(
                height: 25,
              ),
              Text(
                titulos[1],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(imagens[1]),
              const SizedBox(
                height: 5,
              ),
              Text(
                textos[1],
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),

              //Livraria
              const SizedBox(
                height: 25,
              ),
              Text(
                titulos[2],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(imagens[2]),
              const SizedBox(
                height: 5,
              ),
              Text(
                textos[2],
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Image setMapa() {
    return Image.network("https://i.imgur.com/qVbQ7ho.png");
  }
}

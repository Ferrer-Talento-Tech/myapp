// Suggested code may be subject to a license. Learn more: ~LicenseLog:1921968514.
import 'package:flutter/material.dart';

class JogoDaVelha extends StatefulWidget {
  const JogoDaVelha({super.key});

  @override
  State<JogoDaVelha> createState() => _JogoDaVelhaState();
}

class _JogoDaVelhaState extends State<JogoDaVelha> {
  List<String> _tabuleiro = List.filled(9, '');
  String _jogador = 'X';
  String _mensagem = '';

  void _trocarJogador() {
    setState(() {
      _jogador = _jogador == 'X' ? '0' : 'X';
    });
  }

  bool _verificaVencedor(String jogador) {
    const posicoesVencedoras = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];
    for (var posicoes in posicoesVencedoras) {
      if (_tabuleiro[posicoes[0]] == jogador &&
          _tabuleiro[posicoes[1]] == jogador &&
          _tabuleiro[posicoes[2]] == jogador) {
        //     _mostreDialogovencedor(jogador);
        return true;
      }
    }
    // if (!_tabuleiro.contains('')) {
    //  _mostreDialogoVencedor('Empate);
    // return true;
    // }
    return false
  }

      void _jogador(int index) {
    if (_tabuleiro[index] == '' && _mensagem == '') {
      setState(() {
        _tabuleiro[index] = _jogador;
        if (!_verificaVencedor(_jogador)) {
          _trocaJogador();
        //  if (_contraMaquina && _jogador == '0') {
        //    _jogadaComputador();
        //  }
      }
    });
  }
}
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.yellow[100],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              _tabuleiro[index],
              style: const TextStyle(fontSize: 40.0)),
          ),
        ),
      );
    },
  );
  }
}

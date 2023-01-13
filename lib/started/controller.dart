import 'package:flutter/material.dart';
import 'package:vava_app/started/store/carrousel_store.dart';

class CarouselController {
  final store = CarrouselStore();

  List<Map<String, dynamic>> lista = [
    {
      'id': 0,
      'text':
          "Valorant é um jogo eletrônico multijogador gratuito para jogar de tiro em primeira pessoa desenvolvido e publicado pela Riot Games. É o primeiro jogo do gênero desenvolvido pela empresa, sendo anunciado pela primeira vez com o codinome Project A em outubro de 2019, em um evento de comemoração de 10 anos de League of Legends Foi lançado em 2 de junho de 2020 para Microsoft Windows.",
      'image':
          'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt881609ccc5207499/60b1901d3aac347374b5d9d1/VALORANT_YR1_ArticleHero_16_9.jpg'
    },
    {
      'id': 1,
      'text':
          "Duas equipes de cinco jogam uma contra a outra, e os jogadores assumem o papel de agentes com habilidades únicas. No modo de jogo principal, a equipe atacante tem uma bomba, chamada Spike, que eles precisam plantar em um local. Se a equipe atacante proteger com sucesso a bomba e ela detonar, eles ganharão um ponto. ",
      'image':
          'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt86cd8572a30911aa/60cbfdb00ece0255888d895a/V_Ep_03_REFLECTION_Article-Header.jpg'
    },
    {
      'id': 2,
      'text':
          " Se a equipe defensora desarmar com sucesso a bomba ou o cronômetro de 100 segundos da rodada expirar, a equipe defensora receberá um ponto. Eliminar todos os membros da equipe adversária também ganha uma rodada. A primeira equipe a vencer o melhor de 24 rodadas vence a partida.[2] O jogo também promove um servidor com tick rate de 128, que garante uma jogabilidade suave e baixo ping com uma expansão global de data centers.",
      'image':
          'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt977c863db1ec1eb8/636f25655834861044c1c48f/VALORANT_2022_E5-3_AgentArticle_1920x1080_MB01.jpg?auto=webp&disable=upscale&height=504'
    },
  ];
}

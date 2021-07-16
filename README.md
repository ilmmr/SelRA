# SeiRA
## Projeto Inserido na Unidade Curricular Gramáticas na Compreensão de Software 2020/2021
### [Mestrado Integrado em Engenharia Informática na Universidade do Minho](https://miei.di.uminho.pt/)

O **SeiRA** é um projeto, proposto pelo docente [Pedro Rangel Henriques](http://algoritmi.uminho.pt/member-profile/pedro-manuel-rangel-santos-henriques/0000187/) para avaliação na cadeira mencionada. No âmbito do projeto CnE (Computação na Escola), pretende-se desenvolver uma DSL, que será designada SelRA, para apoio ao professor que lhe permita escolher um recurso de aprendizagem (RA) adequado a um dado aluno
(Al) para ensino de um determinado conceito de programação (CPrg) de modo a tentar maximizar a eficácia do
processo de ensino/aprendizagem num curso de Introdução à Programação.

Utilizando o conhecimento em Gramáticas Independentes de Contexto foi possível criar uma Gramática de Atributos, em [Antlr4](https://www.antlr.org/). Esta ferramenta gera código Java através de Gramática de Atributos, permitindo o código executar um parsing e análise mais eficiente, métodico e, fundamentalmente, orientado aos objetivos propostos. 

Para complementar foi criado uma pequena aplicação web, à qual o professor pode recorrer para visualizar os recursos, alunos e alguns gráficos com informação interessante. Bem como as perguntas, ou seja qual **recurso** deve utilizar para ensinar um **conceito** a um **aluno**


Para correr a web app executar **SeiRAWebAppStarter.sh**.

## Linguagem Formal
```
"perfil1" : [ "caracteristica1", "caracteristica2" ] ;
"perfil2" : [ "caracteristica3"]
-
R1 "Tipo1" "Recurso1" [ 18 - 23] [ "perfil1" , "perfil2" ] ;
R2 "Tipo2" "Recurso2" [ 20 - 21 ] [ "perfil1" ]
-
PG11 "Aluno1" 21 [ "caracteristica2" ]
-
C1 "Conceito1" ;
C2 "Conceito2"
-
R1 ENSINA C1 ;
R1 ENSINA C2 ;
R2 ENSINA C1
-
ENSINAR C1 AO PG11 ?
. 
```

## Ontologia
```
conceitos  { 	Perfil[nome]
		Caracteristica[descricao]
		Recurso[id,tipo,descricao,intervaloidade], 
		Aluno[id,nome,idade],  
		Conceito[id,descricao], 
	  }
individuos { 
		>>computacaoEscola.txt<<
	  }
relacoes    { 
		Ensina,
		Ensinar, 	
	}
triplos      { 	
		recurso = ensina => conceito 
		conceito = ensinar => aluno
		perfil = possui => caracteristica
		recurso = explora => perfil
		aluno = tem => caracteristica
 	}
```

### [Relatório](https://github.com/chico2911/SeiRA/tree/master/Docs/Relatório_Grupo10_Projeto1_GCS.pdf)

## Development Team

* [Diogo Pereira](https://github.com/dpereira7)
* [Francisco Lopes](https://github.com/chico2911)
* [Luís Ribeiro](https://github.com/luis1ribeiro)
* [Gonçalo Pinto](https://github.com/GRP99)

## Agradecimentos

Queremos agradecer ao docente por toda a disponibidade, motivação e ajuda que nos facultou a desenvolver o projeto. Foi frucal a sua orientação para a realização do mesmo.
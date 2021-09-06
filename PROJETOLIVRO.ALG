Algoritmo "ProjetoLivro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Uma aplicação semelhante a cabeceira que organiza suas obras literárias de maior interesse.
// Autor(a)    :Viviane Mayra Claudino Felipe
// Data atual  : 21/08/2021
TIPO
   //Avaliação do Usuário usando registros e vetores
   AVALIACAO =REGISTRO
      livro:caractere
      nota:inteiro
   FIMREGISTRO
Var
   // Seção de Declarações das variáveis
   nomeLeitor:caractere
   idadeLeitor:inteiro
   opcao:inteiro
   paginasTotais:inteiro
   diasTotais:inteiro
   pDiarias:inteiro
   indicacoesUsuario: vetor [1..3,1..1] de caractere
   cIndicativa:inteiro
   avaliacaoUsuario:vetor[1..3] de AVALIACAO
   i,x,y:inteiro
   aux:avaliacao
   //Função reponsável pela calculadora
funcao paginasDiarias:inteiro
var pxd:inteiro
inicio
   pxd<-paginasTotais\diasTotais
   retorne pxd
fimfuncao



Inicio
    escreval("================================================================================")
    escreval("                              PROJETO LIVRO                                                          ")
    escreval("================================================================================")
   // Seção de indicações de livros (utilizei estruturas condicionais)
   escreva(" Olá!Qual o seu nome?")
   leia(nomeLeitor)
   escreva(" Me informe sua idade para o sistema consultar a classificação indicativa mais adequada para você!")
   leia(idadeLeitor)
   //Menu de opções
   repita
      escreval(" Escolha um gênero de seu interesse: ")
      escreval("1- Românce ")
      escreval("2- Ação ")
      escreval("3- Suspense")
      escreval("4- Aventura ")
      escreval("5- Drama ")
      leia(opcao)
   ate opcao<=5
   limpatela
   //indicações
   escolha opcao
   caso 1
      se (idadeLeitor<=10) entao
         escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é românce então aqui vai algumas obras compatíveis com você:")
         escreval("")
         escreval("1-A Volta Ao Mundo Em 80 Dias (Já imaginou entrar no universo de Jules Verne? Em a Volta Ao Mundo Em 80 Dias, um clássico francês, o leitor será decisivo para os acontecimentos da história). ")
         escreval("")
         escreval(" 2- Os Moomins e o Chapéu do Mago(O livro Os Moomins e o Chapéu do Mago conta a história dos Moomins, criaturas mágicas da floresta.")
         escreval("Nesta edição da coleção de Tove Jansson, acompanhamos a chegada da primavera no Vale, e os Moomins já estão prontos para a aventura!")
         escreval(" Moomintroll e seus amigos, Snufkin e Sniff, encontram o chapéu de Hobgoblin, uma criatura macabra.Juntos irão passar por diversas aventuras.)")
         escreval("")
         escreval("3- Os Caras Malvados(A divertida e irreverente série Os Caras Malvados conta a história de um grupo de amigos: ")
         escreval(" o Sr. Lobo, o Sr. Tubarão, o Sr. Cobra e o Sr.Piranha. Juntos, eles querem mudar sua reputação de caras “malvados” e serem promovidos a heróis.")
         escreval("Ou seja, querem provar que as aparências enganam. No entanto, os personagens acabam passando por aventuras hilárias e de tirar o fôlego!)")
         escreval("")
         escreval("=================================================================================================================================================")
         escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ^^ ")
         escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
         escreval("")
         para i de 1 ate 3 faca
            escreva("Nome da obra :")
            leia(avaliacaoUsuario[i].livro)
            escreval("")
            escreva("Nota: ")
            leia(avaliacaoUsuario[i].nota)
         fimpara
         //Ordenação
         para i de 1 ate 2 faca
            para x de 1 ate 2 faca
               se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                  aux<- avaliacaoUsuario[x+1]
                  avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                  avaliacaoUsuario[x]<-aux
               fimse
            fimpara
         fimpara
         //impressão na tela
         escreval("Sua ordem de prioridade será: ")
         i<-1
         para i de 1 ate 3 faca
            escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
         fimpara

      senao
         se (idadeLeitor>10) e (idadeLeitor<18) entao
            escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é românce então aqui vai algumas obras compatíveis com você:")
            escreval("")
            escreval(" 1-Eleanor & Park, de Rainbow Rowell (Uma história de amizade entre duas pessoas estranhas. Seria comum se não fosse ")
            escreval(" a forma especial como esses adolescentes vão construindo a sua amizade e as aventuras que esperam os dois no início de um romance. É um lindo livro para quem quer se emocionar). ")
            escreval("")
            escreval(" 2-Quem é você, Alasca?, de John Green (O autor que conquistou milhões de fãs no mundo com “A Culpa é das Estrelas” volta neste romance que envolve um pouco de filosofia, história e, ")
            escreval(" como não poderia deixar de ser, dramas adolescentes. É um livro inteligente e com um senso de humor maravilhoso).")
            escreval("")
            escreval(" 3-Americanah, de Chimamanda Ngozi Adichie (Neste livro acompanhamos a trajetória de uma garota nigeriana que se vê")
            escreval(" “obrigada” a deixar sua terra para estudar nos EUA, onde se depara com várias crises, de identidade, principalmente.")
            escreval(" Ela é apaixonada pelo seu namorado de adolescência e muitos anos se passam até que consegue vê-lo novamente. Um livro simplesmente apaixonante!)")
            escreval("")
            escreval("============================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            //Ordenação
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara

         senao (idadeLeitor>=18)
            escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é românce então aqui vai algumas obras compatíveis com você:")
            escreval("")
            escreval(" 1-Prelúdio sombrio (Prelúdio Sombrio é o primeiro livro de uma série dark, apesar de algumas cenas românticas, alguns sarcasmos aqui e ali,")
            escreval(" não vá esperando encontrar clichês, se tem uma coisa que essa série demonstra é originalidade em sua ambientação, diálogos fortes,")
            escreval(" cenas de violência, assim como os temas inseridos são chocantes, explícitos e retratados com seriedade, sem qualquer vitimização ")
            escreval(" ou romantização de abusos.Muitos anos atrás, duas crianças de mundos completamente diferentes forjaram um laço inquebrável que mudaria suas vidas para sempre).")
            escreval("")
            escreval(" 2-Birthday Girl (* BIRTHDAY GIRL é um romance contemporâneo, adequado para maiores de 18 anos. Ele me acolheu quando eu não tinha outro lugar para ficar.")
            escreval("  Ele não me usa, me magoa ou se esquece de mim. Ele não me trata como nada, não me despreza, ou me faz sentir insegura. Não é só safadeza, também aborda temas importantes).")
            escreval("")
            escreval(" 3-Os números do amor (Um romance que prova que o amor muitas vezes supera a lógica.Já passou da hora de Stella se casar e constituir família — pelo menos é isso que sua mãe acha.")
            escreval("  Mas se relacionar com o sexo oposto não é nada fácil para ela: talentosa e bem-sucedida, a econometrista é portadora de Asperger, um transtorno do espectro autista caracterizado por")
            escreval(" dificuldades nas relações sociais. Se para ela a análise de dados é uma tarefa simples, lidar com os embaraços que uma interação cara a cara podem trazer parece uma missão impossível.")
            escreval("  Diante desse impasse, Stella bola um plano bem inusitado: contratar um acompanhante para ensiná-la a ser uma boa namorada).")
            escreval("")
            escreval("============================================================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreva("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara


         fimse
      fimse

   caso 2
      se idadeLeitor<=10 entao
         escreval("Oiii ", nomeLeitor, " vi que seu gênero preferido é ação então aqui vai algumas obras compatíveis com você:")
         escreval("")
         escreval("1- Diário de um banana (A escola não é uma experiência agradável para o quase adolescente Greg Heffley, ")
         escreval(" mas sim um campo minado que ele precisa enfrentar. Para isso, ele trama para ganhar o reconhecimento que acha que merece, mas tudo dá errado.")
         escreval("  Greg escreve um diário sobre as suas desventuras, pensamentos e opiniões para divulgar no dia em que não precisar mais se submeter a absurdos).")
         escreval("")
         escreval("2- Assasinato no avião da meia-noite ( Gugu e Crê vão encontrar o tio Theo, para ajudá-los na busca de um tesouro.")
         escreval("  No aeroporto, chocam-se com um homem estranho, que logo desaparece. Mais tarde, durante o voo, um passageiro cai morto. Quem o matou? Que segredo ele carregava consigo?).")
         escreval("")
         escreval("3- naruto (é uma série de mangá escrita e ilustrada por Masashi Kishimoto, que conta a história de Naruto Uzumaki, ")
         escreval(" um jovem ninja que constantemente procura por reconhecimento e sonha em se tornar Hokage, o ninja líder de sua vila). ")
         escreval(" As lições do Naruto podem ser aplicadas na nossa vida social e profissional, uma das principais é não desista nunca!")
         escreval(" Correr atrás de seus sonhos e objetivos não é fácil, até porque você poderá encontrar obstáculos que parecerão intransponíveis.")
         escreval(" Isso poderá desanimar, até te fazer desistir. Mas o Naruto te dá um exemplo de força e determinação que deve ser levado á sério!")
         escreval("")
         escreval("===========================================================================================================================================")
         escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
         escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
         escreval("")
         para i de 1 ate 3 faca
            escreva("Nome da obra :")
            leia(avaliacaoUsuario[i].livro)
            escreval("")
            escreva("Nota: ")
            leia(avaliacaoUsuario[i].nota)
         fimpara
         para i de 1 ate 2 faca
            para x de 1 ate 2 faca
               se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                  aux<- avaliacaoUsuario[x+1]
                  avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                  avaliacaoUsuario[x]<-aux
               fimse
            fimpara
         fimpara
         //impressão na tela
         escreval("Sua ordem de prioridade será: ")
         i<-1
         para i de 1 ate 3 faca
            escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
         fimpara


      senao
         se (idadeLeitor>10) e (idadeLeitor<18) entao
            escreval("Oiii ", nomeLeitor, " vi que seu gênero de interesse é ação então aqui vai algumas obras compatíveis com você: ")
            escreval("")
            escreval("1- A Bússola de Ouro, Philip Pullman ( conta a história de Lyra Belacqua e seu daemon, Pantalaimon,")
            escreval("  que vivem felizes entre os catedráticos da Faculdade Jordan, até que surgem na cidade boatos sobre os Papões, ")
            escreval(" sequestradores de crianças que estão espalhando o medo pelo país. Quando seu melhor amigo, Roger, desaparece, Lyra embarca em uma perigosa jornada para reencontrá-lo).")
            escreval("")
            escreval("2- As Crônicas de Nárnia (oferece aos leitores viagens ao fim do mundo, criaturas fantásticas e batalhas épicas ")
            escreval("  entre o bem e o mal em seis livros que, juntos, ficaram conhecidos como ”As crônicas de Nárnia”, e estão reunidos nesse volume de C. S. Lewis).")
            escreval("")
            escreval("3- O Hobbit (No livro O Hobbit, conhecemos seres muito pequenos, menores do que os anões, que vivem em paz ")
            escreval(" e só trabalham para ter uma boa terra lavrada. Bilbo Bolseiro é um dos hobbits e, assim como os colegas, ele vive tranquilo. Mas a sua vida vai mudar")
            escreval(" quando o mago Gandalf e uma companhia de anões o levarão em uma expedição para resgatar um tesouro guardado por Smaug, um dragão enorme e perigoso).")
            escreval("")
            escreval("======================================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara


         senao (idadeLeitor>=18)
            escreval("Oiii ", nomeLeitor, " vi que seu gênero de interesse é ação então aqui vai algumas obras compatíveis com você: ")
            escreval("")
            escreval("1- Punisher(Impulsionado pelas mortes da sua esposa e dos seus filhos durante um tiroteio")
            escreval(" da Máfia Americana no Central Park, Nova Iorque, o Justiceiro move-se numa guerra de um só homem ")
            escreval(" contra a máfia e todos os criminosos usando todo o tipo de armamento de guerra. Os assassinos da sua família foram as suas primeiras vítimas).")
            escreval("")
            escreval("2- The Walking Dead (narra a história de um grupo de sobreviventes de um mundo destruído por zumbis, ")
            escreval(" com seus conflitos internos. O drama, por vezes, afasta-se do tema zumbis para assuntos de ordem mais pessoal,")
            escreval(" enfatizando a personalidade de pessoas normais que alteram-se com a tragédia).")
            escreval("")
            escreval("3- Deadpool (Deadpool, cujo nome verdadeiro é Wade Winston Wilson, é um mercenário canadense")
            escreval(" marcado por ser falastrão, violento e principalmente por ser comediante e a partir ficou conhecido como o mercenário tagarela.")
            escreval(" Tem também o fator de cura que o faz sobreviver aos piores ferimentos).")
            escreval("")
            escreval("==================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara

         fimse
      fimse

   caso 3
      se (idadeLeitor<=10) entao
         escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é suspense então aqui vai algumas obras compatíveis com você:")
         escreval("")
         escreval("1- Judy Moody, a Garota Detetive (Judy Moody está num astral muito investigativo.")
         escreval(" Totalmente Mata-Mistério(MM) Ela anda lendo todos os livros de Nancy Drew, a garota detetive, e fica inspirada para ser detetive também.")
         escreval(" Quando Chips, um cãozinho policial em treinamento, desapareceda cidade, Judy Olho de Águia mergulha de cabeça num mistério da vida real!).")
         escreval("")
         escreval("2- Os Bandeira-pirata e o Galeão Assombrado (Em toda noite de lua cheia, uma misteriosa embarcação é vista na costa da cidade.")
         escreval(" Seria o Rato Preto, há anos afundado pela Marinha de Mar-Nublado durante a emboscada contra os piratas? Uma coisa é certa: a população está apavorada,")
         escreval(" especialmente com os saques que voltam a ocorrer sempre que o emblemático navio é visto. Matilda, uma pequena – mas destemida – moradora de Mar-Nublado ")
         escreval(" está disposta a resolver este mistério e acabar de vez com o pânico que assola a população. Ao lado da família Bandeira-Pirata, Jim Júnior – um pirata de verdade")
         escreval(" – e Matilda lutam para solucionar o enigma. Conseguirão eles derrotar os piratas estropiados?).")
         escreval("")
         escreval("3- Quem Matou o Saci? (A detetive Billy Conrado e o detetive Joaquim de Jeremias colhem pistas e não poupam esforços para solucionar")
         escreval(" o misterioso assassinato de um conhecidíssimo personagem do folclore brasileiro. Quem teria motivos para matar o Saci Perereira? Muitos personagens são suspeitos, mas quem seria o verdadeiro culpado?)")
         escreval("")
         escreval("====================================================================================================================================================================")
         escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
         escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
         escreval("")
         para i de 1 ate 3 faca
            escreva("Nome da obra :")
            leia(avaliacaoUsuario[i].livro)
            escreval("")
            escreva("Nota: ")
            leia(avaliacaoUsuario[i].nota)
         fimpara
         para i de 1 ate 2 faca
            para x de 1 ate 2 faca
               se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                  aux<- avaliacaoUsuario[x+1]
                  avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                  avaliacaoUsuario[x]<-aux
               fimse
            fimpara
         fimpara
         //impressão na tela
         escreval("Sua ordem de prioridade será: ")
         i<-1
         para i de 1 ate 3 faca
            escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
         fimpara


      senao
         se (idadeLeitor>10) e (idadeLeitor<18) entao
            escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é suspense então aqui vai algumas obras compatíveis com você:")
            escreval("")
            escreval("1- Mentirosos (Cadence Sinclair é a neta mais velha e herdeira da família Sinclair, onde todos são bonitos e inteligentes e louros e ricos.")
            escreval(" Todos os verões,a família se reúne na ilha particular de Beechwood, onde Cady cresce ao lado dos primos, Mirren e Johnny, e do amigo Gat, ")
            escreval(" um grupo nomeado de Mentirosos pelas tias. Os verões são cheios de lembranças e diversão, até o verão dos quinze).")
            escreval("")
            escreval("2- Um de nós está mentindo (Cinco alunos entram em detenção na escola e apenas quatro saem com vida.")
            escreval(" Todos são suspeitos e cada um tem algo a esconder. Este o enredo do Um de nós está mentindo, romance de estreia de Karen M. McManus).")
            escreval("")
            escreval("3- Enola Holmes: O caso do marquês desaparecido (Entre disfarces e fugas, a irmã de Sherlock Holmes")
            escreval("  vai nos mostrar que o sangue investigativo também faz parte dela. Mas será que Enola será capaz de")
            escreval(" decodificar as pistas necessárias e finalmente encontrar sua mãe? O livro que inspirou o filme homônimo")
            escreval(" do Netflix estrelado por Milly Brown, Henry Cavill e Sam Claflin).")
            escreval("")
            escreval("====================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara

         senao (idadeLeitor>=18)
            escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é suspense então aqui vai algumas obras compatíveis com você:")
            escreval("")
            escreval("1- O iluminado ( A luta assustadora entre dois mundos. Um menino e o desejo assassino de poderosas forças malignas.")
            escreval(" Uma família refém do mal. Nesta guerra sem testemunhas, vencerá o mais forte. Danny Torrance não é um menino comum.")
            escreval(" É capaz de ouvir pensamentos e transportar-se no tempo. Danny é iluminado. Será uma maldição ou uma bênção?).")
            escreval("")
            escreval("2- IT a coisa (Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade.")
            escreval(" Eles descobrem que o culpado é Pennywise, um palhaço cruel que se alimenta de seus medos e cuja violência teve origem há vários séculos).")
            escreval("")
            escreval("3- Sem deixar rastros (Myron Bolitar parecia destinado a uma carreira de sucesso na NBA quando uma lesão no joelho o afastou definitivamente das quadras.")
            escreval(" Agora, 10 anos depois, o agente esportivo, que também atua como detetive nas horas vagas, está de volta ao jogo – não para cumprir seu destino como astro do basquete, mas para desvendar mais um mistério).")
            escreval("")
            escreval("=================================================================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara

         fimse
      fimse

   caso 4
      se (idadeLeitor<=10) entao
         escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é aventura então aqui vai algumas obras compatíveis com você:")
         escreval("")
         escreval("1- Júlio Verne: (Em A Volta ao Mundo em 80 Dias, encontramos, ao mesmo tempo, muito da breve experiência")
         escreval(" de Verne como marinheiro e como corretor de Bolsa. Para quem gosta de aventuras de épocas e mais realistas,")
         escreval("  essa é uma indicação muito boa,visto que se passa num período da história bastante ciêntifico).")
         escreval("")
         escreval("2- S.O.S. Perdido no Espaço! (O malvado professor Mu voltou a ameaçar a Ratônia com suas engenhosas e pavorosas invenções.")
         escreval("  Para impedir seu novo e terrível plano, o misterioso P.S.S.S.R.(Poderosos Serviços Secretos Supersecretos Ratescos) acabou ")
         escreval(" convocando Geronimo Stilton, que dormia tranquilamente em sua casa e de repente foi parar no meio de uma missão muito secreta no fim do mundo ou melhor, no espaço).")
         escreval("")
         escreval("3- Sakura card captors (Sakura Kinomoto é uma garota de 10 anos, estudante da fictícia cidade japonesa de Tomoeda,")
         escreval(" que por acidente abre um livro misterioso, chamado Livro Clow. Do livro saem 52 cartas mágicas levadas por uma")
         escreval(" tempestade de vento causada pela magia da carta Vento, que foi libertada quando Sakura leu o seu nome. Kerberos,")
         escreval("  o guardião das cartas (uma criatura muito parecida com um animal de pelúcia bem pequeno), surge do livro e conta ")
         escreval(" a Sakura que as cartas foram espalhadas por toda Tomoeda e é seu dever capturá-las de novo, tornando-a uma cardcaptor).")
         escreval("")
         escreval("=======================================================================================================================")
         escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
         escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
         escreval("")
         para i de 1 ate 3 faca
            escreva("Nome da obra :")
            leia(avaliacaoUsuario[i].livro)
            escreval("")
            escreva("Nota: ")
            leia(avaliacaoUsuario[i].nota)
         fimpara
         para i de 1 ate 2 faca
            para x de 1 ate 2 faca
               se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                  aux<- avaliacaoUsuario[x+1]
                  avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                  avaliacaoUsuario[x]<-aux
               fimse
            fimpara
         fimpara
         //impressão na tela
         escreval("Sua ordem de prioridade será: ")
         i<-1
         para i de 1 ate 3 faca
            escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
         fimpara


      senao
         se (idadeLeitor>10) e (idadeLeitor<18)entao
            escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é aventura então aqui vai algumas obras compatíveis com você:")
            escreval("")
            escreval("1- O Instituto ( um grupo de crianças com talentos especiais que precisam se unir para derrubar")
            escreval(" um grande mal presente no Instituto. Algumas crianças, como Kalisha, Nick, George, Iris e o caçula,")
            escreval("  Avery Dixon, estão na Parte da Frente. Outros jovens foram levados para a Parte de Trás e nunca mais vistos.")
            escreval(" Embora as crianças tentem a salvação, até hoje ninguém nunca conseguiu fugir do Instituto).")
            escreval("")
            escreval("2- Star Wars:a trilogia ( A saga que atravessou o espaço e inúmeras gerações de fãs retorna")
            escreval(" ao público brasileiro em grande estilo. As histórias clássicas de Luke Skywalker, Han Solo, Princesa Leia, Mestre Yoda e Darth Vader ganham as páginas luxuosas de Star Wars, A Trilogia).")
            escreval("")
            escreval("3- One piece(é um mangá de aventura pirata escrito e desenhado por Eiichiro Oda, criado em Julho de 1997.")
            escreval(" O mangá é conhecido por empregar temas coloridos e criativos que são retirados da mitologia clássica, política e aspectos musicais.")
            escreval("  Também é misturado com a tradição pirata e a fórmula shonen. One Piece começa quando Gol D. Roger, o Rei Dos Piratas que possuiu tudo nesse mundo,")
            escreval("  antes de ser executado,diz que escondeu o seu tesouro em algum lugar da Grand Line, um oceano extremamente perigoso. Desde então muitos piratas")
            escreval(" se aventuram pela Grand Line para tentar encontrar o tesouro chamado One Piece. Um deles é Monkey D. Luffy, o garoto que, acidentalmente, comeu uma das Akuma No Mi,")
            escreval("  a Gomu Gomu No Mi (Fruta da Borracha), transformando o seu corpo em borracha. A jornada dele começa atrás de companheiros e um barco, que ele vai conseguindo pouco a pouco, pois tem um objetivo: Se tornar o Rei Dos Piratas).")
            escreval("")
            escreval("=====================================================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara


         senao (idadeLeitor>=18)
            escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é aventura então aqui vai algumas obras compatíveis com você:")
            escreval("")
            escreval("1- Jogos Vorazes(Na abertura dos Jogos Vorazes, a organização não recolhe os corpos dos combatentes caídos")
            escreval("  e dá tiros de canhão até o final. Cada tiro, um morto. Onze tiros no primeiro dia. Treze jovens restaram,")
            escreval("  entre eles, Katniss. Para quem os tiros de canhão serão no dia seguinte?).")
            escreval("")
            escreval("2- The 100 (The 100 se passa num futuro pós-apocalíptico onde a Terra foi completamente dizimada por guerras nucleares e biológicas.")
            escreval(" Os humanos que conseguiram sobreviver a essa terrível guerra vivem em uma nave que fica na órbita da Terra. Essa nave tem inúmeras ")
            escreval(" regras bem rígidas: como o crescimento populacional que é estritamente controlado pelas autoridades locais, sendo permitido apenas um filho;")
            escreval("  E qualquer crime, não importa de qual natureza, é punido com a morte, sem mais nem menos. A história começa 300 anos depois do lançamento da nave,")
            escreval(" quando descobrimos que ela está enfrentando sérios problemas em seu funcionamento, e que talvez não dure mais tantos anos. Por esse motivo, fica decidido que 100 dos prisioneiros da nave façam uma expedição a Terra para verificar os recursos da mesma).")
            escreval("")
            escreval("3- The Time Machine (Desesperado pelo assassinato de sua noiva, o inventor Alexander não consegue reverter a morte da amada alterando o tempo. ")
            escreval(" Porém, em um futuro em que a humanidade está dividida entre espécies pacíficas e predatórias, o cientista precisa enfrentar os carnívoros Morlocks para salvar seus novos amigos). ")
            escreval("")
            escreval("=================================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara

         fimse
      fimse

   caso 5
      se (idadeLeitor<=10) entao
         escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é drama então aqui vai algumas obras compatíveis com você:")
         escreval("")
         escreval("1- O pequeno príncipe (Nesta clássica história que marcou gerações de leitores em todo o mundo,")
         escreval(" um piloto cai com seu avião no deserto do Saara e encontra um pequeno príncipe, que o leva a uma")
         escreval(" jornada filosófica e poética através de planetas que encerram a solidão humana. A edição conta com ")
         escreval(" a clássica tradução do poeta imortal dom Marcos Barbosa, e é a versão mais consagrada da obra, publicada no Brasil desde 1952).")
         escreval("")
         escreval("2- Em Busca da Feição Real (Era uma vez um castelo nas profundezas de uma floresta.")
         escreval(" Nele viviam três crianças que tiveram suas feições reais roubadas por uma bruxa. ")
         escreval(" Com o passar do tempo, elas decidem que, para serem felizes novamente, precisam recuperar seus rostos.")
         escreval("  Então embarcam em uma jornada repleta de desafios e de encontros surpreendentes, que vai lhes ensinar que para sermos felizes de verdade precisamos de coragem para nos livrarmos de nossas máscaras).")
         escreval("")
         escreval("3- Criança Zumbi (Em Criança zumbi, um menino de pele muito pálida e olhos bem grandes nasceu num pequeno vilarejo.")
         escreval(" Conforme crescia, sua mãe percebeu que ele não tinha sentimentos e que sentia uma fome insaciável. Todo dia, ela roubava")
         escreval(" animais das casas vizinhas para dar à criança. Quando uma pandemia espalha a morte pelo lugar, a mãe se vê obrigada a tomar medidas inimagináveis para salvar a vida do filho).")
         escreval("")
         escreval("==================================================================================================================================================================================")
         escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
         escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
         escreval("")
         para i de 1 ate 3 faca
            escreva("Nome da obra :")
            leia(avaliacaoUsuario[i].livro)
            escreval("")
            escreva("Nota: ")
            leia(avaliacaoUsuario[i].nota)
         fimpara
         para i de 1 ate 2 faca
            para x de 1 ate 2 faca
               se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                  aux<- avaliacaoUsuario[x+1]
                  avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                  avaliacaoUsuario[x]<-aux
               fimse
            fimpara
         fimpara
         //impressão na tela
         escreval("Sua ordem de prioridade será: ")
         i<-1
         para i de 1 ate 3 faca
            escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
         fimpara

      senao
         se (idadeLeitor>10) e (idadeLeitor<18) entao
            escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é drama então aqui vai algumas obras compatíveis com você:")
            escreval("")
            escreval("1- A cinco passos de você(Stella Grant gosta de estar no controle. Ela parece ser uma adolescente típica,")
            escreval(" mas em sua rotina há listas de tarefas e inúmeros remédios que ela deve tomar para controlar a fibrose cística,")
            escreval("uma doença crônica que impede que seus pulmões funcionem como deveriam. O único controle que Will Newman deseja é o de sua própria vida.")
            escreval(" Ele não dá a mínima para o novo tratamento experimental para o qual foi selecionado e não aguenta mais a pressão de sua mãe para que melhore.")
            escreval("Stella e Will são muito diferentes. Ao mesmo tempo, a doença que os une não é a única coisa que têm em comum).")
            escreval("")
            escreval("2- Marley & Eu (“Labradores são considerados calmos, comportados e fiéis - e então surge Marley, tema desta")
            escreval("encantadora homenagem a um labrador que fugiu do padrão. A crônica de Grogan sobre o hiperativo e cativante")
            escreval("cachorro é escrita com muito humor. John e Jenny não sabiam no que estavam se metendo quando decidiram adotar aquele ")
            escreval("lindo filhotinho de labrador… Um cão sem igual, Marley conquistou leitores do mundo inteiro).")
            escreval("")
            escreval("3- Quatro Vidas de Um Cachorro (Esta é a inesquecível história de um cão que, após renascer várias vezes,")
            escreval("imagina que haja uma razão para seu retorno, um propósito a cumprir e que, enquanto não o alcançar, continuará renascendo.")
            escreval("Narrado pelo próprio animal, Quatro vidas de um cachorro aborda a questão mais básica da vida: por que estamos aqui?).")
            escreval("")
            escreval("=====================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara


         senao idadeLeitor>=18
            escreval("Oiii ",nomeLeitor," vi que seu gênero preferido é drama então aqui vai algumas obras compatíveis com você:")
            escreval("")
            escreval("1- Como eu era antes de você: trilogia (Aos 26 anos, Louisa Clark não tem muitas ambições. Ela mora com os pais,")
            escreval("a irmã mãe solteira, o sobrinho pequeno e um avô que precisa de cuidados constantes desde que sofreu um derrame.")
            escreval("Trabalha como garçonete num café, um emprego que não paga muito, mas ajuda nas despesas, e namora Patrick. Quando")
            escreval("o café fecha as portas, Lou é obrigada a procurar outro emprego. Sem muitas qualificações, consegue trabalho como cuidadora de um tetraplégico.")
            escreval(" Will Traynor, de 35 anos, é inteligente, rico e mal-humorado. Preso a uma cadeira de rodas depois de um acidente de moto, tudo parece pequeno e ")
            escreval("sem graça para ele, que sabe exatamente como dar um fim a esse sentimento. O que Will não sabe é que Lou está prestes a trazer cor a sua vida.")
            escreval(" E nenhum dos dois desconfia de que irá mudar para sempre a história um do outro).")
            escreval("")
            escreval("2- O Mar Sem Estrelas(Quando Zachary Ezra Rawlins descobre um misterioso livro escondido na biblioteca de sua universidade, ")
            escreval("isso o leva a uma busca como nenhuma outra. Em meio a suas inebriantes narrativas sobre prisioneiros apaixonados e cidades perdidas, ")
            escreval("ele se depara com algo impossível: uma história de sua própria infância).")
            escreval("")
            escreval("3- O diário de Anne Frank (O depoimento da pequena Anne, morta pelos nazistas após passar anos escondida no sótão de uma casa em Amsterdã,")
            escreval("ainda hoje emociona leitores no mundo inteiro. Suas anotações narram os sentimentos, os medos e as pequenas alegrias de uma menina judia que,")
            escreval("como sua família, lutou em vão para sobreviver ao Holocausto).")
            escreval("")
            escreval("=================================================================================================================================================")
            escreval("Espero que você tenha gostado!! Pode me ajudar,somente pela sinopse, nos conte se tu ficou interessado na obra ^^ ")
            escreval("DIGITE SEU NOME E A NOTA RECEBIDA!")
            escreval("")
            para i de 1 ate 3 faca
               escreva("Nome da obra :")
               leia(avaliacaoUsuario[i].livro)
               escreval("")
               escreva("Nota: ")
               leia(avaliacaoUsuario[i].nota)
            fimpara
            para i de 1 ate 2 faca
               para x de 1 ate 2 faca
                  se (avaliacaoUsuario[x].nota < avaliacaoUsuario[x+1].nota) entao
                     aux<- avaliacaoUsuario[x+1]
                     avaliacaoUsuario[x+1]<-avaliacaoUsuario[x]
                     avaliacaoUsuario[x]<-aux
                  fimse
               fimpara
            fimpara
            //impressão na tela
            escreval("Sua ordem de prioridade será: ")
            i<-1
            para i de 1 ate 3 faca
               escreval(avaliacaoUsuario[i].livro, avaliacaoUsuario[i].nota)
            fimpara

         fimse
      fimse

   fimescolha

   escreval("")
   escreval("=======================================================================================================================================================")
   escreval("")
   //Área destinada a calculadora literária
   escreval("Sabemos como o cotidiano é uma correria e mal se tem tempo para ler aquele bom livro. Pensando nisso criei uma ")
   escreval("calculadora que irá te retornar quantas páginas você terá que ler ao dia, baseado na sua disponibilidade,para concluir sua meta literaria.")
   escreval("")
   escreva("Qual a quantidade de páginas do livro que deseja ler? ")
   leia( paginasTotais)
   escreva("Em quantos dias você pretende concluir sua meta literária? ")
   leia(diasTotais)
   pDiarias<-paginasDiarias()
   escreval("O número de páginas que você deverá ler aproximadamente por dia é: ", pDiarias)
   escreval("")
   escreval("========================================================================================================================================================")
   //Sugestões do próprio usuário para acrescentar na lista de indicações
   escreval("Agora chegou a sua vez de ajudar esse projeto fazendo suas indicações de obras preferidas para no futuro acrescentarmos em nosso catálogo :)")
   repita
      escreval(" Escolha qual gênero você deseja acrescentar três obras: ")
      escreval("1- Românce ")
      escreval("2- Ação ")
      escreval("3- Suspense")
      escreval("4- Aventura ")
      escreval("5- Drama ")
      leia(opcao)
   ate opcao<=5
   limpatela
   escolha (opcao)
   caso 1
      escreva("Digite sua primeira obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[1,1])
      escreva("Digite sua segunda obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[2,1])
      escreva("Digite sua última indicação e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[3,1])
      escreval("Muuuito obrigada por sua colaboração!!")
      escreval("As obras que você indicou é compatíveis a qual classificação indicativa?")
      repita
         escreval(" Escolha a idade: ")
         escreval("1- Menor ou igual a 10 anos ")
         escreval("2- Entre 10 e menor de 18 anos ")
         escreval("3- Maiores ou iguais a 18 anos")
         leia (cIndicativa)
      ate cIndicativa<=3
      limpatela
      se (cIndicativa=1) entao
         escreval("Obras já existentes: ")
         escreval("1-A Volta Ao Mundo Em 80 Dias ")
         escreval("2-Os Moomins e o Chapéu do Mago")
         escreval("3- Os Caras Malvados")
         escreval("Indicações do usuário ")
         escreval("4- ",indicacoesUsuario[1,1] )
         escreval("5- ",indicacoesUsuario[2,1] )
         escreval("6- ",indicacoesUsuario[3,1] )

      senao
         se (cIndicativa=2) entao
            escreval("Obras já existentes: ")
            escreval("1- Eleanor & Park ")
            escreval("2- Quem é você, Alasca?")
            escreval("3- Americanah")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         senao
            escreval("Obras já existentes: ")
            escreval("1- Prelúdio sombrio ")
            escreval("2- Birthday Girl?")
            escreval("3- Os números do amor")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )

         fimse
      fimse
   caso 2
      escreva("Digite sua primeira obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[1,1])
      escreva("Digite sua segunda obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[2,1])
      escreva("Digite sua última indicação e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[3,1])
      escreval("Muuuito obrigada por sua colaboração!!")
      escreval("As obras que você indicou é compatíveis a qual classificação indicativa?")
      repita
         escreval(" Escolha a idade: ")
         escreval("1- Menor ou igual a 10 anos ")
         escreval("2- Entre 10 e menor de 18 anos ")
         escreval("3- Maiores ou iguais a 18 anos")
         leia (cIndicativa)
      ate cIndicativa<=3
      limpatela

      se (cIndicativa=1)entao
         escreval("Obras já existentes: ")
         escreval("1- Diário de um banana ")
         escreval("2- Assasinato no avião da meia-noite")
         escreval("3- Naruto")
         escreval("Indicações do usuário ")
         escreval("4- ",indicacoesUsuario[1,1] )
         escreval("5- ",indicacoesUsuario[2,1] )
         escreval("6- ",indicacoesUsuario[3,1] )
      senao
         se (cIndicativa=2)entao
            escreval("Obras já existentes: ")
            escreval("1- A bússola de ouro ")
            escreval("2- As crônicas de Nárnia")
            escreval("3- O hobbit")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         senao
            escreval("Obras já existentes: ")
            escreval("1- Punisher ")
            escreval("2- The walking dead")
            escreval("3- Deadpool")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         fimse
      fimse

   caso 3
      escreva("Digite sua primeira obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[1,1])
      escreva("Digite sua segunda obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[2,1])
      escreva("Digite sua última indicação e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[3,1])
      escreval("Muuuito obrigada por sua colaboração!!")
      escreval("As obras que você indicou é compatíveis a qual classificação indicativa?")
      repita
         escreval(" Escolha a idade: ")
         escreval("1- Menor ou igual a 10 anos ")
         escreval("2- Entre 10 e menor de 18 anos ")
         escreval("3- Maiores ou iguais a 18 anos")
         leia (cIndicativa)
      ate cIndicativa<=3
      limpatela
      se (cIndicativa=1) entao
         escreval("Obras já existentes: ")
         escreval("1- Judy Moody ")
         escreval("2- Os bandeira-pirata e o galeão assombrado")
         escreval("3- Quem matou o saci?")
         escreval("Indicações do usuário ")
         escreval("4- ",indicacoesUsuario[1,1] )
         escreval("5- ",indicacoesUsuario[2,1] )
         escreval("6- ",indicacoesUsuario[3,1] )
      senao
         se (cIndicativa=2) entao
            escreval("Obras já existentes: ")
            escreval("1- Mentiros ")
            escreval("2- Um de nós está mentindo")
            escreval("3- Enola Homes")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         senao
            escreval("Obras já existentes: ")
            escreval("1- O iluminado ")
            escreval("2- IT a coisa")
            escreval("3- Sem deixar rastros")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         fimse
      fimse

   caso 4
      escreva("Digite sua primeira obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[1,1])
      escreva("Digite sua segunda obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[2,1])
      escreva("Digite sua última indicação e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[3,1])
      escreval("Muuuito obrigada por sua colaboração!!")
      escreval("As obras que você indicou é compatíveis a qual classificação indicativa?")
      repita
         escreval(" Escolha a idade: ")
         escreval("1- Menor ou igual a 10 anos ")
         escreval("2- Entre 10 e menor de 18 anos ")
         escreval("3- Maiores ou iguais a 18 anos")
         leia (cIndicativa)
      ate cIndicativa<=3
      limpatela
      se (cIndicativa =1) entao
         escreval("Obras já existentes: ")
         escreval("1- Julio Vernes ")
         escreval("2- S.O.S perdidos no espaço")
         escreval("3- Sakura card captors")
         escreval("Indicações do usuário ")
         escreval("4- ",indicacoesUsuario[1,1] )
         escreval("5- ",indicacoesUsuario[2,1] )
         escreval("6- ",indicacoesUsuario[3,1] )
      senao
         se (cIndicativa=2) entao
            escreval("Obras já existentes: ")
            escreval("1- O instituto")
            escreval("2- Star Wars: a trilogia")
            escreval("3- One piece")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         senao
            escreval("Obras já existentes: ")
            escreval("1- Jogos vorazes ")
            escreval("2- The 100")
            escreval("3- The time machine")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         fimse
      fimse


   caso 5
      escreva("Digite sua primeira obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[1,1])
      escreva("Digite sua segunda obra e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[2,1])
      escreva("Digite sua última indicação e um pouco sobre sua história principal: ")
      leia(indicacoesUsuario[3,1])
      escreval("Muuuito obrigada por sua colaboração!!")
      escreval("As obras que você indicou é compatíveis a qual classificação indicativa?")
      repita
         escreval(" Escolha a idade: ")
         escreval("1- Menor ou igual a 10 anos ")
         escreval("2- Entre 10 e menor de 18 anos ")
         escreval("3- Maiores ou iguais a 18 anos")
         leia (cIndicativa)
      ate cIndicativa<=3
      limpatela
      se (cIndicativa=1) entao
         escreval("Obras já existentes: ")
         escreval("1- O pequeno príncipe")
         escreval("2- Em busca da feição real")
         escreval("3- Criança zumbi")
         escreval("Indicações do usuário ")
         escreval("4- ",indicacoesUsuario[1,1] )
         escreval("5- ",indicacoesUsuario[2,1] )
         escreval("6- ",indicacoesUsuario[3,1] )
      senao
         se (cIndicativa=2) entao
            escreval("Obras já existentes: ")
            escreval("1- A cinco passos de você ")
            escreval("2- Marley e eu")
            escreval("3- Quatro vidas de um cachoro")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         senao
            escreval("Obras já existentes: ")
            escreval("1- Como eu era antes de você:trilogia ")
            escreval("2- O mar sem estrelas")
            escreval("3- O diário de Anne Frank")
            escreval("Indicações do usuário ")
            escreval("4- ",indicacoesUsuario[1,1] )
            escreval("5- ",indicacoesUsuario[2,1] )
            escreval("6- ",indicacoesUsuario[3,1] )
         fimse
      fimse


   fimescolha
Fimalgoritmo


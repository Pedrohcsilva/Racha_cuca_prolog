resolve(F) :-
    % F é a estrutura principal de 5 posições
    F = fila(_,_,_,_,_),

    % Pista 1: Larissa é Publicitária.
    alguma_paraquedista(P1, F),
    nome(P1, larissa),
    profissao(P1, publicitaria),

    % Pista 2: Camila está na segunda posição.
    alguma_paraquedista(P2, F),
    nome(P2, camila),
    segunda_posicao(P2, F),

    % Pista 3: A Arquiteta está ao lado da paraquedista que saltará com o Sérgio.
    alguma_paraquedista(P3, F),
    profissao(P3, arquiteta),
    alguma_paraquedista(P4, F),
    instrutor(P4, sergio),
    ao_lado_de(P3, P4, F),

    % Pista 4: Quem saltará às 9:00 horas está em uma das pontas.
    alguma_paraquedista(P5, F),
    salto(P5, '9:00'),
    uma_das_pontas(P5, F),

    % Pista 5: A paraquedista de 25 anos saltará às 10:30.
    alguma_paraquedista(P6, F),
    idade(P6, 25),
    salto(P6, '10:30'),

    % Pista 6: A mulher que saltará com Luciano está exatamente à esquerda de quem saltará às 11:00 horas.
    alguma_paraquedista(P7, F),
    instrutor(P7, luciano),
    alguma_paraquedista(P8, F),
    salto(P8, '11:00'),
    exatamente_a_esquerda(P7, P8, F),

    % Pista 7: A paraquedista do macacão Vermelho irá saltar com o Alessandro.
    alguma_paraquedista(P9, F),
    macacao(P9, vermelho),
    instrutor(P9, alessandro),

    % Pista 8: Quem está usando o macacão Azul está em algum lugar entre a Publicitária (P1) e a paraquedista do macacão Branco (P11), nessa ordem.
    alguma_paraquedista(P10, F),
    macacao(P10, azul),
    alguma_paraquedista(P11, F),
    macacao(P11, branco),
    em_algum_lugar_a_direita(P10, P1, F),
    em_algum_lugar_a_esquerda(P10, P11, F),

    % Pista 9: A Empresária está exatamente à esquerda da mulher de 35 anos.
    alguma_paraquedista(P12, F),
    profissao(P12, empresaria),
    alguma_paraquedista(P13, F),
    idade(P13, 35),
    exatamente_a_esquerda(P12, P13, F),

    % Pista 10: Larissa (P1) está ao lado da paraquedista de 30 anos.
    alguma_paraquedista(P14, F),
    idade(P14, 30),
    ao_lado_de(P1, P14, F),

    % Pista 11: Jorge participará do salto duplo que ocorrerá às 11:00 (P8).
    instrutor(P8, jorge),

    % Pista 12: A Atriz está exatamente à direita da Empresária (P12).
    alguma_paraquedista(P15, F),
    profissao(P15, atriz),
    exatamente_a_direita(P15, P12, F),

    % Pista 13: Tainá está em algum lugar à direita da paraquedista de macacão Amarelo.
    alguma_paraquedista(P16, F),
    nome(P16, taina),
    alguma_paraquedista(P17, F),
    macacao(P17, amarelo),
    em_algum_lugar_a_direita(P16, P17, F),

    % Pista 14: A Arquiteta (P3) saltará às 11:00 (P8).
    P3 = P8,

    % Pista 15: Sofia está na terceira posição.
    alguma_paraquedista(P18, F),
    nome(P18, sofia),
    terceira_posicao(P18, F),

    % Pista 16: A paraquedista de macacão Branco (P11) está em algum lugar entre Larissa (P1) e a de macacão Amarelo (P17), nessa ordem.
    em_algum_lugar_a_direita(P11, P1, F),
    em_algum_lugar_a_esquerda(P11, P17, F),

    % Pista 17 e 18: Quem saltará às 9:30 está na segunda posição e está exatamente à esquerda da mulher de 35 anos (P13).
    alguma_paraquedista(P19, F),
    salto(P19, '9:30'),
    segunda_posicao(P19, F),
    exatamente_a_esquerda(P19, P13, F),

    % Pista 19: A paraquedista mais nova (25 anos, P6) está usando o macacão Verde.
    macacao(P6, verde),

    % Pista 20: A de 35 anos (P13) está em algum lugar entre a de macacão Vermelho (P9) e a mais velha (45 anos), nessa ordem.
    alguma_paraquedista(P21, F),
    idade(P21, 45),
    em_algum_lugar_a_direita(P13, P9, F),
    em_algum_lugar_a_esquerda(P13, P21, F),
    
    % Nomes restantes: Isabela
    alguma_paraquedista(XN, F), nome(XN, isabela),
    
    % Idades restantes: 40
    alguma_paraquedista(XI, F), idade(XI, 40),

    % Saltos restantes: 10:00
    alguma_paraquedista(XS, F), salto(XS, '10:00'),

    % Profissões restantes: Corretora
    alguma_paraquedista(XP, F), profissao(XP, corretora),

    % Instrutores restantes: Eduardo (Conforme solicitado)
    alguma_paraquedista(XI2, F), instrutor(XI2, eduardo).

% paraquedista(Macacão, Nome, Salto, Idade, Profissão, Instrutor)

macacao(paraquedista(M,_,_,_,_,_), M).
nome(paraquedista(_,N,_,_,_,_), N).
salto(paraquedista(_,_,S,_,_,_), S).
idade(paraquedista(_,_,_,I,_,_), I).
profissao(paraquedista(_,_,_,_,P,_), P).
instrutor(paraquedista(_,_,_,_,_,I), I).

alguma_paraquedista(X, fila(X,_,_,_,_)).
alguma_paraquedista(X, fila(_,X,_,_,_)).
alguma_paraquedista(X, fila(_,_,X,_,_)).
alguma_paraquedista(X, fila(_,_,_,X,_)).
alguma_paraquedista(X, fila(_,_,_,_,X)).

exatamente_a_direita(X,Y,fila(Y,X,_,_,_)).
exatamente_a_direita(X,Y,fila(_,Y,X,_,_)).
exatamente_a_direita(X,Y,fila(_,_,Y,X,_)).
exatamente_a_direita(X,Y,fila(_,_,_,Y,X)).

exatamente_a_esquerda(X,Y,F) :-
 	exatamente_a_direita(Y,X,F).

em_algum_lugar_a_esquerda(X,Y,fila(X,Y,_,_,_)).
em_algum_lugar_a_esquerda(X,Y,fila(X,_,Y,_,_)).
em_algum_lugar_a_esquerda(X,Y,fila(X,_,_,Y,_)).
em_algum_lugar_a_esquerda(X,Y,fila(X,_,_,_,Y)).
em_algum_lugar_a_esquerda(X,Y,fila(_,X,Y,_,_)).
em_algum_lugar_a_esquerda(X,Y,fila(_,X,_,Y,_)).
em_algum_lugar_a_esquerda(X,Y,fila(_,X,_,_,Y)).
em_algum_lugar_a_esquerda(X,Y,fila(_,_,X,Y,_)).
em_algum_lugar_a_esquerda(X,Y,fila(_,_,X,_,Y)).
em_algum_lugar_a_esquerda(X,Y,fila(_,_,_,X,Y)).

em_algum_lugar_a_direita(X,Y,F) :-
    em_algum_lugar_a_esquerda(Y,X,F).

ao_lado_de(X,Y,F) :-
 	exatamente_a_esquerda(X,Y,F);
 	exatamente_a_esquerda(Y,X,F).

uma_das_pontas(X,fila(X,_,_,_,_)).
uma_das_pontas(X,fila(_,_,_,_,X)).

terceira_posicao(X,fila(_,_,X,_,_)).
primeira_posicao(X,fila(X,_,_,_,_)).
quarta_posicao(X,fila(_,_,_,X,_)).
segunda_posicao(X,fila(_,X,_,_,_)).
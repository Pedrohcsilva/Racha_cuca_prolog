# Racha_cuca_prolog
"Projeto da disciplina de Lógica para Engenharia de Computação: Resolução do problema 'Salto de Paraquedas' (Racha Cuca) implementada em Prolog.


# 🧩 Resolução de Quebra-Cabeça Lógico: Salto de Paraquedas (Prolog)

Este repositório contém o código-fonte em **Prolog** desenvolvido para a disciplina de Lógica, na Engenharia de Computação. O objetivo é resolver um complexo desafio de lógica de ordenação e associação.

O problema resolvido é o Racha Cuca de nível difícil: **"Salto de Paraquedas"**.

## 🚀 Sobre o Projeto

O código modela as 20 pistas do desafio como cláusulas lógicas (regras e fatos). A linguagem Prolog usa sua capacidade de **backtracking** para testar todas as possibilidades e encontrar a única combinação de paraquedistas, horários e instrutores que satisfaz todas as restrições.

## ⚙️ Como Rodar

Para executar o código e obter a solução, siga os passos abaixo:

1.  Salve o arquivo `salto_de_paraquedas.pl` em sua máquina.
2.  Abra o site https://swish.swi-prolog.org/
3.  Carregue o arquivo:
    ```prolog
    ?- ['salto_de_paraquedas.pl'].
    ```
4.  Consulte o predicado principal:
    ```prolog
     resolve(S).
    ```

## ✅ Saída Esperada

O programa retornará a solução única e correta, onde `S` é a estrutura final da fila:

```prolog
S = fila(paraquedista(vermelho,larissa,'9:00',40,publicitaria,alessandro),paraquedista(azul,camila,'9:30',30,empresaria,eduardo),paraquedista(branco,sofia,'10:00',35,atriz,luciano),paraquedista(amarelo,isabela,'11:00',45,arquiteta,jorge),paraquedista(verde,taina,'10:30',25,corretora,sergio))

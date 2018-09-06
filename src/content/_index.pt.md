---
title: "Página de Índice"
date: 2018-09-05
draft: false
type: page
---

# Introdução

JUDSYS é um projeto para desenvolver um novo padrão de assinatura digital, bem como aplicativos para usuários finais, com o objetivo de ser usado em escritórios e negócios.

## Princípios de Design

  1. Manter o mais simples possível sem sacrificar usabilidade.
  2. Ser fácil tanto para programadores quanto para usuários finais.
  3. Usável internacionalmente.
  4. Usar apenas algorítimos bem conhecidos.
  5. Preferir algorítimos resistentes a computadores quânticos.

## Status atual

A especificação não está nem na metade ainda.

# Contribua

Se você quiser ajudar ou comentar sobre esse projeto, [abra um issue no GitHub](https://github.com/JUDSYS/v1Spec/issues) (apenas em inglês) ou use um dos seguintes: [formulário de contato em português](https://goo.gl/forms/0ZvcYGGLDq9EA22C3) e [formulário de contato em inglês](https://goo.gl/forms/uijCieF4cWvsPTHX2).

# Motivações

Atualmente, o ITI, órgão responsável pela ICP-Brasil, indica três padrões: CAdES, XAdES e PAdES.

Como todos eles são baseados no X.509 que é usado no SSL, deveria haver uma abundância de boas bibliotecas de software e bons aplicativos para usuários finais para, pelo menos, um desses padrões. 

Esse não é o caso. Embora houve esforços para escrever bibliotecas de código aberto e aplicativos para a ICP-Brasil, eles são difíceis de achar e parecem inacabados e abandonados.

O ITI provê uma ferramenta online para verificação de assinaturas, mas apenas para o CAdES e não aprece funcionar bem.

PAdES é um monstro de seu próprio tipo. Na tentativa de replicar a experiência do papel no mundo digital, um arquivo PDF pode ser assinado, editado e reassinado por outra pessoa de forma com que ambos tenham assinado versões diferentes do documento no mesmo arquivo. Isso é tanto difícil de implementar, quanto difícil de explicar para os usuários finais.

Para deixar as coisas ainda piores, leitores de PDF quase nunca vem com as autoridades certificadores necessárias para verificar as assinaturas digitais da ICP-Brasil.

Talvez como resultado dessa bagunça de diferentes padrões, o ITI admite que ninguém é obrigado a aceitar assinaturas digitais no Brasil:

>Diante da autenticidade gerada pela utilização dos certificados digitais ICP-Brasil, é correto asseverar que todos (órgãos públicos, bancos, particulares, etc.) devem aceitá-lo?
>
>A resposta é negativa. Conforme visto, a ICP-Brasil confere sim validade jurídica às manifestações eletrônicas. Porém, nenhuma entidade ou órgão público, nem mesmo algum agente privado, é obrigado a aceitar, *ex lege*, os documentos eletrônicos assinados digitalmente.
>
>E isso por um motivo simples: inobstante vivermos em uma sociedade da informação, muitas entidades, tanto públicas quanto privadas, ainda não se encontram aderentes a esse novo paradigma tecnológico, de modo que podem, simplesmente, não ter os equipamentos necessários para receber, verificar e armazenar os documentos assinados digitalmente.  
>
>----
>
>Fonte: <http://www.iti.gov.br/perguntas-frequentes/41-perguntas-frequentes/567-questoes-juridicas#r21>.

Essa situação é inaceitável. Nós precisamos de um padrão de assinatura digital que:

1. Seja fácil para programadores implementarem, incluindo bibliotecas em várias linguagens.
2. Seja fácil de usar para pessoas comuns no dia a dia.
3. Tenha regras estritas para evitar problemas de interoperabilidade.
4. Tenha aceitação obrigatória por lei.

O JUDSYS é uma tentativa de criar um padrão de assinaturas digitais que atenda aos três primeiros pontos. E que, esperançosamente, atenda o quarto em um futuro (nem tão) próximo.


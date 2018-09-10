---
title: "Página de Índice"
date: 2018-09-09
draft: false
type: page
---

# Introdução

JUDSYS é um projeto para desenvolver um novo padrão de assinatura digital, bem como aplicativos para usuários finais, com o objetivo de ser usado em escritórios e negócios.

JUDSYS-1 é um padrão pensado para substituir o CMS/CAdES, XML-DSIG/XAdES, PAdES (PDF) e outros sistemas de assinatura digital.

O projeto JUDSYS tem por objetivo desenvolver tanto o padrão quanto aplicativos para usuários finais.

Isto é primariamente pensado para o Brasil, mas deve funcionar em outros países com mínimas ou até nenhuma mudança.

## Princípios de Design

  1. Ser o mais simples possível sem sacrificar usabilidade.
  2. Ser fácil tanto para programadores quanto para usuários finais.
  3. Priorizar interoperabilidade.
  4. Usável internacionalmente.
  5. Usar apenas algorítimos bem conhecidos e preferir aqueles resistentes a computadores quânticos.

## Status atual

A especificação não está nem na metade ainda.

## Por que o nome?

JUDSYS-1 significa: Padrão de Sistema de Assinaturas Digitais Unificado JSON (original em inglês: *JSON Unified Digital Signatures System Standard 1*).

Eu também gosto de como o nome soa como *judicial* e *juris*.

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

# Algumas funcionalidades e não-funcionalidades (muitas são apenas ideias ainda)

  * Suporte a Unicode em todos os campos.
  * Extensões de arquivo padronizadas.
  * Apenas dois tipos de assinatura: regular e com carimbo de tempo.
  * Apenas assinaturas desanexadas. Tisso torna backups, interoperabilidade e a vida do usuário mais fáceis.
  * Sintaxe JSON simples e consistente usando base64 para evitar problemas de canonização.
  * Menor número de algorítimos possível para facilitar a vida as implementações e a interoperabilidade.
  * Documento único com todas as regras. (carimbos de tempo, ACs, interação com hardware, interface de usuário e convenções de nomenclatura)
  * Qualquer um pode emitir comprovantes de atributo (uma ideia similar aos certificados de atributo). Isso facilita a adição do cargo da pessoas nas assinaturas e facilita a emissão de procurações.
  * APIs web padronizadas para autoridades de tempo e verificação de status dos certificados.
  * Regras sobre como misturar assinaturas em papel e as digitais.
  * Regras sobre "digitalização autenticada".

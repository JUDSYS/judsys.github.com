---
title: "Questões em Aberto"
date: 2018-09-09
draft: false
type: page
toc: true
---


Se você quiser ajudar ou comentar sobre esse projeto, [abra um issue no GitHub](https://github.com/JUDSYS/v1Spec/issues) (apenas em inglês) ou use um dos seguintes: [formulário de contato em português](https://goo.gl/forms/0ZvcYGGLDq9EA22C3) e [formulário de contato em inglês](https://goo.gl/forms/uijCieF4cWvsPTHX2).

## Seleção de ALgorítimos

Apenas um algoritmo será selecionado para cada uma das seguintes categorias: resumo digital (hash), criptografia simétrica, criptografia assimétrica, assinatura e derivação de chaves.

Essa restrição existe para facilitar as implementações do padrão.

| Função                   | Principais candidatos       |
|--------------------------|-----------------------------|
| Resumo digital (hash)    | [SHA-3-512]                 |
| Criptografia simétrica   | [AES]                       |
| Criptografia assimétrica | [RSA]                       |
| Assinatura               | [RSA], [ECDSA], [Ed25519]   |
| Derivação de chave       | [Argon2id]                  |

[SHA-3-512]: https://en.wikipedia.org/wiki/SHA-3
[AES]: https://en.wikipedia.org/wiki/Advanced_Encryption_Standard
[RSA]: https://en.wikipedia.org/wiki/RSA_(cryptosystem)
[ECDSA]: https://en.wikipedia.org/wiki/ECDSA
[Argon2id]: https://en.wikipedia.org/wiki/Argon2
[Ed25519]: https://en.wikipedia.org/wiki/EdDSA#Ed25519

## Geral

### Certificados sem Nome

Certificados sem nome são certificados auto-assinados que não carregam atributos sobre o titular, nem mesmo o nome.

Eles se destinam a permitir com que as pessoas comecem a usar o JUDSYS sem terem que pagar para uma AC (Autoridade Certificadora) emitir-lhes um certificado.

A ausência do nome tem por intenção ajudar na segurança, já que muitas pessoas provavelmente ignorariam mensagens lhes dizendo que o certificado não foi emitido por uma AC. O lado negativo, entretanto, é que as pessoas seriam forçadas a manterem uma espécie de agenda de contatos para saber qual certificado pertence a quem.

Essa agenda de contatos pode ser incorporada nos aplicativos e talvez até seja sincronizada com o Contatos Google ou um serviço similar.

Há também o problema das revogações. Um certificado sem nome pode acabar sendo irrevogável.

Embora eles possam lembra o PGP, eles não formam uma rede-de-confiança. Isso é intencional, já que as redes-de-confiança são difíceis de implementar e de explicar para os usuários.

### Mudanças Acidentais

Suponha que Alice assine um documento e envie os arquivos do documento e da assinatura para o Bob. Quando ele os recebe, ele abre o documento e acidentalmente adiciona uma linha em branco ou faz alguma outra modificação minúscula. A assinatura então se torna inválida.

Uma opção para resolver esse problema é usando mecanismos de correção como o [PAR2]. A ideia é informar o usuário que o documento foi alterado após a assinatura e perguntar se o ele quer corrigir o arquivo.

O lado negativo é que os usuários terão que trabalhar com três arquivos separados: o documento original, a assinatura e o arquivo de correção de erros.

[PAR2]: https://en.wikipedia.org/wiki/Parchive

### Certificados para Programas de Computador

Os programas de computador, quando agindo em nome de alguém, devem receber seus próprios certificados? Isso pode ajudar a segurança ao custo de tornar o JUDSYS-1 mais complicado.

Quem deve emitir esses certificados? As ACs (Autoridades Certificadoras) podem ser uma escolha óbvia, mas isso adiciona custos aos usuários finais. A outra opção é usar uma combinação de certificados sem nome e comprovantes de atributo.

### Celulares como Cartões Inteligentes

Os cartões inteligentes devem ser permitidos? Eles podem ajudar na segurança, mas geralmente é difícil de implementar suporte a coisas que usam equipamentos externos. No (um tanto comum) pior cenário, algumas implementações o suportarão e outras não, reduzindo portanto a interoperabilidade.

Uma possível solução é substituir os cartões inteligentes com celulares. O usuário teria um app instalado em seu celular que é uma implementação completa do JUDSYS-1, mas cujas chaves ficam no armazenamento (um tanto) seguro que apenas esse app tem acesso.

Para facilitar as coisas para o usuário, aplicativos de desktop e sites poderiam mostrar um QR Code com uma requisição de assinatura que informa o resumo digital (hash) e o tamanho do arquivo. O usuário então escanearia esse QR Code com seu app e confirmaria a assinatura com uma senha ou impressão digital (isso não é ideal, mas biometria pode ser mais segura que senhas burras tipo 0000).

Esse sistema com QR Code leva a alguns problemas (e se o atacante der o hash errado?), mas eles não parecem muito piores que uma implementação maligna ou um atacante substituindo o documento a ser assinado logo antes e logo depois do usuário assiná-lo.

### Conteúdo Dinâmico

As implementações devem ser obrigadas a informarem o usuário quando há conteúdo dinâmico? Quais formatos devem ser de verificação obrigatória?


Veja a seção [9.2. Dynamic Content](/specs/draft-judsys1-latest.html#rfc.section.9.2) da especificação do JUDSYS-1.

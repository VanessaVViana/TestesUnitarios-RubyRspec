Estória: Saque no Caixa Eletrônico
    Sendo um cliente que pe correntista do Ninja Bank
    Posso sacar dinheiro
    Para que eu consiga comprar em lugares que não aceitam débito ou crédito. (mesmo estando no século 21)

Scenario: Saque em conta corrente
    Given que eu tenho R$ 1000 em minha conta corrente
    When faço um saque de R$ 200
    Then meu saldo final deve ser R$ 800

Scenario: Não tenho saldo
    Given que eu tenho R$ 0 em minha conta
    When faço um saque de R$ 100
    And vejo a mensagem "Saldo insuficiente para saque :("
    Then meu saldo final deve ser R$ 0

Scenario: Tenho saldo mas não o suficiente
    Given que eu tenho R$ 500 em minha conta corrente
    When faço um saque de R$ 501
    And vejo a mensagem "Saldo insuficiente para saque :("
    Then meu saldo final deve ser R$ 500

Scenario: Limite por Saque :(
    Given que eu tenho R$ 1000 em minha conta corrente
    When faço um saque de R$ 701
    And vejo a mensagem "Limite máximo por saque é de R$ 700"
    Then meu saldo final deve ser R$ 1000

menu = """
[1] Depositar
[2] Sacar
[3] Extrato
[9] Sair
"""

#variáveis
saldo = 100
limite = 500
extrato = ""
numero_saques = 0
LIMITE_SAQUES = 3

while True:
     opcao = input(menu)
     if opcao == 1:
          valor = float(input("informe o valor do depósito:"))
          if valor > 0:   
               saldo += valor
               extrato += f"Depósito: R${valor:.2f}\n"
          else:
               print("Erro! esccolha um número válido")
     elif opcao == 2:
          valor = float(input("informe o valor do saque:"))
          excedeu_valor = valor  > saldo
          excedeu_limite = valor > limite
          excedeu_saques = numero_saques >= LIMITE_SAQUES
          if excedeu_saldo:
               print("Erro:Saldo insuficiente.")
          elif excedeu_limite:
               print("Erro:Limite insuficiente") 
          elif excedeu_saques:
               print("Erro!Saques insuficientes")
          elif valor > 0:
               saldo -= valor
               extrato += f"Depósito: R${valor:.2f}\n"
               numero_saques += 1
          else:
               print("Erro:Valor inválido")
     elif opcao == 3:
          print("\n=================== EXTRATO ===================")
          print("Não foram realizadas movimentações." if not extrato else extrato)
          print(f"\nSaldo: R${saldo:.2f}")
          print("=================================================")

     elif opcao == 9:
          break
     else: print("Erro!Escolha uma opção válida")



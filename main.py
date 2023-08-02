
#variáveis
saldo = 100

#métodos
def saque(valor):
     saldo -= valor
     return saldo 

def deposito(valor):
     if valor > 0:
        saldo += valor
        return saldo
    

def extrato():
     return
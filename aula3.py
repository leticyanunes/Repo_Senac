print('Bem vindo ao Konoha Hotel!!\n')
print('Tipos de quartos disponiveis:')
print('1- Quarto Gemin (R$ 120,00 por noite)')
print('2- Quarto Jounin (R$ 180,00 por noite)')
print('3- Suíte Hokage (R$ 250,00 por noite)')


while True:
    try:
        nome = input('Digite seu nome: ')
        break
    except: 
        print('Digite um nome válido')

while True: 
    try:
        dias = int(input('Quantos dias deseja permanecer em nosso hotel? '))
        break
    except: 
        print('Digite um número válido')

while True:
    try:
        quarto = input('Digite o número do quarto que deseja ficar: ')
        break
    except:
        print('Digite um número válido')



if quarto == '1':
    nome_quarto = 'Quarto Gemin'
    preco_noite = 120

elif quarto == '2':
    nome_quarto = 'Quarto Jounin'
    preco_noite = 180

elif quarto == '3':
    preco_noite = 250
    nome_quarto = 'Suíte Hokage'

else:
    print('Opção inválida. Encerrando o sistema')



valor = dias * preco_noite


print ('\n -------- Confirmação de reserva --------\n')
print(f'Nome do hóspede: {nome}')
print(f'Tipo de quarto: {nome_quarto}')
print(f'Número de noites: {dias}')
print(f'Preço total da estadia: {valor}')
print('Bem vindo ao Konoha Hotel!!\n')
print('Tipos de quartos disponiveis:')
print('1- Quarto Gemin (R$ 120,00 por noite)')
print('2- Quarto Jounin (R$ 180,00 por noite)')
print('3- Suíte Hokage (R$ 250,00 por noite)')


while True:
    try:
        nome = input('Digite seu nome: ')
        break
    except: 
        print('Digite um nome válido')

while True: 
    try:
        dias = int(input('Quantos dias deseja permanecer em nosso hotel? '))
        break
    except: 
        print('Digite um número válido')

while True:
    try:
        quarto = input('Digite o número do quarto que deseja ficar: ')
        break
    except:
        print('Digite um número válido')



if quarto == '1':
    nome_quarto = 'Quarto Gemin'
    preco_noite = 120

elif quarto == '2':
    nome_quarto = 'Quarto Jounin'
    preco_noite = 180

elif quarto == '3':
    preco_noite = 250
    nome_quarto = 'Suíte Hokage'

else:
    print('Opção inválida. Encerrando o sistema')



valor = dias * preco_noite


print ('\n -------- Confirmação de reserva --------\n')
print(f'Nome do hóspede: {nome}')
print(f'Tipo de quarto: {nome_quarto}')
print(f'Número de noites: {dias}')
print(f'Preço total da estadia: {valor}')

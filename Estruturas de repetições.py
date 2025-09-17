'''contador = 1

while contador <= 5:
    print(f'Contador = {contador}')
    contador += 1'''

'''senha = ''

while senha != '1234':
    senha = input('Digite a senha: ').strip() #apagar espaços
    if senha == '1234':
        print('Acesso Liberado')
    else:
     print('Senha incorreta.Digite novamente')'''

'''for i in range(0,31,10):
    print(i)'''


'''while True: 

     numero = int(input('Digite um número maior que 10: '))
       
     if numero > 10:
        print('Esse número é maior que 10')
        break
    
     else:
        print('Número inválido.Digite outro número')'''

'''for i in range(1,11):
    print(f'7 x {i} = {7*i}')'''


'''contador = 0

while contador <= 20:
    print(contador)
    contador +=2'''

#cliente = ('joao', 22, 4800.50, 'Rua jota, N80') -- tupla
#cliente = ['joao', 22, 4800.50, 'Rua jota, N80'] -- lista
#print(cliente[2]) --- aparece o segundo indice (salario)
    
'''cliente = ['joao', 22, 4800.50, 'Rua jota, Nº80']

telefone = 21985568641

cliente.append(telefone)
print(cliente)

for i in cliente:
    print(i)'''
#.upper().strip() upper = tudo maiusculo/ strip = apagar espaços

produtos = []

compras = int(input('Quantos produtos deseja cadastrar? '))
contador = 0

while True:
    try:
        nome = input(f'Digite o nome do produto {contador+1}: ')
        valor = float(input(f'Digite o valor do produto {contador+1}: '))
        produtos.append((nome, valor))
        contador +=1
        if contador == compras:
            break
    except:
        print('Digite um valor válido')

print('\nLista de produtos: ')
for nome,valor in produtos:
    print(f'{nome} -- R$ {produtos}')


'''print('1\n2\n3\n4')

while True:
    try:
        opcao = int(input('opção: '))
        if opcao in [1,2,3,4]:
            print('opção ok')
            break
        else: 
            print('Opção inválida')
    except:
        print('Digite um número válido')'''

avaliacao1 = float(input('Digite a nota da primeira avaliação: '))
avaliacao2 = float(input('Digite a nota da segunda avaliação: '))

avaliacao3 = None 

while True:
    optativa = input('Você realizou a terceira avaliação?(sim/não) ')
    
    if optativa == "sim":
        avaliacao3 = float(input('Qual sua nota na terceira avaliação? '))

    menor_nota = min(avaliacao1, avaliacao2)

    if avaliacao3 > menor_nota:
        if avaliacao1 == menor_nota:
            avaliacao1 = avaliacao3
    else:
        avaliacao2 = avaliacao3
        break

    if optativa == "nao":
        print('Ok, então foram duas avaliações!!')
        break
    else:
        print("Resposta Inválida, digite apenas 'sim' ou 'nao' " )

media = (avaliacao1 + avaliacao2) / 2

print(f'Sua média é de {media:.1f} e sua situação é de: ')

if media >= 6: 
    situacao = print('Aprovado')

elif media < 3:
    situacao = print('Reprovado')

else:
   situacao = print('Recuperação')


    







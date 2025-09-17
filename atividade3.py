inicio_dia = int(input('Digite a marcação do odômetro no início do dia (em km): '))
fim_dia = int(input('Digite a marcação do odômetro no fim do dia (em km): '))
combustivel_gasto = float(input('Digite a quantidade de combustível gasto no dia (em litros): '))
valor =  float(input('Digite o valor total recebido pelos passageiros (em R$): '))

distancia = fim_dia - inicio_dia
media_de_consumo = distancia / combustivel_gasto
gasto_combustivel = combustivel_gasto * 4.87
lucro = valor - gasto_combustivel

print(f'A distância total percorrida no dia foi de {distancia} km.')
print(f'A média de consumo do táxi foi de {media_de_consumo:.2f} km/l.')
print(f'O gasto total com combustível no dia foi de R$ {gasto_combustivel:.2f}.')
print(f'O lucro total do dia foi de R$ {lucro:.2f}.')


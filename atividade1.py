potencia = int(input("Digite a potência: "))
comprimento = float(input("Digite o comprimento em metros: "))
largura = float(input("Digite a largura em metros: "))

area = comprimento * largura
potencia_total = area * 3
numero_de_lampadas = potencia_total / potencia


print(f'Serão necessárias {numero_de_lampadas:.0f} lâmpadas para iluminar a área de {area}m².')
print(f'Potência total necessária: {potencia_total}W.')



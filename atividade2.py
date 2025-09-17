comprimento = float(input("Digite o comprimento da cozinha em metros: "))
largura = float(input("Digite a largura da cozinha em metros: "))
altura = float(input("Digite a altura da cozinha em metros: "))

area = 2 * (comprimento * altura + largura * altura)

caixas = area / 1.5

print(f'A area total das paredes da cozinha é de {area}m² e serão necessárias {caixas:.0f} caixas de azulejos.')
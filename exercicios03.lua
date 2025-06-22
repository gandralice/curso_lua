-- 1. Faça um Programa que peça um número e então mostre a mensagem O número informado foi ...

print("Entre com um numero: ")
local num = tonumber(io.read())
print("O numero informado foi "..num)

-- 2. Faça um Programa que peça dois números e imprima a soma.

local n1 = tonumber(io.read())
local n2 = tonumber(io.read())
print("Soma: "..(n1+n2))

-- 3. Faça um Programa que peça as 4 notas bimestrais e mostre a média. 

print("Entre com 4 notas: ")
local nota1 = tonumber(io.read())
local nota2 = tonumber(io.read())
local nota3 = tonumber(io.read())
local nota4 = tonumber(io.read())
print("Media: "..(nota1+nota2+nota3+nota4)/4)

-- 4. Faça um Programa que converta metros para centímetros. 

print("Metros :")
local metros = tonumber(io.read())
print(metros.." em centimetros: "..(metros*100))

-- 5. Faça um programa que peça a altura e o comprimento de um quadrilátero e mostre a sua área.

print("Altura: ")
local altura = tonumber(io.read())
print("Comprimento: ")
local compr = tonumber(io.read())
print("Area: "..(altura*compr))

-- 6. Tendo como dados de entrada a altura de uma pessoa, construa um algoritmo que calcule seu
-- peso ideal, usando a seguinte fórmula: (72.7*altura) – 58

print("Informe sua altura: ")
local altura = tonumber(io.read())
local peso_ideal = (72.7*altura)-58
print("Peso ideal: "..peso_ideal)

-- 7. Faça um Programa que pergunte quanto você ganha por hora e o número de horas trabalhadas
-- no mês. Calcule e mostre o total do seu salário no referido mês.

print("valor ganho por hora: ")
local val_h = tonumber(io.read())
print("horas trabalhadas: ")
local horas = tonumber(io.read())
print("Total: R$"..(val_h*horas))

-- 8. Faça um programa que peça o raio de um círculo e calcule a sua área.

print("raio do circulo: ")
local raio = tonumber(io.read())
print("Area: "..(math.pi*(raio^2)))

-- 9. Faça um Programa que peça 2 números inteiros e um número real. Calcule e mostre:
-- o produto do dobro do primeiro com metade do segundo. a soma do triplo do primeiro
-- com o terceiro. o terceiro elevado ao cubo.

print("Entre com um num inteiro: ")
local int1 = tonumber(io.read())
print("Outro num inteiro: ")
local int2 = tonumber(io.read())
print("Entre com um num real")
local real = tonumber(io.read())

local calc1 = (int1*2)*(int2/2)
local calc2 = (int1*3)+real
local calc3 = real^3
print("Resultados: "..calc1..", "..calc2..", "..calc3)

-- 10. Faça um programa que peça o tamanho de um arquivo para download (em MB)
-- e a velocidade de um link de Internet (em Mbps), calcule e informe o tempo
-- aproximado de download do arquivo usando este link (em minutos).

print("tam do arquivo em MB: ")
local tam = tonumber(io.read())
print("velocidade do link em Mbps: ")
local vel = tonumber(io.read())
local segundos = (tam*8)/vel
local minutos = segundos/60
print("tempo aprox de download: "..minutos.." min.")

-- 11. Faça um programa para uma loja de tintas. O programa deverá pedir o tamanho em metros
-- quadrados da área a ser pintada. Considere que a cobertura da tinta é de 1 litro para cada
-- 3 metros quadrados e que a tinta é vendida em latas de 18 litros, que custam R$ 80,00.
-- Informe ao usuário a quantidades de latas de tinta a serem compradas e o preço total.

print("tam da area a ser pintada(m^2): ")
local area = tonumber(io.read())
local litros = area/3
local latas = math.ceil(litros/18)
local val = latas*80.00
print("Quantidade de latas de tinta a serem compradas: "..latas..". Valor tota: R$"..val)
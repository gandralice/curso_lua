-- 1. Faça um programa que peça dois numeros e mostre o maior deles.
print("Entre com dois numeros: ")
local n1 = tonumber(io.read())
local n2 = tonumber(io.read())
print("Maior: ".. math.max(n1,n2))

-- ou:
print("Entre com dois numeros: ")
local num1 = tonumber(io.read())
local num2 = tonumber(io.read())
if num1>num2 then
  print("Maior: ".. num1)
else
  print("Maior: ".. num2)
end

-- 2. Faça um Programa que peça um valor e mostre se o valor é positivo ou negativo.

local num = tonumber(io.read())
if num<0 then
  print("negativo")
else
  print("positivo")
end

-- 3. Faça um Programa que verifique se uma letra digitada é "F" ou "M". Conforme a letra
-- escrever: F - Feminino, M - Masculino, Sexo Inválido

local sexo = io.read()
if sexo=="M" or sexo=="m" then
  print("masculino")
elseif sexo=="F" or sexo=="f" then
  print("feminino")
else
  print("sexo invalido")
end

-- 4. Faça um programa para a leitura de duas notas parciais de um aluno. O programa deve
-- calcular a média alcançada por aluno e apresentar: A mensagem "Aprovado", se a média
-- alcançada for maior ou igual a sete; A mensagem "Reprovado", se a média for menor do que
-- sete; A mensagem "Aprovado com Distinção", se a média for igual a dez.

print("insira as notas do aluno: ")
local nota1 = tonumber(io.read())
local nota2 = tonumber(io.read())

if (nota1+nota2)/2>=7 then
  if (nota1+nota2)/2==10 then
    print("Aprovado com distincao")
  else
    print("Aprovado")
  end
else
  print("Reprovado")
end

-- 5. Faça um Programa que peça um número inteiro e determine se ele é par ou ímpar

print("digite um numero int: ")
local n = tonumber(io.read())
if n then
  if n % 2 == 0 then
    print("par")
  else
  print("impar")
  end
else
  print("erro")
end

-- 6. Faça um Programa que peça um número e informe se o número é inteiro ou decimal.

print("num: ")
local num = tonumber(io.read())
local int, dec = math.modf(num)

if dec ~= 0 then
  print("decimal")
else
  print("inteiro")
end

-- 7, Faça um Programa que leia 2 números e em seguida pergunte ao
-- usuário qual operação ele deseja realizar.

local a = tonumber(io.read())
local b = tonumber(io.read())
print("qual operacao deseja realizar? (+, -, *, /)")
local op = io.read()
if op=='+' then
  print("soma= ".. a+b)
elseif op=='-' then
  print("subtracao= ".. a-b)
elseif op=='*' then
  print("multiplicacao= ".. a*b)
elseif op=='/' then
  if b==0 then
    print("invalido")
  else
    print("divisao= ".. a/b)
  end
else
  print("erro")
end

-- 8. Faça um Programa que peça um número correspondente a um determinado
-- ano e em seguida informe se este ano é ou não bissexto.

local ano = tonumber(io.read())

if (ano%4==0 and ano%100~=0) or ano%400==0 then
  print("bissexto")
else
  print("nao e bissexto")
end

-- 9. Faça um Programa que leia três números e mostre o maior deles.

print("Entre com tres numeros: ")
local n1 = tonumber(io.read())
local n2 = tonumber(io.read())
local n3 = tonumber(io.read())
print("Maior: ".. math.max(n1,n2,n3))

-- 10. Faça um programa que peça uma nota, entre zero e dez. Mostre uma mensagem caso o
-- valor seja inválido e continue pedindo até que o usuário informe um valor válido.

print("digite uma nota: (0-10)")
local nota
repeat
  nota = tonumber(io.read())
  if nota<0 or nota>10 then
    print("valor invalido")
  end
until nota>=0 and nota<=10

-- 11. Faça um programa que imprima na tela os números de 1 a 20, um abaixo do outro.

for i=1,20 do
  print(i)
end

-- 12. Faça um programa que imprima na tela apenas os números ímpares entre 1 e 50.

for i=1,50 do
  if i%2~=0 then
    print(i)
  end
end

-- 13. Faça um programa que receba dois números inteiros e gere os números
-- inteiros que estão no intervalo compreendido por eles.

local num1 = tonumber(io.read())
local num2 = tonumber(io.read())

if num1>num2 then
  for i=num2,num1 do
    print(i)
  end
else
  for i=num1,num2 do
    print(i)
  end
end

-- 14. Desenvolva um gerador de tabuada, capaz de gerar a tabuada de qualquer
-- número inteiro entre 1 e 10. O usuário deve informar de qual número ele deseja ver a tabuada.

local num

repeat
  num = tonumber(io.read())
  if num<1 or num>10 then
    print("valor invalido")
  end
until num>=1 and num<=10

print("tabuada do " .. num .. " :")
for i=1,10 do
  print(num.." x "..i.." = "..num*i)
end
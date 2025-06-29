-- 1. Crie uma tabela chamada aluno que armazena as seguintes informações de um estudante:
-- nome, idade e curso. Imprima cada uma dessas informações no console.

local aluno = {
  nome = "Alice",
  idade = 20,
  curso = "ADS"
}

for chave, valor in pairs(aluno) do
  print(chave, valor)
end

-- 2. Crie um array que armazene as notas de um aluno em cinco disciplinas. Calcule e
-- imprima a média das notas.

local notas = {0, 0, 0, 0, 0}
local soma = 0
for i=1, #notas do
  print("Digite a " .. i .. " nota: ")
  local nota = tonumber(io.read())
  notas[i] = nota
  if nota then
    soma = soma + nota
  end
end

print("Media: ".. soma/5)

-- 3. Implemente uma função chamada somaElementos que recebe uma tabela de números
-- e retorna a soma de todos os elementos.

local tabNums = {10, 5, 3 ,8}

local function somaElementos(t)
  local sm = 0
  for _, num in ipairs(t) do
    sm= sm + num
  end
  return sm
end 

print("Soma: ".. somaElementos(tabNums))

-- 4. Crie uma função que aceita múltiplos argumentos e retorna o produto de todos eles.

local function multi (...)
  local produto = 1
  for _, v in pairs({...}) do
    if type(v) == "number" then
      produto = produto * v
    end
  end
  return produto
end

print("o produto é: ".. multi(2, 2, 10))

-- 5. Escreva uma função que divide dois números. Utilize variáveis locais
-- e controle o escopo da função para evitar acessos externos.

local function divide()
  print("Insira o dividendo: ")
  local a = tonumber(io.read())
  print("Insira o divisor: ")
  local b = tonumber(io.read())
  if not a or not b then
    return false, "Erro"
  end
  if b == 0 then
    return false, "Erro"
  end
  local resultado = a/b
  return true, resultado  
end
local status, result = divide()
if status then
  print("Resultado: ".. result)
else 
  print("Falha na operacao.")
end

-- 6. Crie uma função que recebe uma tabela e uma função de filtro. A função filtra
-- deve retornar uma nova tabela contendo apenas os elementos que satisfazem a condição
-- definida pela função de filtro.Ex: Use para encontrar apenas os números pares de uma tabela.
  
local tab = {1, 4, 7, 8, 2}

local function filtro ()
  local tabPar = {}
  for _, v in ipairs(tab) do
    if v % 2 == 0 then
      table.insert(tabPar, v)
    end
  end
  return tabPar
end

local resultFiltro = filtro()

print("Resultado: ".. table.concat(resultFiltro, ", "))

-- 7. Implemente uma fila de atendimento em que novos clientes são adicionados à fila e o próximo
-- cliente é atendido em ordem de chegada. Crie funções adicionaCliente e atendeCliente.

local fila = {}

local function adicionaCliente (fila, cliente)
  table.insert(fila, cliente)
end

local function atendeCliente (fila)
  return table.remove(fila, 1)
end

adicionaCliente(fila, "nome1")
adicionaCliente(fila, "nome2")
adicionaCliente(fila, "nome3")

for i, v in ipairs(fila) do
  print(i, v)
end

atendeCliente(fila)

for i, v in ipairs(fila) do
  print(i, v)
end
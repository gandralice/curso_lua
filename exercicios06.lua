-- 01
local Pedido = {}
Pedido.__index = Pedido

function Pedido:new(c, v)
  local obj = {}
  obj.cliente = c
  obj.valor = v

  setmetatable(obj, self)

  return obj
end
function Pedido.somarPedidos(p1, p2)
  return p1.valor + p2.valor
end
function Pedido:exibirPedido()
  print("Cliente: " .. self.cliente .. ", Valor: R$" .. self.valor)
end

print("Pedidos:")

local pedido1 = Pedido:new("Ana", 100)
local pedido2 = Pedido:new("Alice", 50)
local pedido3 = Pedido:new("Amanda", 100)

pedido1:exibirPedido()
pedido2:exibirPedido()
pedido3:exibirPedido()

print("A soma dos pedidos de " .. pedido1.cliente .. " e " .. pedido2.cliente .. " é: R$" .. Pedido.somarPedidos(pedido1, pedido2))
print("A soma dos pedidos de " .. pedido1.cliente .. " e " .. pedido3.cliente .. " é: R$" .. Pedido.somarPedidos(pedido1, pedido3))


-- 02
local Funcionario = {}
Funcionario.__index = Funcionario

function Funcionario:new(nome, salBase)
  local obj = {nome = nome, salBase = salBase}
  setmetatable(obj, self)
  return obj
end
function Funcionario:calcularSalario()
  error("function não implementada!")
end

local Gerente = setmetatable({}, {__index = Funcionario})

function Gerente:new(nome, salBase)
  local obj = Funcionario:new(nome, salBase)
  setmetatable(obj, {__index = Gerente})
  return obj
end

function Gerente:calcularSalario()
  return self.salBase * 1.2
end

local Vendedor = setmetatable({}, {__index = Funcionario})

function Vendedor:new(nome, salBase, quant, comissao)
  local obj = Funcionario:new(nome, salBase)
  obj.quant = quant or 0
  obj.comissao = comissao or 0
  setmetatable(obj, {__index = Vendedor})
  return obj
end

function Vendedor:calcularSalario()
  local comissaoTotal = self.quant * self.comissao
  return self.salBase + comissaoTotal
end

local gerente1 = Gerente:new("nome1", 22000)
print(gerente1:calcularSalario())
local vendedor1 = Vendedor:new("nome2", 2000, 30, 5)
print(vendedor1:calcularSalario())

-- 03
local Veiculo = {}
Veiculo.__index = Veiculo

function Veiculo:new(marca, modelo, ano)
  local ins = {}
  ins.marca = marca
  ins.modelo = modelo
  ins.ano = ano
  setmetatable(ins, self)
  return ins
end

function Veiculo:info()
  return string.format("Veiculo: %s %s (%d)", self.marca, self.modelo, self.ano)
end

local Carro = setmetatable({}, {__index = Veiculo})

function Carro:new(marca, modelo, ano, numPortas)
  local ins = Veiculo:new(marca, modelo, ano)
  setmetatable(ins, self)
  self.__index = self
  ins.numPortas = numPortas
  return ins
end

function Carro:info()
  return Veiculo.info(self), self.numPortas
end

local Moto = setmetatable({}, {__index = Veiculo})


function Moto:new(marca, modelo, ano, cilindradas)
  local ins = Veiculo:new(marca, modelo, ano)
  setmetatable(ins, self)
  self.__index = self
  ins.cilindradas = cilindradas
  return ins
end 

function Moto:info()
  return Veiculo.info(self), self.cilindradas
end


local ve1 = Veiculo:new("mar", "mod", 2024)
print(ve1:info())

local ca1 = Carro:new("Ford", "Ka", 2020, 4)
print(ca1:info())

local mo1 = Moto:new(".", ".", 2019, 100)
print(mo1:info())
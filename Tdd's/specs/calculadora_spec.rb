require 'rspec'
require_relative '../src/calculadora'

describe('calculadora') do
    calculadora = Calculadora.new #instancia a classe Calculadora

                #usando metodo de soma
    it('Deve somar dois inteiros positivos')do #testa a soma de dois inteiros positivos
        expect(calculadora.soma(4,5)).to eq 9
    end
    it('Deve somar um numero qualquer com 0')do #testa a soma de um inteiro com 0
        expect(calculadora.soma(9,0)).to eq 9
    end
    it("Deve somar numeros negativos")do #testa a soma de dois numeros negativos
        expect(calculadora.soma(-4,-5)).to eq -9
    end
    it('Deve somar um numero negativo e outro positivo')do #testa a soma de um numero negativo e outro positivo
        expect(calculadora.soma(-4,5)).to eq 1
    end

            #usando metodo de subtracao
    it("Deve subtrair dois inteiros positivos")do #testa a subtracao de dois inteiros positivos
        expect(calculadora.subtracao(4,5)).to eq -1
    end
    it("Deve subtrair um numero qualquer com 0")do #testa a subtracao de um inteiro com 0
        expect(calculadora.subtracao(9,0)).to eq 9
    end
    it("Deve subtrair numeros negativos")do #testa a subtracao de dois numeros negativos
        expect(calculadora.subtracao(-4,-5)).to eq 1
    end
    it('Deve subtrair um numero negativo e outro positivo')do #testa a subtracao de um numero negativo e outro positivo
        expect(calculadora.subtracao(-4,5)).to eq -9
    end
    
            #usando metodo de multiplicacao
    it("Deve multiplicar dois inteiros positivos")do #testa a multiplicacao de dois inteiros positivos
        expect(calculadora.multiplicacao(4,5)).to eq 20
    end
    it("Deve multiplicar um numero qualquer com 0")do #testa a multiplicacao de um inteiro com 0
        expect(calculadora.multiplicacao(9,0)).to eq 0
    end
    it("Deve multiplicar numeros negativos")do #testa a multiplicacao de dois numeros negativos
        expect(calculadora.multiplicacao(-4,-5)).to eq 20
    end
    it('Deve multiplicar um numero negativo e outro positivo')do #testa a multiplicacao de um numero negativo e outro positivo
        expect(calculadora.multiplicacao(-4,5)).to eq -20
    end

            #usando metodo de divisao
    it("Deve dividir dois inteiros positivos")do #testa a divisao de dois inteiros positivos
        expect(calculadora.divisao(4,5)).to eq 0.8
    end
    it("Deve dividir um numero qualquer com 0")do #testa a divisao de um inteiro com 0
        expect(calculadora.divisao(9,0)).to eq "Não é possível dividir por 0!"
    end
    it("Deve dividir numeros negativos")do #testa a divisao de dois numeros negativos
        expect(calculadora.divisao(-4,-5)).to eq 0.2
    end
    it('Deve dividir um numero negativo e outro positivo')do #testa a divisao de um numero negativo e outro positivo
        expect(calculadora.divisao(-4,5)).to eq -0.8
    end

            #usando metodo de raiz
    it("Deve calcular a raiz quadrada de um numero positivo")do #testa a raiz quadrada de um numero positivo
        expect(calculadora.raiz(9)).to eq 3
    end
    it("Deve calcular a raiz quadrada de um numero negativo")do #testa a raiz quadrada de um numero negativo
        expect(calculadora.raiz(-9)).to eq "Não é possível calcular a raiz quadrada de um número negativo!"
    end
    it("Deve calcular a raiz quadrada de um numero qualquer")do #testa a raiz quadrada de um numero qualquer
        expect(calculadora.raiz(4)).to eq 2
    end

            #usando metodo de potencia
    it("Deve calcular a potencia de um numero positivo")do #testa a potencia de um numero positivo
        expect(calculadora.potencia(9,2)).to eq 81
    end
    it("Deve calcular a potencia de um numero negativo")do #testa a potencia de um numero negativo
        expect(calculadora.potencia(-9,2)).to eq "Não é possível calcular a potencia de um número negativo!"
    end
    it("Deve calcular a potencia de um numero qualquer")do #testa a potencia de um numero qualquer
        expect(calculadora.potencia(4,2)).to eq 16
    end
end



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
        expect(calculadora.subtracao(-4,-5)).to eq -9
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
        expect(calculadora.divisao(4,5)).to eq 0
    end

    it("Deve dividir um numero qualquer com 0")do #testa a divisao de um inteiro com 0
        expect(calculadora.divisao(9,0)).to eq "Não é possível dividir por 0!" #ZeroDivisionError
    end

    it("Deve dividir um numero qualquer com 0")do #testa a divisao de um inteiro com 0
        expect(calculadora.divisao(9,0)).to eq "Não é possível dividir por 0!" #ZeroDivisionError
    end
    it("Deve dividir numeros negativos")do #testa a divisao de dois numeros negativos
        expect(calculadora.divisao(-4,-5)).to eq 0
    end
    it('Deve dividir um numero negativo e outro positivo')do #testa a divisao de um numero negativo e outro positivo
        expect(calculadora.divisao(-4,5)).to eq -1
    end

    it("Deve dividir numeros negativos")do #testa a divisao de dois numeros negativos
        expect(calculadora.divisao(-10,-2)).to eq 5
    end
    it('Deve dividir um numero negativo e outro positivo')do #testa a divisao de um numero negativo e outro positivo
        expect(calculadora.divisao(-100,2)).to eq -50
    end

            #usando metodo de raiz
    it("Deve calcular a raiz quadrada de um numero positivo")do #testa a raiz quadrada de um numero positivo
        expect(calculadora.raiz(9)).to eq 3
    end
    it("Deve calcular a raiz quadrada de um numero negativo")do #testa a raiz quadrada de um numero negativo
        expect(calculadora.raiz(-9)).to eq "Não é possível calcular a raiz de um número negativo!" ######Duvida do que colocar aqui!!!#####
    end  #Math::DomainError
    it("Deve calcular a raiz quadrada de um numero qualquer")do #testa a raiz quadrada de um numero qualquer
        expect(calculadora.raiz(4)).to eq 2
    end
    it("Deve calcular a raiz quadrada de um numero 0")do
        expect(calculadora.raiz(0)).to eq 0
    end

            #usando metodo de potencia
    it("Deve calcular a potencia de um numero positivo")do #testa a potencia de um numero positivo
        expect(calculadora.potencia(9,2)).to eq 81
    end
    it("Deve calcular a potencia de um numero negativo")do #testa a potencia de um numero negativo
        expect(calculadora.potencia(-9,2)).to eq 81
    end
    it("Deve calcular a potencia de 0")do
     expect(calculadora.potencia(0,2)).to eq 0
    end


            #usando metodo seno coscendo e tangente
    it("Deve calcular o seno de um numero positivo")do #testa o seno de um numero positivo
        expect(calculadora.seno(90)).to eq 0.8939966636005579
    end
    it("Deve calcular o seno de um numero negativo")do #testa o seno de um numero negativo
        expect(calculadora.seno(-90)).to eq -0.8939966636005579
    end
    it("Deve calcular o seno de um numero qualquer")do #testa o seno de um numero qualquer
        expect(calculadora.seno(45)).to eq 0.8509035245341184
    end
    it("Deve calcular o cosseno de um numero positivo")do #testa o cosseno de um numero positivo
        expect(calculadora.cosseno(90)).to eq  -0.4480736161291701
    end
    it("Deve calcular o cosseno de um numero negativo")do #testa o cosseno de um numero negativo
        expect(calculadora.cosseno(-90)).to eq -0.4480736161291701
    end
    it("Deve calcular o cosseno de um numero qualquer")do #testa o cosseno de um numero qualquer
        expect(calculadora.cosseno(45)).to eq 0.5253219888177297
    end
    it("Deve calcular a tangente de um numero positivo")do #testa a tangente de um numero positivo
        expect(calculadora.tangente(90)).to eq -1.995200412208242
    end
    it("Deve calcular a tangente de um numero negativo")do #testa a tangente de um numero negativo
        expect(calculadora.tangente(-90)).to eq 1.995200412208242
    end
    it("Deve calcular a tangente de um numero qualquer")do #testa a tangente de um numero qualquer
        expect(calculadora.tangente(45)).to eq 1.6197751905438615
    end
    
    #usando metodo de fatoracao
    it("Deve calcular a fatoracao de um numero positivo")do #testa a fatoracao de um numero positivo
        expect(calculadora.fatorial(9)).to eq 362880
    end
    it("Deve calcular a fatoracao de um numero negativo")do #testa a fatoracao de um numero negativo
        expect(calculadora.fatorial(-9)).to eq 1  ######Duvida do que colocar aqui!!!#####
    end
    it("Deve calcular a fatoracao de 0")do
        expect(calculadora.fatorial(0)).to eq 1
    end

    #usando metodo fatorial recursivo
    it("Deve calcular a fatoracao de um numero positivo")do #testa a fatoracao de um numero positivo
        expect(calculadora.fatorial_recursivo(9)).to eq 362880
    end
    it("Deve calcular a fatoracao de um numero negativo")do #testa a fatoracao de um numero negativo
        expect(calculadora.fatorial_recursivo(-9)).to eq 1  ######Duvida do que colocar aqui!!!#####
    end
    it('Deve calcular a fatoracao de um numero 0')do
        expect(calculadora.fatorial_recursivo(0)).to eq 1
    end

    it("Deve retornar pi")do
        expect(calculadora.pi).to eq 3.141592653589793
    end
    it("Deve retornar um numero que nao seja pi")do
        expect(calculadora.pi).not_to eq 777 #Raffa moreira mano
    end

    #usando metodo de porcentagem
    it("Deve calcular a porcentagem de um numero positivo")do #testa a porcentagem de um numero positivo
        expect(calculadora.porcentagem(70,20)).to eq 14
    end
    it("Deve calcular a porcentagem de um numero negativo")do #testa a porcentagem de um numero negativo
        expect(calculadora.porcentagem(-70,20)).to eq -14
    end
    it("Deve calcular a porcentagem de 0")do #testa a porcentagem de um numero qualquer
        expect(calculadora.porcentagem(0,20)).to eq 0
    end

    #usando metodo de cubo
    it("Deve calcular o cubo de um numero positivo")do #testa o cubo de um numero positivo
        expect(calculadora.cubo(9)).to eq 729
    end
    it("Deve calcular o cubo de um numero negativo")do #testa o cubo de um numero negativo
        expect(calculadora.cubo(-9)).to eq -729
    end
    it("Deve calcular o cubo de 0")do
        expect(calculadora.cubo(0)).to eq 0
    end

    #usando metodo de delta
    it("Deve calcular o delta de dois numeros positivos")do #testa o delta de dois numeros positivos
        expect(calculadora.delta(2,1,1)).to eq -7
    end
    it("Deve calcular o delta de dois numeros negativos")do #testa o delta de dois numeros negativos
        expect(calculadora.delta(-2,-1,-1)).to eq -7
    end

    #usando metodo logatimo
    it("Deve calcular o logaritmo de um numero positivo")do #testa o logaritmo de um numero positivo
        expect(calculadora.logaritmo(2)).to eq 0.301029995663981
    end
    it("Deve calcular o logaritmo de um numero negativo")do #testa o logaritmo de um numero negativo
        expect(calculadora.logaritmo(-2)).to eq "Não é possível calcular o logaritmo de um número negativo!"
    end
    it("Deve calcular o logaritmo de 0")do
        expect(calculadora.logaritmo(0)).to eq -Float::INFINITY
    end
    
    #usando metodo bhaskara
    it("Deve calcular a Bhaskara de dois numeros positivos")do #testa a Bhaskara de dois numeros positivos
        expect(calculadora.bhaskara(10,20,-30)).to eq [1.0, -3.0]
    end
    it("Deve calcular a Bhaskara quando as raizes nao forem reais")do 
        expect(calculadora.bhaskara(10,20,30)).to eq "Equação não possui raízes reais"
    end

    #usando metodo raiz enésima
    it("Deve calcular a raiz enésima de um numero positivo")do #testa a raiz enésima de um numero positivo
        expect(calculadora.raiz_enesima(10,36)).to eq 1.0715193052376064
    end
    it("Deve calcular a raiz enésima de um numero negativo")do #testa a raiz enésima de um numero negativo
        expect(calculadora.raiz_enesima(-10,36)).to eq  1.0667638646324789+0.10083887450413744i
    end
    it("Deve calcular a raiz enésima de 0")do
        expect(calculadora.raiz_enesima(0,36)).to eq 0
    end

    #usando metodo media
    it("Deve calcular a media de dois numeros positivos")do #testa a media de dois numeros positivos
        expect(calculadora.media(10,20)).to eq 15
    end
    it("Deve calcular a media de dois numeros negativos")do #testa a media de dois numeros negativos
        expect(calculadora.media(-10,-20)).to eq -15
    end
    it("Deve calcular a media de dois numeros iguais")do #testa a media de dois numeros iguais
        expect(calculadora.media(10,10)).to eq 10
    end
    it("Deve calcular a media de 0")do
        expect(calculadora.media(0,0)).to eq 0
    end

    #usando metodo moda
    it("Deve calcular a moda de dois numeros positivos")do #testa a moda de dois numeros positivos
        expect(calculadora.moda(10,20)).to eq 20
    end
    it("Deve calcular a moda de dois numeros negativos")do #testa a moda de dois numeros negativos
        expect(calculadora.moda(-10,-20)).to eq -10
    end
    it("Deve calcular a moda de dois numeros iguais")do #testa a moda de dois numeros iguais
        expect(calculadora.moda(10,10)).to eq 10
    end
    it("Deve calcular a moda de 0")do
        expect(calculadora.moda(0,0)).to eq 0
    end

    #usando metodo mediana
    it("Deve calcular a mediana de dois numeros positivos")do #testa a mediana de dois numeros positivos
        expect(calculadora.mediana(90,100)).to eq 90
    end
    it("Deve calcular a mediana de dois numeros negativos")do #testa a mediana de dois numeros negativos
        expect(calculadora.mediana(-90,-100)).to eq -100
    end
    it("Deve calcular a mediana de dois numeros iguais")do #testa a mediana de dois numeros iguais
        expect(calculadora.mediana(90,90)).to eq 90
    end
    it("Deve calcular a mediana de 0")do
        expect(calculadora.mediana(0,0)).to eq 0
    end
   
     #Metodo de exponensiação
    
    it("Deve calcular a exponenciacao de um numero positivo")do #testa a exponenciacao de um numero positivo
        expect(calculadora.esponencial(9)).to eq 8103.083927575384
    end
    it("Deve calcular a exponenciacao de um numero negativo")do #testa a exponenciacao de um numero negativo
        expect(calculadora.esponencial(-9)).to eq 0.00012340980408667956
    end
    it("Deve calcular a exponenciacao de um numero qualquer")do #testa a exponenciacao de um numero qualquer
        expect(calculadora.esponencial(4)).to eq 54.598150033144236
    end

end



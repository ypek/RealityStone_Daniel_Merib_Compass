class Calculadora
    def soma(a,b) #metodo de soma
    a + b
    end

    def subtracao(a,b) #metodo de subtracao
    a - b
    end

    def multiplicacao(a,b) #metodo de multiplicacao
    a * b
    end

    def divisao(a,b) #metodo de divisao
    a / b
    rescue ZeroDivisionError
        "Não é possível dividir por 0!"
    end

    def raiz(a) #metodo de raiz
    Math.sqrt(a)
    rescue Math::DomainError
        "Não é possível calcular a raiz de um número negativo!"
    end

    def potencia(a,b) #metodo de potencia
    a ** b
    end

    def seno(a) #metodo de seno
    Math.sin(a)
    end

    def cosseno(a) #metodo de cosseno
    Math.cos(a)
    end

    def tangente(a) #metodo de tangente
    Math.tan(a)
    end 

end
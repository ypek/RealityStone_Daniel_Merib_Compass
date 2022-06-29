class Calculadora
    def soma(a,b) #metodo de soma
    a + b
    end

    def subtracao(a,b) #metodo de subtracao
    if(a < 0 && b < 0)
        a + b
    else
        a - b
    end
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
    
    def fatorar(a) #metodo de fatoracao
        if a == 0
            return 1
        end
        fator = 1
        for i in 1..a
            fator = fator * i
        end
        return fator
    end

    def fibonacci(a) #metodo de fibonacci
        if a == 0
            return 0
        end
        if a == 1
            return 1
        end
        return fibonacci(a-1) + fibonacci(a-2)
    end

    def primo(a) #metodo de primo
        if a == 1
            return false
        end
        if a == 2
            return true
        end
        for i in 2..a-1
            if a % i == 0
                return false
            end
        end
        return true
    end

end
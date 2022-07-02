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
    

    def logaritmo(a) #metodo de logaritmo
    Math.log(a,10).round(15)
    rescue Math::DomainError
        "Não é possível calcular o logaritmo de um número negativo!"
    end
    
    def fatorial (n)
        if (n > 1)
           return n * fatorial(n - 1)
        else
           return 1
        end

    def esponencial(a) #metodo de esponencial
    Math.exp(a)

    end

    def fatorial_recursivo(n)
        if (n > 1)
           return n * fatorial_recursivo(n - 1)
        else
           return 1
        end
    end

    def pi
        Math::PI
    end

    def porcentagem(a,b)
        a * b / 100
    end
    
    def cubo(n)
        n ** 3
    end

    def delta(a,b,c)
        b ** 2 - 4 * a * c
    end

    def bhaskara(a,b,c)
        x1 = (-b + Math.sqrt(b**2 - 4 * a * c)) / (2 * a)
        x2 = (-b - Math.sqrt(b**2 - 4 * a * c)) / (2 * a)
        return x1, x2
    rescue Math::DomainError
        "Equação não possui raízes reais"
    end
    
    def raiz_enesima(a,n)
        a ** (1.0 / n).round(2)
    end

    def media(a,b)
        (a + b) / 2
    end

    def moda(a,b)
        if a > b
            return a
        else
            return b
        end
    end

    def mediana(a,b)
        if a > b
            return b
        else
            return a
        end
    end
end
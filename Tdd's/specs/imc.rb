require 'rspec'

def imc(peso,altura)
    imc_Calculado = peso / (altura * altura)
    return imc_Calculado.round(1) #.round arredonda 1 casa decimal

describe('IMC') do
    it('Deve calcular com peso e altura corretos')do
        peso = 60
        altura = 1.70
        expect(imc).to eq 20.7
    end
end


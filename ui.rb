#considerada "camada de user interface (ui), pois interage diretamente com o usuário com gets e puts"
def avisa_pontos_totais(pontos_totais)
    puts "Você possui #{pontos_totais} pontos"
end


def avisa_campeao_atual(dados)
    puts "Nosso campeao atual é: #{dados[0]} com #{dados[1]} pontos"
end


def avisa_escolhendo_palavra
    puts "Escolhendo uma palavra secreta..."
end


def avisa_palavra_escolhida(palavra_secreta)
    puts "Palavra secreta com #{palavra_secreta.size} letras ... boa sorte"
    palavra_secreta
end


def avisa_chute_efetuado(chute)
    puts "Você já chutou #{chute}"
end


def avisa_letra_nao_encontrada
    puts "Letra não encontrada"
end


def avisa_letra_encontrada(total_encontrado)
    puts "Letra encontrada #{total_encontrado}"
end


def avisa_acertou_palavra
    puts "Parabéns! Acertou!"
end


def avisa_errou_palavra
    puts "Que pena...errou"
end


def avisa_pontos(pontos_ate_agora)
    puts "Você ganhou #{pontos_ate_agora} pontos."
end


def da_boas_vindas
    puts "Bem vindo ao jogo da forca"
    puts "Qual o seu nome?"
    nome = gets.strip
    puts "\n\n"
    puts "Começaremos o jogo para você, #{nome}."
    nome
end


def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end


def cabecalho_de_tentativa(chutes, erros, mascara)
    puts "\n\n"
    desenha_forca(erros)
    puts "A palavra secreta: #{mascara}"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
end


def pede_um_chute
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip.downcase
    puts "Será que acertou? Você chutou #{chute}"
    chute
end 

def desenha_forca(erros)
    cabeca = "   "
    corpo = " "
    pernas = "   "
    bracos = "   "
    if erros >= 1
        cabeca = "(_)"
    end
    if erros >= 2
        bracos = " | "
        corpo = "|"
    end
    if erros >= 3
        bracos = "\\|/"
    end
    if erros >= 4
        pernas = "/ \\"
    end

    puts "  _______       "
    puts " |/      |      "
    puts " |      #{cabeca}  "
    puts " |      #{bracos}  "
    puts " |       #{corpo}  "
    puts " |      #{pernas}  "
    puts " |              "
    puts "_|___           "
    puts

end

#exemplo da implementação usando o chars, ao invés do count
#def conta(texto, letra)
#    total_encontrado = 0
    #chars devolve uma string em um array de caracteres dessa string
#    for caractere in texto.chars
#        if caractere[i] == letra
#            total_encontrado += 1
#        end
#    end
#    total_encontrado
#end
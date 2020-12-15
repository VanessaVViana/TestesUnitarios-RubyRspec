# begin
#     #Devo tentar alguma coisa
#     file = File.open('./ola.txt')
#     if file
#         puts file.read
#     end
# rescue
#     #Obter um possível erro
# end

def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts 'Erro ao executar s soma.'
end

soma('10', 5)
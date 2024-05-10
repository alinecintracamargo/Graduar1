despesas1 = { "Moradia" => 2000, "Água" => 190, "Luz" => 255, "Internet" => 210, "Mercado" => 1800, "Educação" => 900}
despesas2 = { "Moradia" => 1850, "Água" => 180, "Luz" => 205, "Internet" => 190, "Mercado" => 1650, "Educação" => 500}
despesas3 = { "Moradia" => 2350, "Água" => 210, "Luz" => 310, "Internet" => 230, "Mercado" => 1900, "Educação" => 750}

total_despesas1 = despesas1.values.sum
total_despesas2 = despesas2.values.sum
total_despesas3 = despesas3.values.sum

receita = {"salário" => 7500}

economia1 = receita["salário"] - total_despesas1
economia2 = receita["salário"] - total_despesas2
economia3 = receita["salário"] - total_despesas3

sugestoes = []

if total_despesas1 > total_despesas2 && total_despesas2 > total_despesas3
  sugestoes << "Você pode tentar reduzir os gastos com mercado, talvez optando por marcas mais econômicas e/ou evitandar compras por impulso."
elsif total_despesas1 < total_despesas2 && total_despesas2 < total_despesas3
  sugestoes << "Parabéns por manter um controle tão constante sobre seus gastos! Considere continuar monitorando suas despesas de perto para identificar oportunidades adicionais de economia."
else
  sugestoes << "Seus gastos variam consideravelmente mês a mês. Talvez seja útil revisar seus hábitos de consumo e identificar áreas onde você pode reduzir os gastos de forma mais consistente."
end

puts "Economia no primeiro mês: R$ #{economia1}"
puts "Economia no segundo mês: R$ #{economia2}"
puts "Economia no terceiro mês: R$ #{economia3}"

puts "\nSugestões de economia baseadas nos hábitos de consumo:"
sugestoes.each_with_index { |sugestao, index| puts "#{index + 1}. #{sugestao}" }

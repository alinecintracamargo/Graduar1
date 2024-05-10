despesas = {
  "Aluguel" => 2000,
  "Água" => 160,
  "Luz" => 250,
  "Internet" => 200,
  "Mercado" => 1500,
  "Educação" => 600
}

sum = 0

  despesas.each do |despesas, valor|
    sum += valor
  end

  puts "Total de despesas recorrentes é: R$ #{sum}"

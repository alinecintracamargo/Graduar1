despesas1 = { "Moradia" => 2000, "Água" => 190, "Luz" => 255, "Internet" => 210, "Mercado" => 1800, "Educação" => 900}
despesas2 = { "Moradia" => 1850, "Água" => 180, "Luz" => 205, "Internet" => 190, "Mercado" => 1650, "Educação" => 500}
despesas3 = { "Moradia" => 2350, "Água" => 210, "Luz" => 310, "Internet" => 230, "Mercado" => 1900, "Educação" => 750}

categorias = despesas1.keys
media_gastos = {}

categorias.each do |categoria|
  soma = despesas1[categoria] + despesas2[categoria] + despesas3[categoria]
  media = soma / 3
  media_gastos[categoria] = media
end

puts "Média de gastos por categoria:"
media_gastos.each do |categoria, media|
  puts "#{categoria}: #{media}"
end

total_previsto = media_gastos.values.sum
puts "Total previsto de gastos: #{total_previsto}"

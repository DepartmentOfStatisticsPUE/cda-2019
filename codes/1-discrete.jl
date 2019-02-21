using Distributions

# zadanie 1
n=10;
p=0.3;
# pojedynczo
pdf(Binomial(n,p),0)
## wektorowo
pdf.(Binomial(n,p),(0:10))
cdf.(Binomial(n,p),(0:10))

## poisson
# Zadanie 11. W pewnym salonie Opla sprzedaje się w ciągu miesiąca średnio 5 samochodów tej marki. Jakie jest prawdopodobieństwo, że w miesiącu sprzedane będą co najwyżej 2 auta.
λ=5
pdf(Poisson(λ),2)

## wektorowo
λ = [2,5,8,10]
pdf.(Poisson(λ), 2)

for i in λ
    println(pdf(Poisson(i),2))
end

[pdf(Poisson(i),2) for i in λ]

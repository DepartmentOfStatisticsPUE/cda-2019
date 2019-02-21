using Distributions
using Random

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


## poisson and multinomial
λ₁ = 100::Int
λ₂ = 300::Int
λ₃ = 900::Int
Random.seed!(1234);
n₁ = rand(Poisson(λ₁));
n₂ = rand(Poisson(λ₂));
n₃ = rand(Poisson(λ₃));
n = n₁ + n₂ + n₃

pi1 = n₁/n
pi2 = n₂/n
pi3 = n₃/n
pis = [pi1 ; pi2 ; pi3] ## use vcat
res  = rand(Multinomial(n, pis))
print(res)
print([n₁; n₂; n₃])

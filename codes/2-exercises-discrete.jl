using Distributions
using Plots

#Zadanie 1. Koszykarz podczas treningu oddaje 10 rzuto ́w za 3 punkty. Prawdo- podobien ́stwo trafienia w pojedynczym rzucie wynosi 0,4. Niech zmienna losowa X przyjmuje warto ́sci ro ́wne liczbie celnych rzut ́ow.
n, p = 10, 0.4;
#(a) Znajd ́z rozk􏰀lad zmiennej losowej X.
res = pdf.(Binomial(n,p),0:n);
res
#(b) Sporza􏰁d ́z wykres rozk􏰀ladu prawdopodobien ́stwa zmiennej losowej X.
plot(0:n, res, linetype=:bar, label = [""])
#(c) Oblicz prawdopodobien ́stwo, z ̇e koszykarz trafi dok􏰀ladnie 6 razy za 3 punkty.
pdf(Binomial(n,p),6)
#(d) Oblicz prawdopodobien ́stwo, z ̇e koszykarz odda co najwyz ̇ej 3 celne rzuty za
#3 punkty.
cdf(Binomial(n,p),3)

# fitting
x = rand(Binomial(n,p),1000)
fit_mle(Binomial, n, x)
fit_mle(Poisson,  x)

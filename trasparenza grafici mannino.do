
GRAFICO 1) 
clear
set more off

* Dati (dal grafico)
input int fy double spesa
1962  1.7
1963  6.5
1964 23.6
1965 26.7
1966 29.5
1967 28.1
1968 23.6
1969 17.8
1970 14.0
1971  7.3
1972  4.6
end

* Grafico linea + punti
twoway ///
 (line spesa fy, lcolor(navy) lwidth(medthick)) ///
 (scatter spesa fy, mcolor(navy) msymbol(O) msize(medium)), ///
 
 title("Apollo: spesa annuale reale (2025$, CPI) – appropriazioni Apollo", ///
       size(medsmall) color(red)) ///
       
 ytitle("Mld$ 2025", size(medsmall) color(red)) ///
 xtitle("Anno fiscale (FY)", size(medsmall) color(red)) ///
 
 xlabel(1962(1)1972, labsize(small)) ///
 ylabel(0(5)30, labsize(small)) ///
 
 legend(off) ///
 graphregion(color(white)) ///
 plotregion(margin(medium))

GRAFICO 2) 
clear
set more off

* Dati (quote % dal grafico)
input str40 categoria double percentuale
"Lanciatore (Saturn+motori)" 53.5
"Capsula CSM"                20.7
"Lander LM"                  10.5
"Operazioni/Mission support"  7.1
"Altri costi vari"            8.2
end

* Grafico a torta
graph pie percentuale, over(categoria) ///
 plabel(_all percent, format(%4.1f) color(white) size(medium)) ///
 title("Apollo FY1966: distribuzione spese (quote % sul totale FY1966)", ///
       size(medsmall) color(red)) ///
 legend(position(6) cols(1) size(small) region(lstyle(none))) ///
 graphregion(color(white)) ///
 plotregion(margin(medium))

graph pie percentuale, over(categoria) ///
 plabel(_all percent, format(%4.1f) color(white) size(medium)) ///
 pie(1, color(navy)) ///
 pie(2, color(orange)) ///
 pie(3, color(maroon)) ///
 pie(4, color(gs10)) ///
 pie(5, color(forest_green)) ///
 title("Apollo FY1966: distribuzione spese (quote % sul totale FY1966)", ///
       size(medsmall) color(red)) ///
 legend(position(6) cols(1) size(small) region(lstyle(none))) ///
 graphregion(color(white))

 
GRAFICO 3)	
clear
input year boeing lockheed northrop
1960 1.3 1.0 0.4
1970 4.7 2.5 0.8
1980 8.0 8.5 1.5
1990 29.0 17.0 4.0
end

twoway ///
(line boeing year, lwidth(medthick) msymbol(o) msize(medium)) ///
(line lockheed year, lwidth(medthick) msymbol(o) msize(medium)) ///
(line northrop year, lwidth(medthick) msymbol(o) msize(medium)), ///
title("Crescita aerospaziale USA (1960–1990)") ///
xtitle("Anno") ///
ytitle("Ricavi (miliardi USD)") ///
legend(order(1 "Boeing" 2 "Lockheed" 3 "Northrop")) ///
xlabel(1960 1970 1980 1990)


GRAFICO 4) 
clear
input str25 company start end
"Boeing" 1.3 4.5
"North American Aviation" 1.5 3.0
"Grumman" 0.5 1.5
"Lockheed" 1.0 2.5
"IBM" 2.5 7.5
end

* Creo variabile per stacking (incremento)
gen crescita = end - start

GRAFICO 5) 
clear
set more off

* Dati dal grafico
input str25 programma double valore
"Apollo (CPI)"        183.4
"Apollo (GDP)"        140.0
"Artemis (CPI, mid)"  109.6
"Artemis (GDP, mid)"  108.6
end

* Grafico a barre
graph bar (asis) valore, over(programma, label(angle(0) labsize(small))) ///
 bar(1, color(navy)) ///
 bargap(30) ///
 blabel(bar, format(%4.1f) color(black) size(small)) ///
 
 title("Costi cumulati in dollari reali 2025: Apollo vs Artemis (CPI e GDP deflator)", ///
       size(medsmall) color(red)) ///
       
 ytitle("Mld$ 2025", size(medsmall) color(red)) ///
 
 ylabel(0(50)200, labsize(small)) ///
 legend(off) ///
 
 graphregion(color(white)) ///
 plotregion(margin(medium))




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


PRIMO GRAFICO CONCLUSIONI

<svg width="100%" viewBox="0 0 680 300" xmlns="http://www.w3.org/2000/svg">
<defs>
  <marker id="arrow" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
    <path d="M2 1L8 5L2 9" fill="none" stroke="context-stroke" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
  </marker>
  <style>
    text { font-family: Arial, sans-serif; fill: #1a1a1a; }
    .th { font-size: 14px; font-weight: 600; }
    .ts { font-size: 12px; font-weight: 400; fill: #555; }
    .label-blue { fill: #185FA5; }
    .label-coral { fill: #993C1D; }
    .label-gray { fill: #888; }
    .box-blue-header { fill: #B5D4F4; stroke: #185FA5; stroke-width: 0.5; }
    .box-blue { fill: #E6F1FB; stroke: #185FA5; stroke-width: 0.5; }
    .box-coral-header { fill: #F5C4B3; stroke: #993C1D; stroke-width: 0.5; }
    .box-coral { fill: #FAECE7; stroke: #993C1D; stroke-width: 0.5; }
    .box-ost { fill: #F1EFE8; stroke: #888; stroke-width: 0.8; stroke-dasharray: 3 3; }
    .box-gray-zone { fill: none; stroke: #ccc; stroke-width: 0.8; stroke-dasharray: 4 3; }
    .arr { stroke: #888; stroke-width: 1; fill: none; }
    .tension { stroke: #E24B4A; stroke-width: 1.2; }
  </style>
</defs>

<text class="th" x="340" y="28" text-anchor="middle">Scenario 1 — Frammentazione in Space Blocs</text>

<!-- Blocco occidentale header -->
<rect class="box-blue-header" x="30" y="50" width="240" height="44" rx="10"/>
<text class="th label-blue" x="150" y="68" text-anchor="middle" dominant-baseline="central">Blocco occidentale</text>
<text class="ts label-blue" x="150" y="84" text-anchor="middle" dominant-baseline="central">USA · ESA · JAXA — Artemis Accords</text>

<!-- Soft law -->
<rect class="box-blue" x="30" y="110" width="112" height="40" rx="8"/>
<text class="th label-blue" x="86" y="125" text-anchor="middle" dominant-baseline="central">Soft law</text>
<text class="ts label-blue" x="86" y="141" text-anchor="middle" dominant-baseline="central">Artemis Accords</text>

<!-- Privati -->
<rect class="box-blue" x="158" y="110" width="112" height="40" rx="8"/>
<text class="th label-blue" x="214" y="125" text-anchor="middle" dominant-baseline="central">Privati</text>
<text class="ts label-blue" x="214" y="141" text-anchor="middle" dominant-baseline="central">SpaceX · Blue Origin</text>

<!-- Luna Occidentale -->
<rect class="box-blue" x="30" y="166" width="240" height="40" rx="8"/>
<text class="th label-blue" x="150" y="181" text-anchor="middle" dominant-baseline="central">Luna — basi Gateway</text>
<text class="ts label-blue" x="150" y="197" text-anchor="middle" dominant-baseline="central">Polo sud · stazione orbitale</text>

<!-- Zona conflitto -->
<rect class="box-gray-zone" x="290" y="50" width="100" height="156" rx="8"/>
<text class="ts label-gray" x="340" y="118" text-anchor="middle">zona</text>
<text class="ts label-gray" x="340" y="134" text-anchor="middle">grigia</text>
<line x1="316" y1="100" x2="364" y2="156" stroke="#ccc" stroke-width="0.5" stroke-dasharray="2 3"/>
<line x1="364" y1="100" x2="316" y2="156" stroke="#ccc" stroke-width="0.5" stroke-dasharray="2 3"/>
<!-- Frecce tensione -->
<line class="tension" x1="290" y1="126" x2="310" y2="126" marker-end="url(#arrow)"/>
<line class="tension" x1="390" y1="126" x2="370" y2="126" marker-end="url(#arrow)"/>

<!-- Blocco sino-russo header -->
<rect class="box-coral-header" x="410" y="50" width="240" height="44" rx="10"/>
<text class="th label-coral" x="530" y="68" text-anchor="middle" dominant-baseline="central">Blocco sino-russo</text>
<text class="ts label-coral" x="530" y="84" text-anchor="middle" dominant-baseline="central">CNSA · Roscosmos — ILRS</text>

<!-- Bilaterali -->
<rect class="box-coral" x="410" y="110" width="112" height="40" rx="8"/>
<text class="th label-coral" x="466" y="125" text-anchor="middle" dominant-baseline="central">Bilaterali</text>
<text class="ts label-coral" x="466" y="141" text-anchor="middle" dominant-baseline="central">Nessun soft law</text>

<!-- Statale -->
<rect class="box-coral" x="538" y="110" width="112" height="40" rx="8"/>
<text class="th label-coral" x="594" y="125" text-anchor="middle" dominant-baseline="central">Statale</text>
<text class="ts label-coral" x="594" y="141" text-anchor="middle" dominant-baseline="central">Controllo centrale</text>

<!-- Luna Sino-Russa -->
<rect class="box-coral" x="410" y="166" width="240" height="40" rx="8"/>
<text class="th label-coral" x="530" y="181" text-anchor="middle" dominant-baseline="central">Luna — base ILRS</text>
<text class="ts label-coral" x="530" y="197" text-anchor="middle" dominant-baseline="central">Polo sud · 30+ paesi partner</text>

<!-- OST -->
<rect class="box-ost" x="30" y="230" width="620" height="36" rx="8"/>
<text class="ts label-gray" x="340" y="252" text-anchor="middle">OST 1967 — formalmente vigente, operativamente paralizzato dal veto russo (2024)</text>
</svg>

SECONDO GRAFICO CONCLUSIONI

<svg width="100%" viewBox="0 0 680 310" xmlns="http://www.w3.org/2000/svg">
<defs>
  <marker id="arrow" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
    <path d="M2 1L8 5L2 9" fill="none" stroke="context-stroke" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
  </marker>
  <style>
    text { font-family: Arial, sans-serif; fill: #1a1a1a; }
    .th { font-size: 14px; font-weight: 600; }
    .ts { font-size: 12px; font-weight: 400; fill: #555; }
    .label-blue { fill: #0C447C; }
    .label-purple { fill: #3C3489; }
    .label-coral { fill: #993C1D; }
    .label-teal { fill: #085041; }
    .label-amber { fill: #633806; }
    .box-blue { fill: #B5D4F4; stroke: #185FA5; stroke-width: 0.5; }
    .box-purple { fill: #CECBF6; stroke: #534AB7; stroke-width: 0.5; }
    .box-coral { fill: #F5C4B3; stroke: #993C1D; stroke-width: 0.5; }
    .box-teal { fill: #9FE1CB; stroke: #0F6E56; stroke-width: 0.5; }
    .box-teal-out { fill: #E1F5EE; stroke: #0F6E56; stroke-width: 0.5; }
    .box-warn { fill: none; stroke: #BA7517; stroke-width: 0.8; stroke-dasharray: 3 3; }
    .arr { stroke: #aaa; stroke-width: 1; fill: none; }
  </style>
</defs>

<text class="th" x="340" y="28" text-anchor="middle">Scenario 2 — Riforma OST in sede ONU</text>

<!-- Tre attori -->
<rect class="box-blue" x="30" y="50" width="170" height="52" rx="10"/>
<text class="th label-blue" x="115" y="70" text-anchor="middle" dominant-baseline="central">USA e alleati</text>
<text class="ts label-blue" x="115" y="88" text-anchor="middle" dominant-baseline="central">Artemis Accords come base</text>

<rect class="box-purple" x="255" y="50" width="170" height="52" rx="10"/>
<text class="th label-purple" x="340" y="70" text-anchor="middle" dominant-baseline="central">Global South</text>
<text class="ts label-purple" x="340" y="88" text-anchor="middle" dominant-baseline="central">Common Heritage richiesto</text>

<rect class="box-coral" x="480" y="50" width="170" height="52" rx="10"/>
<text class="th label-coral" x="565" y="70" text-anchor="middle" dominant-baseline="central">Russia / Cina</text>
<text class="ts label-coral" x="565" y="88" text-anchor="middle" dominant-baseline="central">ILRS — principi divergenti</text>

<!-- Frecce verso COPUOS -->
<line x1="115" y1="104" x2="280" y2="148" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>
<line x1="340" y1="104" x2="340" y2="148" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>
<line x1="565" y1="104" x2="400" y2="148" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>

<!-- COPUOS -->
<rect class="box-teal" x="190" y="150" width="300" height="44" rx="12"/>
<text class="th label-teal" x="340" y="168" text-anchor="middle" dominant-baseline="central">COPUOS — ONU</text>
<text class="ts label-teal" x="340" y="184" text-anchor="middle" dominant-baseline="central">104 stati · Presidenza Italia 2026–27</text>

<!-- Freccia verso output -->
<line x1="340" y1="196" x2="340" y2="222" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>

<!-- Output -->
<rect class="box-teal-out" x="100" y="224" width="480" height="50" rx="12"/>
<text class="th label-teal" x="340" y="244" text-anchor="middle" dominant-baseline="central">Nuovo trattato multilaterale</text>
<text class="ts label-teal" x="340" y="261" text-anchor="middle" dominant-baseline="central">Risorse · operatori privati · meccanismi di verifica · corte arbitrale</text>

<!-- Ostacolo -->
<rect class="box-warn" x="100" y="284" width="480" height="22" rx="6"/>
<text class="ts" x="340" y="299" text-anchor="middle" fill="#854F0B">Ostacolo principale: consenso unanime richiesto — precedente Moon Agreement 1979 mai ratificato</text>
</svg>


TERZO GRAFICO CONCLUSIONI

<svg width="100%" viewBox="0 0 680 330" xmlns="http://www.w3.org/2000/svg">
<defs>
  <marker id="arrow" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
    <path d="M2 1L8 5L2 9" fill="none" stroke="context-stroke" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
  </marker>
  <style>
    text { font-family: Arial, sans-serif; fill: #1a1a1a; }
    .th { font-size: 14px; font-weight: 600; }
    .ts { font-size: 12px; font-weight: 400; fill: #555; }
    .label-purple { fill: #3C3489; }
    .label-blue { fill: #0C447C; }
    .label-teal { fill: #085041; }
    .label-gray { fill: #444441; }
    .label-amber { fill: #633806; }
    .box-purple { fill: #CECBF6; stroke: #534AB7; stroke-width: 0.5; }
    .box-blue { fill: #B5D4F4; stroke: #185FA5; stroke-width: 0.5; }
    .box-teal { fill: #9FE1CB; stroke: #0F6E56; stroke-width: 0.5; }
    .box-teal-out { fill: #E1F5EE; stroke: #0F6E56; stroke-width: 0.5; }
    .box-gray { fill: #D3D1C7; stroke: #5F5E5A; stroke-width: 0.5; }
    .box-amber { fill: #FAC775; stroke: #854F0B; stroke-width: 1; }
  </style>
</defs>

<text class="th" x="340" y="28" text-anchor="middle">Scenario 3 — Governance multilivello e multi-attore</text>

<!-- Livello 1 -->
<rect class="box-purple" x="30" y="48" width="620" height="44" rx="12"/>
<text class="th label-purple" x="340" y="66" text-anchor="middle" dominant-baseline="central">Hard law — Diritto internazionale</text>
<text class="ts label-purple" x="340" y="82" text-anchor="middle" dominant-baseline="central">OST aggiornato · COPUOS · Corte arbitrale spaziale</text>

<line x1="340" y1="94" x2="340" y2="114" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>

<!-- Livello 2 -->
<rect class="box-blue" x="30" y="116" width="190" height="44" rx="10"/>
<text class="th label-blue" x="125" y="134" text-anchor="middle" dominant-baseline="central">Artemis Accords</text>
<text class="ts label-blue" x="125" y="150" text-anchor="middle" dominant-baseline="central">Soft law · 61 paesi</text>

<rect class="box-teal" x="245" y="116" width="190" height="44" rx="10"/>
<text class="th label-teal" x="340" y="134" text-anchor="middle" dominant-baseline="central">Standard tecnici</text>
<text class="ts label-teal" x="340" y="150" text-anchor="middle" dominant-baseline="central">Interoperabilità · debris</text>

<rect class="box-gray" x="460" y="116" width="190" height="44" rx="10"/>
<text class="th label-gray" x="555" y="134" text-anchor="middle" dominant-baseline="central">Legislazioni nazionali</text>
<text class="ts label-gray" x="555" y="150" text-anchor="middle" dominant-baseline="central">Italia · USA · EAU · Lux</text>

<!-- Frecce livello 2 → 3 -->
<line x1="125" y1="162" x2="220" y2="200" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>
<line x1="340" y1="162" x2="340" y2="200" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>
<line x1="555" y1="162" x2="460" y2="200" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>

<!-- Livello 3 privati -->
<rect class="box-amber" x="30" y="202" width="620" height="44" rx="12"/>
<text class="th label-amber" x="340" y="220" text-anchor="middle" dominant-baseline="central">Multinazionali private — partner di governance</text>
<text class="ts label-amber" x="340" y="236" text-anchor="middle" dominant-baseline="central">SpaceX · Blue Origin · Airbus · startup mining — dentro il sistema normativo</text>

<!-- Freccia lobbying verso su -->
<path d="M90 202 Q50 160 50 116" fill="none" stroke="#BA7517" stroke-width="0.9" stroke-dasharray="4 3" marker-end="url(#arrow)"/>
<text class="ts" x="22" y="162" fill="#BA7517">↑ lobbying</text>

<!-- Freccia verso obiettivo -->
<line x1="340" y1="248" x2="340" y2="272" stroke="#aaa" stroke-width="1" marker-end="url(#arrow)"/>

<!-- Obiettivo -->
<rect class="box-teal-out" x="100" y="274" width="480" height="44" rx="12"/>
<text class="th label-teal" x="340" y="292" text-anchor="middle" dominant-baseline="central">Regime integrato inclusivo</text>
<text class="ts label-teal" x="340" y="308" text-anchor="middle" dominant-baseline="central">Hard law + soft law + privati come soggetti di diritto</text>
</svg>

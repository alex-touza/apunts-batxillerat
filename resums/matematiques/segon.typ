#import "shortcuts.typ": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

= Càlcul diferencial

== Regles de derivació

== Altres mètodes de derivació

=== Derivació logarítmica

Útil quan les regles del producte o del quocient seria massa complicades.

Si $y=f(x)$, fem $ln y = ln f(x)$ i desenvolupem el costat dret amb propietats dels logaritmes. Aleshores, fem la derivada implícita i aïllem $y'$, tenint en compte que $y=f(x)$.

$
y=f(x) <=> ln y = ln f(x) <=> \

<=>y'/y = (ln f(x))' <=> y' = y dot (ln f(x))' <=> \ y' = f(x) dot (ln f(x))'
$

= Aplicació de la derivada
Encara s'ha d'escriure aquest tema.
= Càlcul integral
Encara s'ha d'escriure aquest tema.
= Integral definida

== Regla de Barrow


Si $f(x)$ és contínua en $[a, b]$ i $F(x)$ és la primitiva de $f(x)$, aleshores:

$
integral^b_a f(x) dif x = F(b)-F(a)
$


== Aplicacions de la integral
=== Integrals impròpies

$
lim_(x->+oo) integral_a^x f(t) dif t
$

=== Cossos de revolució

$
V = pi integral_a^b f(x)^2 dif x
$

= Matrius

== Definicions

=== Matriu

Una *matriu* és un conjunt de nombres col·locats en $m$ files i $n$ columnes.

$
A_(m times n) = mat(a_11, a_12, dots.c, a_(1 n); a_21, a_22, dots.c, a_(2 n);  dots.v,dots.v, dots.down, dots.v; a_(m 1),  a_(m 2), dots.c, a_(m n))
$

Es denota $a_(i j)$ per l'element a la fila $i$ i la columna $j$ i $(a_(i j))$ com la matriu sencera.
=== Ordre

L'*ordre* d'una matriu és el nombre de files i de columnes que conté. S'expressa així:  $ "files" times "columnes"  $

$
A_(2 times 3) = mat(4, 3, 2; 2, -1, 0) => "ordre"(A) = 2 times 3
$

=== Diagonal principal

La *diagonal principal* d'una matriu és el conjunt format pels elements $a_(i j)$ tal que $i = j$.


$
B_(3 times 3) = mat(star(b_11), b_12, b_13; b_21, star(b_22), b_23; b_31, b_32, star(b_33))
$

=== Traça

La *traça* d'una matriu és la suma dels elements de la diagonal principal.

=== Matriu transposada

La *matriu transposada* d'una matriu $A$ és la matriu $A^t$ resultant d'intercanviar files i columnes.

$
a_( i j) arrow.dashed a_(j i)
$

=== Matriu simètrica

Una *matriu simètrica* és una matriu $A$ tal que $A = A^t$.
=== Matriu antisimètrica

Una *matriu antisimètrica* és una matriu $A$ tal que $A = -A^t$. La diagonal principal són tot zeros.

Es compleix que qualsevol matriu es pot expressar com la suma d'una matriu simètrica i una antisimètrica:

$
A = 1/2 (M + M^t) + 1/2 (M - M^t)
$

=== Matriu idempotent

Una *matriu idempotent* és una matriu $A$ tal que $A = A^2$

=== Matriu triangular

Una *matriu triangular* és aquella que té tots els elements per sota (*superior*) o per sobre (*inferior*) de la diagonal pricipal nuls.

=== Matriu nul·la

Una *matriu nul·la* és aquella en què tots els elements són zero. Es denota amb *$0$*.

=== Matriu identitat

La *matriu identitat* és aquella matriu que té tots els elements nuls excepte els de la diagonal principal, que són 1.

$
I_2 = mat(1, 0; 0, 1),  I_4 = mat(1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1)
$

=== Matriu oposada

La *matriu oposada* d'una matriu $A$ és la matriu $-A$ resultant de canviar els signe de tots els elements.

== Operacions amb matrius

=== Suma

$
A_(m times n) + B_(m times n) = C_(m times n) \
(a_(i j)) + (b_(i j)) = (a_(i j) + b_(i j))
$


=== Producte per un escalar

$
k (a_(i j)) = (k a_(i j))
$

Els escalars es poden "moure" en un producte de matrius.
=== Producte entre matrius

$
A dot B = C <=> A_(m times n) dot B_(n times r) = C_(m times r) 
$

Es calcula el producte escalar de cada de vector fila $i$ de $A$ amb el vector columna $i$ de $B$.

El producte de matrius en general #underline[no compleix] la propietat commutativa.

=== Potència

Només possible per a matrius quadrades.

Per trobar la potència $n$ d'una matriu $A$, cal calcular la matriu resultant per als primers valors d'$n$ i conjecturar una fórmula.


== Matriu inversa

=== Definició

La matriu inversa de $A$ és la matriu $inv(A)$ que compleix que $A inv(A) = inv(A) A = I$.


=== Matriu inversa a partir de matriu adjunta

$
A^(-1) = 1 / det(A) "adj"(A^t) = 1 / det(A) "adj"(A)^t
$

D'aquí deduïm que $det(A) = 0 <=> exists.not inv(A)$

=== Mètode de Gauss-Jordan

S'escriu la matriu que és vol invertir $A$ a l'esquerra i la matriu identitat $I$ a la dreta. Aleshores, s'apliquen les operacions elementals (afegir un múltiple d'una línia a una altra i permutar dues línies) a ambdós matrius de manera que $A$ es converteixi en $I$.

La matriu inversa $inv(A)$ és la matriu resultant d'aplicar les transformacions a $I$, la del costat dret.

Si en aquest procés apareix una línia de zeros, la inversa no existeix.

== Equacions matricials

Les *equacions matricials* són equacions en l'àlgebra de les matrius. La incògnita, per tant, és una matriu. Es resolen amb càlcul simbòlic i, després, substitució.

=== Productes de matrius

#underline[Es multiplica pel mateix costat] a les expressions igualades per la matriu inversa del terme a l'extrem d'aquest costat, obtenint la matriu identitat.

$
A X B = C <=> underbrace(A^(-1) A, I) X underbrace(B B^(-1), I) = A^(-1) C B^(-1) <=>  \ <=> X = A^(-1) C B^(-1) 
$

=== Productes amb escalars


$
2A = B X <=> B^(-1) 2 A = B^(-1) B X <=> \ <=> X = 2 B^(-1) A
$

=== Factor comú
Quan es fa factor comú en una expressió matricial, s'han de substituir els termes que queden "buits" amb la matriu identitat.

$
A + A^2 = A(I + A)
$

== Rang

=== Definició

El *rang* d'una matriu és el nombre de files o columnes que són linealment independents.

=== Propietats del rang

_Nota._ $min("ordre"(A))$ denota el mínim entre el nombre de files i el nombre de columnes.

+ $"rang"(A) <= min("ordre"(A))$
+ $"det"(A) = 0 <=> "rang"(A) < min("ordre"(A))$
+ $"rang"(A) = 0 <=> A = bold(0)$

=== Mètode de Gauss-Jordan

Es fa servir el Mètode de Gauss-Jordan per triangular la matriu. El rang és el nombre de files que no siguin nul·les.


=== Rang a partir dels menors

_Teorema 1._ El rang d'una matriu $A$ és el màxim nombre $n$ tal que un menor d'ordre $n$ és no nul.

_Teorema 2._ Si tots els menors d'ordre $n$ són nuls, aleshores els menors d'ordre $n+1$ també són nuls.

Es busca un menor d'ordre $n$ que no sigui 0 i s'orla per trobar si algun menor d'ordre $n+1$ tampoc és nul.
== Determinants

=== Determinants d'ordre 2

$
detmat(a, b; c, d) = a d - b c
$

=== Determinants d'ordre 3 (regla de Sarrus) <regla-sarrus>

$
detmat(a_11,a_12,a_13;a_21, a_22, a_23; a_31, a_32, a_33) = \ = a_(11)a_(22)a_(33)+ a_(12)a_(23)a_(31) + a_13a_21a_32 - \ - (a_13a_22a_31+a_12a_21a_33+a_11a_23a_32

)
$
#figure(image("IMG_20250209_203210.jpg", width: 230pt))
=== Expansió de Laplace <expansio-laplace>

El determinant d'una matriu es pot expressar com la suma dels elements d'una fila o columna multiplicats pels seus adjunts.

$
det(A_(3 times 3)) = a_11 A_11 + a_12 A_12 + a_13 A_13
$
=== Propietats de determinants

+ Les següents operacions no alteren el determinant:
  - Transposar. $det(display(A)) = det(display(A^t))$
  - Sumar a una línia una combinació lineal d'altres línies paral·leles.
  //- Afegir a una línia un múltiple d'una altra.
+ Si es permuten dues línies, el determinant canvia de signe.
+ El determinant és nul si:
  - $A$ té una línia nul·la
  - $A$ té dues línies paral·leles iguals o proporcionals
  - $A$ té una línia que és una combinació lineal d'altres paral·leles (recíproc).
+ Els escalars es col·loquen en ---i es treuen de--- una línia.


=== Operacions amb determinants

==== Suma

Es poden sumar dos determinants de matrius que es diferencien només en una fila.

$
detmat(a,b,c;d,e,f;g,h,i) + detmat(a,b,c;d,e,f;p,q,r) = detmat(a,b,c;d,e,f;g+p,h+q,i+r)
$

==== Producte

$
det(A)det(B) = det(A B)
$

$
det(A^n) = (det(A))^n
$

== Menors i adjunts

=== Menor d'ordre $r$

El *menor d'ordre $r$* d'una matriu és el resultat de seleccionar $r$ files i $r$ columnes i calcular el determinant de la matriu que formen.

=== Menor complementari

El *menor complementari* $alpha_(i j)$ és el determinant de la matriu resultant de seleccionar un element $a_(i j)$ i eliminar la fila $i$ i la columna $j$.

=== Adjunt de l'element

L'*adjunt d'un element* es defineix com $A_(i j) = (-1)^(i + j) dot alpha_(i j)$

=== Matriu adjunta

La *matriu adjunta* de $A$ és la matriu $"adj"(A) = (A_(i j))$.

#{
  let bl(a) = {
    set text(blue.darken(40%))

    $#a$
  }

  let re(a) = {
    set text(red.darken(40%))

    $#a$
  }
  $
  "adj"(A) = mat(re(A_11),bl(-A_12),re(A_13);bl(-A_21),re(A_22),bl(-A_23);re(A_31),bl(-A_32),re(A_33))
  $
}

= Sistemes d'equacions

== Sistemes d'equacions

=== Tipus de sistemes d'equacions

- *Compatible.* Existeix un valor de cada incògnita tal que les equacions es compleixen.
  - *Compatible determinat.* Només existeix una tupla única de solucions.
  - *Compatible indeterminat.* Existeixen infinites solucions.

- *Incompatible.* No existeixen solucions.

== Teorema de Rouché-Frobenius <rouché-frobenius>

Sigui $cal(S)$ un sistema d'equacions de $m$ equacions i $n$ incògnites. $A$ és la matriu dels coeficients i $A'$ és la matriu ampliada que conté els termes independents.

- $ran A = ran A' => cal(S)$ és _compatible_
  - $ran A = ran A' >= n => cal(S)$ és _compatible determinat_
  - $ran A = ran A' < n => cal(S)$ és _compatible indeterminat_, on $"graus de llibertat" = n - ran A$
- $ran A != ran A' => cal(S)$ és incompatible.

== Regla de Cramer

=== Sistemes de Cramer

Sigui $cal(S)$ un sistema d'equacions compatible de $n$ equacions i $n$ incògnites tal que $abs(A) != 0$, és a dir, $ran A = n$.

Sigui $A_x_i$ la matriu resultant de substituir la columna dels coeficients de $x_i$ per la columna dels termes independents. Aleshores, la solució del sistema és:

$
x = abs(A_x) / abs(A),y=abs(A_y)/abs(A),z=abs(A_z)/abs(A),...,x_n=abs(A_x_i)/abs(A)
$

=== Sistemes compatibles indeterminats

Sigui $cal(S)$ un sistema d'equacions compatible indeterminat amb $ran A = r$. Aleshores, per convertir-lo a un sistema de Cramer i aplicar el procediment anterior, cal buscar un menor d'ordre $r$, eliminar les equacions que no formen part del menor i passar els termes de les columnes que no formen part del menor a la dreta del signe igual. Les incògnites corresponents a aquestes columnes seran paràmetres. Ara, aplicar la regla de Cramer.

= Geometria analítica a l'espai


#let ai = $arrow(i)$
#let aj = $arrow(j)$
#let ak = $arrow(k)$


== Vectors

#let au = $arrow(u)$
#let av = $arrow(v)$

Siguin $arrow(u) = (u_1, u_2, u_3)$ i $arrow(v) = (v_1, v_2, v_3)$.

=== Mòdul d'un vector

$
abs(arrow(u)) = sqrt(u_1^2 + u_2^2 + u_3^2)
$

=== Producte escalar

$
arrow(u) dot arrow(v) = abs(arrow(u)) abs(arrow(v)) cos alpha = u_1 v_1 + u_2 v_2 + u_3 v_3
$

L'última igualtat només és certa amb les coordenades expressades respecte la base ortonormal $cal(B)(arrow(i), arrow(j), arrow(k))$.

=== Rang entre vectors

- $ran(arrow(v_1), arrow(v_2), arrow(v_3)) = 1 =>$ Els vectors són proporcionals
- $ran(arrow(v_1), arrow(v_2), arrow(v_3)) = 2 =>$ Els vectors formen un pla
- $ran(arrow(v_1), arrow(v_2), arrow(v_3)) = 3 =>$ Els vectors són linealment independents
- $ran(arrow(v_1), arrow(v_2), arrow(v_3)) >= 4=>$ Has entrat en un forat negre


=== Criteri de proporcionalitat

Els vectors $au, av$ són proporcionals si i només si $ u_1 / v_1 = u_2 / v_2 = u_3 / v_3 $

Equivalentment, $ran (au, av) = 1$, tal com s'ha mostrat abans.

=== Criteri de perpendicularitat

Els vectors $au, av$ són perpendiculars si i només si $au dot av = 0$.

=== Producte vectorial

El producte vectorial $au times av$ és un vector $arrow(w)$ perpendicular a $au$ i $av$.

$
arrow(c) = au times av = det(ai, aj, ak; a_1, a_2, a_3; b_1, b_2, b_3) = \ = ai det(a_2, a_3;b_2,b_3) - aj det(a_1,a_3;b_1,b_3) + ak det(a_1,a_2;b_1,b_2)
$

$
au times av = - av times arrow(a)
$

En mòdul:

$
abs(au times av) = abs(au) abs(av) sin alpha
$

=== Producte mixt

$
[au, av, arrow(w)] = au dot (av times arrow(w)) = det(u_1,v_1,w_1;u_2,v_2,w_2;u_3,v_3,w_3)
$


=== Àrees i volums

==== Àrea d'un paral·lelogram

El mòdul del producte vectorial $au times av$ és igual a l'àrea del paral·lelogram definit pels vectors $au, av$.

==== Volum d'un paral·lelepípede

El valor absolut del producte mixt $abs([au, av, arrow(w)])$ és igual al volum del paral·lelepípede definit pels vectors $au,av,arrow(w)$.

== Rectes
Sigui una recta $r$.
Fixem un punt de l'espai $P = (a_1, a_2, a_3)$ tal que $P in r$.

Sigui $X = (x, y, z)$ un punt genèric de la recta.

=== Equació vectorial

$
r colon arrow(O X) = arrow(O P) + lambda arrow(u) \
r colon (x, y, z) = (a_1, a_2, a_3) + lambda(u_1, u_2,u_3)
$

on $arrow(u) = (u_1, u_2, u_3)$ és el vector director de la recta i $lambda in RR$ és un paràmetre.
=== Equació paramètrica

$
r colon cases(
  x = a_1 + lambda u_1,
  y = a_2 + lambda u_2,
  z = a_3 + lambda u_3,
)
$

on $lambda in RR$ és un paràmetre.

=== Equació contínua


$
r colon (x - a_1) / u_1 = (y - a_2) / u_2 = (z - a_3) / u_3
$

*Obtenció.* Aïllant el paràmetre $lambda$ de l'equació paramètrica.

=== Equació implícita

Siguin $pi_1,pi_2$ dos plans de l'espai la intersecció dels quals és la recta $r$. Aleshores, la recta $r$ es pot expressar com el sistema format per les equacions implícites d'ambdós plans:

$
r colon 
cases(
  A x &+ B y &+ C z &+ D &= 0,
  A'x &+ B'y &+ C'z &+ D' &= 0
)
$

*Obtenció.* Agrupant les expressions de l'equació contínua dos a dos.

== Plans

=== Equació vectorial

Sigui $X$ un punt qualsevol del pla.

$
pi colon arrow(O X) = arrow(O P) + lambda au + mu av
$

=== Equació paramètrica

$
pi colon cases(
  x = a_1 + lambda u_1 + mu v_1,
  y = a_2 + lambda u_2 + mu v_2,
  z = a_3 + lambda u_3 + mu v_3,
)
$

=== Equació general o implícita

$
pi colon A x + B y + C z + D = 0
$

on $arrow(n) = (A,B,C)$ és el vector normal del pla.

*Obtenció.* A partir de l'equació vectorial:

$
arrow(O X) &= arrow(O P) + lambda au + mu av <=> \
<=> arrow(O X) - arrow(O P) &= lambda au + mu av <=> \
<=> arrow(P X) &= lambda au + mu av
$

L'última igualtat suposa que el vector $arrow(P X)$ és una combinació lineal de $au$ i $av$. Per tant, el determinant de tots tres vectors ha de ser nul:

$
"det"(arrow(P X), au, av) = 0 <=> det(x-a_1, u_1, v_1;y-a_2,u_2,v_2; z-a_3,u_3,v_3) = 0
$

Desenvolupant el determinant, sigui o bé amb la #link(<regla-sarrus>)[regla de Sarrus] o bé amb l'#link(<expansio-laplace>)[expansió de Laplace], s'obté l'equació general.

== Posició relativa

=== Posició relativa entre dues rectes

Siguin $r, s$ dues rectes de l'espai.

==== Considerant els vectors directors

Siguin $arrow(r), arrow(s)$ els vectors directors de les rectes $r,s$ respectivament.

- $ran(arrow(r), arrow(s)) = 1$

  - $exists A in RR^2 : A in r and A in S <=> r = s$
  - $exists A in RR^2 : A in r and A in.not S <=> r parallel s$

- $ran(arrow(r), arrow(s)) = 2$

  Siguin uns punts de l'espai $P, P'$ qualsevols tals que $P in r, P' in S$.

  - $ran(arrow(r), arrow(s), arrow(P P')) = 2 <=> r, s "es tallen"$
  - $ran(arrow(r), arrow(s), arrow(P P')) = 3 <=> r, s "es creuen"$

  Alternativament, s'igualen els components de les equacions paramètriques de $r$ i $s$ per trobar els  parèmetres $(lambda, mu)$ correspponents al punt d'intersecció $Q$.

  - Si s'arriba a una contradicció, aleshores $exists.not Q <=> r,s "es creuen"$.
  - Si s'obté una parella única de paràmetres $(lambda, mu)$, aleshores $exists Q <=> r,s "es tallen"$.

==== Considerant les equacions implícites

Sigui $cal(S)$ els sistema format perles equacions implícites de $r, s$.

- $cal(S)$ és compatible determinat $<=>$ $r, s$ es tallen
- $cal(S)$ és compatible indeterminat $<=>$ $r = s$
- $cal(S)$ és incompatible
  - $ran(arrow(r), arrow(s)) = 1 <=> r parallel s$
  - $ran(arrow(r), arrow(s)) = 2 <=> r,s "es creuen"$


=== Posició relativa entre una recta i un pla

Trivial.

=== Posició relativa entre dos plans

Siguin $pi_1 colon A x + B y + C z + D = 0$ i $pi_2colon A'x + B'y+C'z+D'=0$ uns plans a l'espai.

- $display(A/A' = B /B' = C /C' = D / D') <=> pi_1 = pi_2$

- $display(A/A' = B /B' = C /C' != D / D') <=> pi_1 parallel pi_2$

- $display(A /A' != B /B' "o bé" A / A' != C / C' "o bé" B / B' != C / C') <=> pi_1,pi_2 "es tallen en una recta"$

=== Posició relativa entre tres plans

Cal estudiar el sistema d'equacions que formen les equacions dels plans amb el #link(<rouché-frobenius>)[teorema de Rouché-Frobenius].

Donats els plans $pi_1,pi_2,pi_3$ d'equacions:

$
pi_1colon &A  x &&+ B  y &&+ C  z &&+ D  &&= 0 \
pi_2colon &A' x &&+ B' y &&+ C' z &&+ D' &&= 0 \
pi_3colon &A''x &&+ B''y &&+ C''z &&+ D''&&= 0 \
$

Calculem el rang de les matrius següents:

$
M = mat(A,B,C;A',B',C';A'',B'',C''), \
M' = mat(A,B,C,D;A',B',C',D';A'',B'',C'',D'')
$

- $ran(M) = ran(M') = 1 <=> pi_1 = pi_2 = pi_3$
- $ran(M) = ran(M') = 2 <=>$ Els plans es tallen en una recta
  - $pi_1$ és una combinació lineal de $pi_2,pi_3 <=>$ Els tres plans tenen la recta en comú
  - $pi_1$ és una combinació lineal de $pi_2 <=>$ Dos plans coincideixen i tallen amb un altre pla.
- $ran(M) = ran(M') = 3 <=>$ Els plans es tallen en un punt
- $ran(M) != ran(M')$

  - $ran(M) = 1, ran(M') = 2 <=>$ alguns dels tres plans són paral·lels

    Comprovar les combinacions lineals entre les equacions per veure quants són coincidents i quants són paral·lels.

  - $ran(M) = 2, ran(M') = 3$

    - $pi_1 parallel pi_2 <=>$ Dos plans paral·lels i un tercer pla els talla
    - Cap parella de plans és paral·lel $<=>$ Els plans es tallen dos a dos
== Angles

=== Angle entre dues rectes

$
cos alpha = abs(au  dot av)/(abs(au)dot abs(av))
$

=== Angle entre una recta i un pla

Sigui $arrow(r)$ el vector director d'una recta $r$ i $arrow(n)$ el vector normal d'un pla $pi$.

$
sin alpha = abs(arrow(r) dot arrow(n)) / (abs(arrow(r)) abs(arrow(n)))
$

=== Angle entre dos plans

Siguin $arrow(n), arrow(n)'$ els vectors normals de dos plans $pi, pi'$.

$
cos alpha = abs(arrow(n) dot arrow(n)') / (abs(arrow(n)) abs(arrow(n)'))
$



== Projeccions i simetries

=== Projecció d'un punt sobre una recta

Sigui $P$ el punt original, $r$ la recta i $R$ la projecció.

==== Mitjançant un pla

1. Trobar el vector director $arrow(r)$ de la recta $r$.
2. Trobar el pla $pi$ tal que $pi perp r, P in pi$.

  Com que $pi perp r$, el vector director $arrow(r)$ és el vector normal del pla $pi$. Es troba l'equació general del pla $pi$ amb els components de $arrow(r)$ i trobant el valor de $D$ substituint el punt original $P$.
3. La projecció $R$ és el punt d'intersecció entre el pla $pi$ i la recta $r$.

  Es pot trobar resolent el sistema d'equacions format per les equacions dels plans de l'equació implícita de la recta $r$ (si és que s'ha donat així) i amb l'equació general del pla $pi$.

==== Imposant l'ortogonalitat

La projecció d'un punt sobre una recta és també la projecció ortogonal:

$ arrow(P R) perp r <=> arrow(P R) dot arrow(r) = 0 $

1. Com que $R in r$, expressem els components de $R$ amb l'equació paramètrica de $r$. Observem com el punt $R$ està expressat en funció del paràmetre $lambda$.
2. Substituïm els components de $R$ en $arrow(P R)$ i, aleshores, en el producte escalar. Resolem l'equació per obtenir $lambda$.
3. Substituïm el valor de $lambda$ en l'equació paramètrica de $r$ per obtenir les coordenades de $R$.

=== Projecció d'un punt sobre un pla
Siguin $P$ el punt original, $pi$ el pla i $R$ la projecció.

1. Trobar el vector normal $arrow(n)$ del pla $pi$.
2. Trobar la recta $r$ amb vector director $arrow(n)$ que passa per $P$.
3. La projecció $R$ és el punt d'intersecció entre la recta $r$ i el pla $pi$.

  Es pot trobar subtituint l'equació paramètrica de la recta $r$ dins l'equació general del pla $pi$ i obtenint-ne el paràmetre $lambda$.


=== Simetria d'un punt respecte un pla o una recta

Siguin $P$ el punt original, $cal(X)$ el pla o la recta i $S$ el punt simètric.

1. Trobar la projecció de $P$ sobre $cal(X)$, $R$.
2. La projecció $R$ és el punt mitjà del punt original $P$ i el punt simètric $S$:

$
arrow(O R) = 1/ 2 (arrow(O P) + arrow(O S)) => arrow(O S) =2 arrow(O R) - arrow(O P)
$

== Distàncies

=== Distància entre dos punts

Trivial.

=== Distància entre un punt i una recta

Siguin $P$ un punt del pla, $r$ una recta
 i $Q$ un punt qualsevol de la recta.
$
d(P, r) = (abs(arrow(P Q) times arrow(r)))/abs(arrow(r))
$

=== Distància entre dos rectes

Si les rectes són coincidents o es tallen, la seva distància és, de forma tautològicament necessària, nul·la.

==== Rectes que s'encreuen

Donades dues rectes $r,s$, se n'obtenen les equacions paramètriques per definir un vector $arrow(R S)$ entre els punts genèrics $R in r, S in r$.

S'imposa que aquest vector és perpendicular als dos vectors directors $arrow(r), arrow(s)$ amb el producte escalar i es resol el sistema resultant, d'on s'obtenen els paràmetres de cada equació paremètrica per trobar les coordenades punts $R, S$.

Finalment, $d(r,s) = abs(arrow( R S))$.
==== Rectes paral·leles

$ d(r,s) = d(R, s) wide R in r $

= Probabilitat


== Probabilitat bàsica

=== Espai mostral

L'espai mostral $E$ és el conjunt de tots els resultatats possibles d'un experiment. Qualsevol esdeveniment $A$ és un subconjunt de $E$.


=== Operacions amb conjunts

- *Unió.* $A union B = {X : X in A "o bé" X in B}$
- *Intersecció.* \ $ A inter B = {X : X in A " i " X in B}$

=== Esdeveniments incompatibles

Dos esdeveniments $A$ i $B$ són incompatibles si i només si $A inter B = emptyset$.

=== Fórmula de Laplace

Sigui un espai mostral $E = {x_1...,x_n}$ amb $P[x_1]=dots.c=P[x_n]$. Aleshores, si $X subset E$:

$
P[X] =  abs(X) / n = ("casos favorables a" X) / "casos totals"
$

No es pot aplicar amb esdeveniments no equiprobables.
=== Principi d'inclusió-exclusió

$
P[A union B] = P[A] + P[B] - P[A inter B]
$

=== Teorema de De Morgan

$
overline(A union B) = overline(A) inter overline(B) \
overline(A inter B) = overline(A) union overline(B)
$

== Probabilitat condicionada

=== Diagrames en arbre

#align(center, diagram({
  
  $$
  edge( (1, -0.5), text(10pt)[$P[A_1]$], label-pos: 0.6, label-sep: 0pt)
  edge("rr", text(10pt)[$P[A_2]$], label-pos: 0.6, label-sep: 2pt)
  edge((1, 0.5), (0, 0), text(10pt)[$P[A_3]$], label-pos: 0.6, label-sep: -28pt)
  node((1, -0.5), $A_1$)
  node((2, 0), $A_2$)
  node((1, 0.5), $A_3$)
  edge((2, 0), (4, -1), text(10pt)[$P[B_1 | A_2]$], label-pos: 0.7, label-sep: 0pt)
  edge((2, 0), "rr", text(10pt)[$P[B_2 | A_2]$], label-pos: 0.6, label-sep: 2pt)
  edge((2, 0), (4, 0.5), text(10pt)[$P[B_3 | A_2]$], label-pos: 0.5, label-sep: -24pt)
  node((4, -1), $B_1$)
  node((4, 0), $B_2$)
  node((4, 0.5), $B_3$)
}))


=== Fórmula de la probabilitat condicionada

Útil per calcular probabilitats _a priori_; probabilitat que succeeixi l'esdeveniment $A$ sabent que ha succeït l'esdeveniment $B$.

$
P[A | B] = P[A inter B] / P[B]
$

=== Fórmula de Bayes

Útil per calcular probabilitats _a posteriori_; probabilitat que hagi succeït l'esdeveniment $A$ sabent que ha succeït l'esdeveniment $B$.

$
 P[A | B] = P[A inter B] / P[B] = (P[B | A] dot P[A]) / P[B]
$


*Demostració.* Aplicació de la fórmula de la probabilitat condicionada dues vegades: com que $P[A inter B] = P[B inter A]$, aïllem la intersecció i igualem ambdues expressions:

$
cases(display(P[A | B] = P[A inter B] / P[B]), display(P[B | A] = P[B inter A] / P[A]) ) => \ => P[A | B] dot P[B] = P[B | A] dot P[A] <=> \ <=> P[A | B] = (P[B | A] dot P[A]) / P[B] wide qed
$

=== Probabilitat total

Siguin els esdeveniments $A_1,A_2,...,A_n$ tals que la seva unió és l'espai mostral. Aleshores, la probabilitat d'un esdeveniment $B$ és:

$
P[B] = P[A_1] dot P[B | A_1] +  \ + space dots.c + P[A_n] dot P[B | P[A_n]
$

*Demostració.*

$
B = B inter E = B inter (union.big_i A_i) = \ = B inter A_1 union dots.c union B inter A_n
$

$
P[B] = P[B inter A_1] + dots.c + P[B inter A_n] = \ = P[A_1] dot P[B | A_1] + dots.c + P[A_n] dot P[B | A_n] space qed
$


== Probabilitat composta

=== Esdeveniments independents

Uns esdeveniments $ A= {A_1,...,A_n}$ són independents si el fet que es doni una no influeix en la probabilitat d'una altra. Aleshores, la probabilitat que es doni un conjunt d'esdeveniments $S subset A$ és el producte de les probabilitats de cada esdeveniment:

$
P[inter.big_i S_i] = \ = P[S_1] dot dots.c dot P[S_n]
$

Equivalentment, si els esdeveniments $A$ i $C$ són independents, aleshores:

$
P[A | C] = P[A] <=> P[C | A] = P[C]
$
=== Esdeveniments dependents

Siguin $A$ i $B$ dos esdeveniments. Sigui $P[A_1]$ la probabilitat que s'esdevingui $A$ en la primera etapa i $P[B_2]$ la probabilitat de $B$ en la segona. Aleshores:

$
P[A_1 inter B_2] = P[A_1] dot P[A_1 | B_2]
$

== Distribució binomial

=== Notació de la distribució binomial

Donada una experiència dicotòmica ---només hi ha dues possibilitats, complementàries--- en què $p$ és la probabilitat d'èxit i es repeteix $n$ vegades, la distribució de probabilitat de tenir $X$ èxits és la distribució binomial $B(n, p)$.

=== Funció de probabilitat

La probabilitat d'obtenir exactament $k$ èxits en $n$ proves independents amb una probabilitat d'èxit $p$ és:

$
P(X= k) = vec(n, k) p^k (1-k)^(n-k)
$

*Demostració.* Sabent que es fan $n$ proves, cal trobar el nombre de casos en què tenim exactament $k$ èxits.  Observem que n'hi ha prou amb trobar el nombre de maneres de tenir els $k$ èxits entre les $n$ proves; això són nombres combinatoris, de $n$ sobre $k$.

Denotem $E$ per èxit i $overline(E)$ pel contrari. Si, per exemple, $n=4,k=2$, aleshores:

$
cases(
  overbrace(underbrace(E comma E comma ... comma E, k "èxits")   comma overline(E) comma ... comma overline(E), n "experiències"),

  ...
) med --> med vec(n, k) "casos"
$

Cada combinació té la mateixa probabilitat. Com que $P[E] = p$, per definició, i $P[overline(E)] = 1 -p$ i les experiències són independents, tenim que la probabilitat d'una combinació és $P[...] = p^k (1-p)^(n-k)$.

Per tant, la probabilitat de tenir exactament $k$ èxits amb $n$ proves de probabilitat $p$ és

$
P(X= k) = vec(n, k) p^k (1-k)^(n-k) wide qed
$
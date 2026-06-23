#import "../../lib/resum.template.typ": *
#import "shortcuts.typ": * 

= Cinemàtica


/*
=== Vector tangencial i vector normal

Vectors unitaris.

$
arrow(T) = arrow(v) / abs(arrow(v)), arrow(N) = ...
$
*/

== Moviment rectilini

=== Variables del moviment rectilini

$mag(arrow(r)(t), "m", name: "posició")$ \
$mag(arrow(v)(t), "m/s", name: "velocitat")$ \
$mag(arrow(a)(t), "m/s^2", name: "acceleració")$ \


$
arrow(v)= (dif arrow(r)) / (dif t), wide arrow(a) = (dif arrow(v)) / (dif t) = (dif^2 arrow(r)) / (dif t^2)
$

=== Moviment rectilni uniforme

==== Moviment

Trajectòria en línia recta.

$
a = 0, v = const
$

==== Equació vectorial

$
arrow(r)(t) = arrow(r_0) + arrow(v) t
$


==== Equació escalar
$
x(t) = x_0 + v t
$

=== Moviment rectilini uniforme accelerat

==== Moviment

Trajectòria en línia recta.

$
a = const
$

==== Equacions vectorials
$
arrow(v)(t) = arrow(v_0)+ arrow(a) t \
arrow(r)(t) =  arrow(r_0) + arrow(v_0) t + 1 / 2 arrow(a)t^2 \
$

==== Equacions escalars

$
v = v_0 + a t \
x = x_0 + v_0 t + 1 / 2 a t^2 \
v_"f"^2 = v_0^2 + 2 a Delta x
$

== Moviment circular

=== Variables del moviment circular

$mag(theta, "rad", name: "angle recorregut")$ \
$mag(omega, "rad/s", name: "velocitat angular")$ \
$mag(alpha, "rad/s^2", name: "acceleració angular")$ \

$
omega = (dif theta) / (dif t), wide alpha = (dif omega) / (dif t) = (dif^2 theta) / (dif t^2)
$

$mag(r, "m", name: "radi")$: distància entre un punt de la trajectòria i el centre


=== Velocitat

La velocitat és tangencial al moviment.
$
v(t) = abs(arrow(v)(t)) = sqrt(v_x^2 + v_y^2 + v_z^2)
$

$
v = omega r
$


=== Acceleració centrípeta i tangencial

==== Relació entre les acceleracions

$
a_c^2 + a_t^2 = abs(arrow(a))^2
$

==== Acceleració centrípeta o normal

$
a_c = v^2 / r = omega^2 r
$

==== Acceleració tangencial


$
a_t = (dif abs(arrow(v))) / (dif t) = (arrow(a) dot arrow(v)) / abs(arrow(v))
$


$
a_t = alpha r
$

=== Moviment circular uniforme accelerat


$
omega(t) = omega_0 + alpha t \
theta(t) = theta_0 + omega_0 t + 1 / 2 alpha t^2 \
omega^2_"f" = omega_0^2 + 2 alpha Delta theta
$

=== Equacions vectorials

En el pla XY.

$
arrow(r) (t) = r cos theta (t) ai + r sin theta (t) aj \
arrow(v) (t) = r omega(t) (- sin theta ai + cos theta aj) \
arrow(a) (t) = r alpha (- sin theta ai + cos theta aj) - \ - space  r omega^2 (cos theta ai + sin theta j)
$

= Dinàmica

== Forces i lleis de Newton

=== Primera llei de Newton

$
sum arrow(F_i) = arrow(0) <=> arrow(v) = const
$

=== Segona llei de Newton

$
sum arrow(F_i) = (dif arrow(p)) / (dif t) = m arrow(a)
$
=== Tercera llei de Newton

Si un cos $A$ exerceix una força sobre un cos $B$, el cos $B$ exerceix una força igual i oposada sobre $A$.

=== Llei de Hooke


Força exercida per una molla.


$
arrow(F) = -k arrow(x)
$

=== Força normal


$mag(arrow(N), name: "força normal")$: Força perpendicular a la superfície

=== Forces de fregament

$mag(arrow(mu_t))$: vector unitari tangent al moviment
==== Fregament estàtic

$mag(mu_s, "1", name: "coeficient de fregament estàtic")$ \

$
arrow(F_"fr") = - mu_s abs(arrow(N)) arrow(mu_t)
$

==== Fregament dinàmic
$mag(mu_d, "1", name: "coeficient de fregament dinàmic")$ \

$
arrow(F_"fr") = - mu_d abs(arrow(N)) arrow(mu_t)
$
== Treball i energia

=== Treball d'una força

==== Força constant
$
W = arrow(F) dot arrow(r)
$
==== Força variable

$
W = integral arrow(F) dot dif arrow(r)
$

=== Potència

$
P = W / (Delta t) = arrow(F) dot arrow(v)
$

=== Energia cinètica

$
Ecin = 1 / 2 m v^2
$

=== Energia potencial

==== Energia potencial gravitatòria
A prop de la superfície terrestre.

$
Epot = m g h
$

==== Energia potencial elàstica

$
Epot = 1 / 2 k x^2
$

==== Relació amb l'energia cinètica

$
W = Delta Ecin = 1/ 2 m v^2_"f" - 1 / 2 m v ^2_0 = \ = 1 / 2 m(v^2_f - v^2_0)
$

=== Energia mecànica

$
Emec = Ecin + Epot
$

=== Llei de conservació de l'energia mecànica

Si no hi ha forces conservatives:

$
Delta Emec = 0
$

Treball de forces conservatives:

$
W_"no cons" = Delta Emec
$

=== Teorema de les forces vives

$
W = Delta Ecin 
$

== Moments i impuls lineal

=== Moment lineal

També anomenat quantitat de moviment.

$
arrow(p) = m arrow(v)
$


=== Impuls

$
arrow(I) = integral arrow(F) dif t = Delta arrow(p)
$

=== Moment d'una força

==== Expressió vectorial
$
arrow(tau) = arrow(r) times arrow(F) \
$

==== Expressió escalar

$
abs(arrow(tau)) = r F sin theta
$

=== Moment angular

$
arrow(L) = arrow(r) times arrow(p) = m (arrow(r) times arrow(v)) \
arrow(tau) = (dif arrow(L)) / (dif t)
$
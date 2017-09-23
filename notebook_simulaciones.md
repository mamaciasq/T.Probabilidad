# Teoría de probabilidad
Martín Andrés Macías Quintero  

# _Demostraciones_

## Ejercicio 12.7 

Sean $(X, Y)$ _uniformes sobre la bola unitaria_, es decir,

$$
f_{(X, Y)} (x,y) =
\begin{cases}
\frac{1}{\pi}\text{ si } x^2+y^2\leq 1\\
\\
0 \text{ si } x^2+y^2 > 1
\end{cases}
$$

Encuentre la distribución de $R=\sqrt{X^2+Y^2}$. (_Pista_: Introduzca una variable aleatoria auxiliar definida como $S=Arctan\left(\frac{Y}{X}\right)$.) [Respuesta: $f_R(r)=2r\mathbb{1}_{0,1}(r)$.]

## Ejercicio 12.11

Sean $(X, Y)$ normales independientes, ambas con media $\mu=0$ y varianza $\sigma^2$. Sea

$$
Z = \sqrt{X^2 + Y^2} \quad \text{y}\quad W=Arctan\left(\frac{Y}{X}\right), \quad\quad\quad-\frac{\pi}{2}<W\leq\frac{\pi}{2}.
$$
Demuestre que $Z$ tiene distribución Rayleigh, que $W$ es uniforme sobre $\left(-\frac{\pi}{2},\frac{\pi}{2} \right)$ y que $Z$ y $W$ son independientes.

### *Respuesta:*

Consideremos la función $g(x,y)=\left(\sqrt{x^2+y^2}\right), \arctan\left(\frac{Y}{X}\right)$

Sea $S_0={(x,y):y=0}$, $S_1={(x,y):y>0}$, $S_2={(x,y):y<0}$. Note que $\bigcup\limits_{i=0}^2S_i=\mathbb{R}^2$ y $m_2(S_0) = 0$. Igualmente para $i=1,2$ $g:S_i\rightarrow\mathbb{R}^2$ es inyectiva y continuamente diferenciable. Sus correspondientes inversas están dadas por $g_1^{-1}(z,w) = (z \sin w,z \cos w)$ y $g_2^{-1}(z,w) = (z \sin w,-z \cos w)$. En ambos casos se tiene que $\left|J_{g_i^{-1}}(z,w)\right|=z$, así, por el Corolario 12.1 la densidad de $(Z,W)$ está dada por


\begin{equation}
\begin{split}
f_{(Z,W)}(z,w) \quad &= \quad \left( \frac{1}{2\pi\sigma^2}e^{\frac{-z^2}{2\sigma}}z + \frac{1}{2\pi\sigma^2}e^{\frac{-z^2}{2\sigma}}z \right) \mathbb{1}_{\left(-\frac{\pi}{2},\frac{\pi}{2}\right)}(w) \mathbb{1}_{(0,\infty)}(z)\\

&=\quad \frac{1}{\pi}\mathbb{1}_{\left(-\frac{\pi}{2},\frac{\pi}{2}\right)}(w)
\times\frac{z}{\sigma^2}e^{\frac{-z^2}{2\sigma}} \mathbb{1}_{(0,\infty)}(z)
\renewcommand{\qedsymbol}{\rule{0.7em}{0.7em}}
\end{split}
\end{equation}


## Ejercicio 12.15 

(_Simulación de variables aleatorias normales_) Sean $U_1$, $U_2$ dos variables aleatorias uniformes independientes sobre $(0,1)$. Sean $\theta=2\pi U_1$ y $S=-\ln(U_2)$.

a. Demuestre que $S$ tiene distribución exponencial, y que $R =\sqrt{2S}$ tiene distribución Rayleigh.

b. Sean $X=R \cos\theta$, $Y=R\sin\theta$. Demuestre que $X$ y $Y$ son normales independientes.

(_Pista:_ Para la parte _(a)_ recuerde que una exponencial es un caso especial de una distribución Gamma: de hecho, esto es $\chi_2^2$. Para la parte (b) invierta el procedimiento del esjericio 12.11).

_Observación:_ El ejercicio 12.15 es conocido como el método Box-Muller para simular variables aleatorias normales.
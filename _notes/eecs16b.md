---
title: 'Notes: EECS 16B / Designing Information Devices and Systems II'
date: 2021-3-26
permalink: /notes/cs61c
tags:
  - class notes
  - computer science
---

I took these notes for [EECS 16B: Designing Information Devices and Systems II](https://www.eecs16b.org/index.html#schedule) taught by Vladimir Stojanovic and Murat Arcak.

Midterm
===

## Complex

Cheat sheet for complex:

![](/images/classes/eecs16b/cap_discharge.png)

## Inverters

The **CMOS inverter** is comprised of a **NMOS transistor** and **PMOS transistor**. A NMOS transistor is *on* if the gate voltage is some threshold greater than the source voltage: $V_{GS} = V_G - V_S > V_{tn}$. Conversely, the PMOS transistor checks if the difference is less than some threshold: $V_{SG} = V_S - V_G > V_{tp}$. If NMOS controls a gate to $V_{SS}$ and PMOS controls a gate to $V_{DD}$.

![](/images/classes/eecs16b/cmos.png)

In reality, transistors are made of capacitors, which take time to charge and discharge. The circuit below can be modeled as:
$$\frac{\partial}{\partial t} V(t) = \frac{-1}{RC} V(t)$$

![](/images/classes/eecs16b/cap_discharge.png)

Applying the techniques below to an oscilator reveals that oscilators charge and discharge with equations of the form $V(t_{int}) = V_i (e^{-\frac{t_{int}}{RC}})$ where $V_i$ is the initial voltage.

## Diff Eq

For **first-order homogeneous differential equations** of the form $\frac{\partial}{\partial t} x(t)) = ax(t)$, we guess the general solution $x = ke^{at}$ and solve for $k_0$ via initial conditions. To prove the solution is *unique*, notice for any other solution $y$, we have $\frac{\partial}{\partial t} y/(k_0 e^{at}) = 0$, so $y = k_0 e^{at}$.

For **nonhomogeneous differential equations** (where all 0 is not a solution) of form $\frac{\partial}{\partial t} x(t) = ax(t) + b$, we substitute $\tilde{x} = x + \frac{b}{a}$ and solve with the form above.

For the form $\frac{\partial}{\partial t} x(t) = \lambda x(t) + u(t)$, we deploy the general solution $x(t) = x_0e^{\lambda t} + \int_0^t e^{\lambda (t-\theta)} u(\theta) dt$. For example, suppose  $\frac{\partial}{\partial t} V(t) = \lambda V(t) - \lambda t^k e^{\lambda t}$ for $t \geq 0$ and $k > -1$ and $v_0 = 0$. Integrating, we have $V(t) =  (-\lambda) \int_0^t \theta^k e^{\lambda t} d \theta = (-\lambda)e^{\lambda t} \int_0^t \theta^k d\theta$.
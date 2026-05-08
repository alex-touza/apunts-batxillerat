#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "shortcuts.typ": *

#let smh-phase-shift() = canvas({
  import draw: *


  let situations = (
    (calc.cos, $cos(omega t)$),
    (calc.sin, $sin(omega t)$),
    (t => (calc.sin(t + calc.pi)), $sin(omega t plus.minus pi)$),
  )

  for (func, label) in situations {
    plot.plot(
      size: (1.5,2),
      name: "plot",
      axis-style: "school-book",
      plot-style: (
        stroke: 2pt + blue
      ),
      x-label: $t$, y-label: $x$,
      x-tick-step: calc.pi/2,
      y-tick-step: none,
      x-format: t => [],
      {
        plot.add(domain: (0, 2 * calc.pi), func)
      }
    )
    content((1, -1), label)
    set-origin((3,0))
  }
  
})

#let smh-spring(platform-size: (6.5, 1.5), box-size: 1, center: 3, amplitude: 2.25, pos: 0.75, margin: 0.15, spikes: 10, spikes-stroke: black.lighten(20%) + 1.5pt, spike-step: 0.4, tick-height: 0.4) = canvas({
  import draw: *
  
  let height = platform-size.last()
  let width = platform-size.first()

  let size = box-size

  let spike-step-y = spike-step

  let tick-height = 0.4

  let c = center + margin

  pos -= size / 2



  // marks
  for (pos, label) in (
    (c - amplitude, $x=-A$),
    (c, $x=0$),
    (c + amplitude, $x=+A$)
  ) {
    line((pos, - tick-height), (pos, margin), stroke: 1pt)

    line((pos, tick-height - margin), (pos, height), stroke: (thickness: 1pt, dash: "dashed"))

    content((pos, - tick-height - 0.2), label)
  }
  
  // spikes
  let spike-step-x = (pos + margin) / spikes
  let spike-center-y =  size / 2 + margin

  for i in range(spikes) {
    let x = spike-step-x * i

    line((x, spike-center-y - spike-step-y / 2), (x + spike-step-x / 2, spike-center-y + spike-step-y / 2), (x + spike-step-x, spike-center-y - spike-step-y / 2), stroke: spikes-stroke)
  }
  
  // box
  line((pos + margin, margin), (pos + margin + size, margin), (pos + margin + size, margin + size), (pos + margin, margin + size), close: true, stroke: 2pt, fill: black.lighten(80%))

    // axis
  line((0,height), (0,0), stroke: 2pt)
  line((0,0), (width,0), stroke: 2pt)

/*  
  let arr = (
    ($v=0$, $abs(v)=abs(v_max)$, $v=0$),
    ($abs(a)=abs(a_max)$, $a=0$,$abs(a)=abs(a_max)$),
    ($E_"pot" = E_"pot"_"max"$, $E_"pot" = 0$, $E_"pot" = E_"pot"_"max"$)
  )

  let row-line-offset = 0.5

  for (i, row) in arr.enumerate(start: 1) {
    let y = - tick-height + i * (-1)
    for (j, cell) in row.enumerate(start: -1) {
      let x = c + amplitude * j
      content((x, y), cell)

    }

    line((c - amplitude - 0.5, y - row-line-offset), (c + amplitude + 0.5, y - row-line-offset))
  }
*/
  let table-row-size = 0.9

  let magnitudes = ($abs(x)$, $abs(v)$, $abs(a)$, $Ecin$, $Epot$)
  let values = (
    (1, 0, 1),
    (0, 1, 0),
    (1, 0, 1),
    (0, 1, 0),
    (1, 0, 1),
  )

  let value-enum = (
    $0$,
    $"màx."$,
  )

  let mag-pos = c - amplitude * 1.6

  for (i, m) in magnitudes.enumerate(start: 1) {
    let y = - tick-height - table-row-size * i;
    content((mag-pos, y), math.bold(m))

    if i < magnitudes.len() {
      let yb = - tick-height - table-row-size * (i + 0.5)
    
      line((mag-pos - 0.5, yb), (width, yb))     
    }


     for (j, num) in values.at(i - 1).enumerate(start: -1) {
      let x = c + amplitude * j
      content((x, y), value-enum.at(num))
    }
  }

})

#let reflection() = canvas({
  import draw: *

  let c1 = blue.lighten(80%)
  let c2 = red.lighten(80%)

  line((0,0), (0, 1), (0.8, 0.6), fill: c2, stroke: none)
  line((0,0), (0, 1), (-0.82, 0.6), fill: c1, stroke: none)
  
  arc((0, 1), stop: 142deg, start: 90deg, fill: c1)
  arc((0.8, 0.6), stop: 90deg, start: 37deg, fill: c2)

  
  line((-2.5, 0), (2.5, 0))
  line((0, 0), (0, 2), stroke: (dash: "densely-dashed"))

  line((-2, 1.5), (0, 0), mark: (end: ">", fill: black, offset: 1.35, scale: 1.25, shorten-to: none))
  line((0, 0), (2, 1.5), mark: (end: ">", fill: black, offset: 0.75, scale: 1.25, shorten-to: none))

  
  content((0.55, 1.2), text(11pt, $hat(theta_2)$))
  content((-0.55, 1.2), text(11pt, $hat(theta_1)$))

  content((0, -0.5), $hat(theta_1) = hat(theta_2)$)
}, length: 1.3cm)


#let refraction(size: 0.9cm) = canvas({
  import draw: *

  let c1 = blue.lighten(40%)
  let c2 = red.lighten(40%)

  line((0,0), (0, -1), (0.47, -0.92), fill: c2, stroke: none)
  line((0,0), (0, 1), (-0.9, 0.48), fill: c1, stroke: none)
  
  arc((0, 1), stop: 152deg, start: 90deg, fill: c1)
  arc((0, -1), stop: 296deg, start: 270deg, fill: c2)

  
  line((-2.5, 0), (2.5, 0))
  line((0, 2), (0, -2), stroke: (dash: "densely-dashed"))

  line((-2.5, 1.3), (0, 0), mark: (end: ">", fill: black, offset: 1.35, scale: 1.25, shorten-to: none))
  line((0, 0), (1, -2), mark: (end: ">", fill: black, offset: 0.55, scale: 1.25, shorten-to: none))
/*
  let fronts(n, m, z: 5, side: true) = {
    if not side {
      z *= -1
    }
    for i in range(n) {
      let p = (i / z, m * i / z)
      //line(p, (1, 0))

      line((i/z, 0), p)
    }
  }

  fronts(5, 1.3 / -2.5, side: false, z: 2)
  fronts(7, -2, z: 8)
*/
  
  content((-0.7, 1.1), text(11pt, $theta_1$))
  content((0.3, -1.35), text(11pt, $theta_2$))

}, length: size)

#let doppler(n-circles: 6, floor-length: 6, n-boxes: 5, boxes-dx: 0.2, box-size: 0.7, box-color: red.transparentize(40%)) = canvas({
  import draw: *

 
  line((0,0), (box-size,0), (box-size,box-size), (0, box-size), close: true, fill: box-color)

  let center = (box-size / 2, box-size / 2)

  line(center, (center.at(0) + 2, center.at(1)), mark: (end: ">"))

  line((- floor-length / 2, 0), ( floor-length / 2, 0))
/*
  for x in range(- floor-length, floor-length, step: 0.5) {
    
  }
*/
  for i in range(n-circles) {
    circle((center.at(0) - 0.15*(i -1), center.at(1)), radius: i /4, stroke: black.transparentize(60%))
  

  }

})


#let waves-equation() = {
  canvas({
    import draw: *
    plot.plot(
      size: (4.5,2),
      name: "plot",
      axis-style: "school-book",
      plot-style: (
        stroke: 2pt + blue
      ),
      x-tick-step: calc.pi/2,
      y-tick-step: none,
      x-label: $x$,
      x-format: t => [],
      {
        plot.add(domain: (0, 4 * calc.pi), t => calc.sin(t))
      }
    )

    line((1, 2.5), (2.5, 2.5), stroke: 1.5pt + blue.lighten(40%), mark: (end: ">"))
    line((1, 2.25), (2.5, 2.25), stroke: 1.5pt + red.lighten(40%), mark: (start: ">"))

    content((1.75, 2.75), text(blue)[$bold(-)$])
    content((1.75, 2), text(red.lighten(20%))[$bold(+)$])
  })

  
}

#let gravity-energies() = canvas({
  import draw: *

  plot.plot(
    size: (4, 4),
    axis-style: "school-book",
    x-label: $r$,
    y-label: $E$,
    x-tick-step: none,
    y-tick-step: none,
    legend: "north",
    {
      plot.add(domain: (0.1, 0.3), label: $Emec #v(2em)$, x => - 1 /(x*x) )
      plot.add(domain: (0.1, 0.3), label: $Epot #v(2em)$, x => - 2/ (x*x))
      plot.add(domain: (0.1, 0.3), label: $Ecin #v(2em)$, x => 1/ (x*x))
      plot.add(domain: (0.095, 0.3), label: none, x => 1, style: (stroke: 0pt))
    }
  )
})

#let angular-momentum() = canvas({
  import draw: *

  circle((0,0), radius: (2.5, 1.5))

  

  circle((1, 0), radius: (0.2,0.2), fill: orange, stroke: orange)
})

#let in-cross(x: 0,y: 0) = {
  import draw: *
  line((x + 0.1, y + 0.1), (x - 0.1, y - 0.1))
  line((x - 0.1, y + 0.1), (x + 0.1, y - 0.1))

}

#let out-circle(x: 0,y: 0, color: black, radius: 0.06) = {
  import draw: *
  circle((x, y), radius: radius, fill: color, stroke: none)
}

#let magnetic-field-spiral(arrow-color: black) = canvas({
    import draw: *
    
    let a = (0.75, -1)
    let b = (1.25, -1)
    
    hobby(a, (0, 0), (1, 1), (2, 0), b, omega: 1, stroke: black)

    line(a, (a.first(), a.last() - 1))
    line(b, (b.first(), b.last() - 1))
    
    line((b.first() + 0.2, b.last() -0.25), (b.first() + 0.2, b.last() -0.75), stroke: arrow-color, mark: (start: (symbol: ">", width: 0.1, length: 0.1, fill: arrow-color)))
    line((a.first() - 0.2, a.last() -0.25), (a.first() - 0.2, a.last() -0.75), stroke: arrow-color, mark: (end: (symbol: ">", width: 0.1, length: 0.1, fill: arrow-color)))

    
    content((b.first() + 0.5, b.last() -0.5), text(12pt, $I$))
    content((a.first() - 0.5, a.last() -0.5), text(12pt, $I$))

    in-cross(x: 2.4, y: 0)
    in-cross(x: 2.1, y: 0.7)
    in-cross(x: 2.1, y: -0.7)
    
    out-circle(x: 1.7, y: 0)
    out-circle(x: 1.5, y: 0.5)
    out-circle(x: 1.5, y: -0.5)

    in-cross(x: -0.4, y: 0)
    in-cross(x: -0.1, y: 0.7)
    in-cross(x: -0.1, y: -0.7)
    
    out-circle(x: 0.3, y: 0)
    out-circle(x: 0.5, y: 0.5)
    out-circle(x: 0.5, y: -0.5)

    out-circle(x: 1, y: 0.7)
    in-cross(x: 1, y: 1.25)

    out-circle(x: 1, y: 0, radius: 0.1)
    content((1.2, -0.2), text(10pt, $arrow(B)$))
    
}, length: 1.2cm)

#let electric-field-charges-sign() = canvas({
  import draw: *

  circle((0, 0), radius: 0.25, stroke: red, fill: red.transparentize(80%))
  line((-0.15, 0), (0.15, 0), stroke: red)
  line((0, -0.15), (0, 0.15), stroke: red)


  line((0, 0.4), (0, 1.3), mark: (end: ">"))
  line((0, -0.4), (0, -1.3), mark: (end: ">"))
  line((0.4, 0), (1.3, 0), mark: (end: ">"))
  line((-0.4, 0), (-1.3, 0), mark: (end: ">"))

  circle((3, 0), radius: 0.25, stroke: blue, fill: blue.transparentize(80%))
  line((2.85, 0), (3.15, 0), stroke: blue)

  line((3, 0.4), (3, 1.3), mark: (start: ">"))
  line((3, -0.4), (3, -1.3), mark: (start: ">"))
  line((3.4, 0), (4.3, 0), mark: (start: ">"))
  line((2.6, 0), (1.7, 0), mark: (start: ">"))
}, length: 1.1cm)

#let stationary-wave(func, wavelength, distance, close, graph-size-x: 5, amplitude: 2, mark-color: blue.darken(50%)) = canvas({
  import draw: *
  import plot: *

  
  plot(
    size: (graph-size-x,amplitude),
    name: "plot",
    axis-style:  none,
    plot-style: (
      stroke: 2pt + blue
    ),
    x-label: $$, y-label: $$,
    x-tick-step: none,
    y-tick-step: none,
    x-format: t => [],
    {
      add(domain: (0, 2 * calc.pi), func)
      add(domain: (0, 2 * calc.pi), x => (- func(x)))
    }
  )



  let x = 0
  if not close.first() {
    x += wavelength / 4
  }
  

  line((0, 1), (graph-size-x, 1), stroke: 2pt)
  line((0, 2.5), (0, -0.5), stroke: 2pt)
  line((graph-size-x, 2.5), (graph-size-x, -0.5), stroke: 2pt)

  while (x <= distance) {
    circle((x / distance * graph-size-x, 1), radius: 0.18, stroke: none, fill: mark-color)
    x += wavelength / 2
  }

  x = 0
  if close.first() {
    x += wavelength / 4
  }

    while (x <= distance) {
    draw.mark((x / distance * graph-size-x, 1.05), (x / distance * graph-size-x, 1.2), length: 8pt, width: 8pt, symbol: "x", stroke: mark-color + 2pt)
    x += wavelength / 2
  }
})

#let em-wave() = stack( dir: ltr, spacing: 2em, canvas({
  import draw: *

  ortho(y: -20deg, x: -35deg, {
    on-xz({
      grid((0,-2), (8,2), stroke: gray + .5pt)
    })

    // Draw a sine wave on the xy plane
    let wave(amplitude: 1, fill: none, phases: 2, scale: 8, samples: 100) = {
      line(..(for x in range(0, samples + 1) {
        let x = x / samples
        let p = (2 * phases * calc.pi) * x
        ((x * scale, calc.sin(p) * amplitude),)
      }), fill: fill)

      let subdivs = 8
      for phase in range(0, phases) {
        let x = phase / phases
        for div in range(1, subdivs + 1) {
          let p = 2 * calc.pi * (div / subdivs)
          let y = calc.sin(p) * amplitude
          let x = x * scale + div / subdivs * scale / phases
          line((x, 0), (x, y), stroke: rgb(0, 0, 0, 150) + .5pt)
        }
      }
    }

    on-xy({
      wave(amplitude: 1.6, fill: rgb(255, 0, 0, 50))
    })
    on-xz({
      wave(amplitude: 1, fill: blue.transparentize(50%))
    })


  })
}),
canvas({
  import draw: *

  ortho(y: -20deg, x: -30deg, {
    line((0,0,0), (0,0,-3), mark: (end: ">"), stroke: blue)
    line((0,0,0), (0,3,0), mark: (end: ">"), stroke: red)
    line((0,0,0), (3,0,0), mark: (end: ">"))

    content((1, 1.2), (6, 0), [Direcció])
    content((0.45, 2.5), (4, 2), text(red.darken(30%))[Camp elèctric])
    content((-0.5, -1), (4, -1), text(blue.darken(30%))[Camp magnètic])
  })
}, length: 1.75em)
)

#let transformer() = canvas({
  import draw: *

  let size-out = 3.25
  let size-in = 2.25

  let box-stroke = black + 1.5pt

  let wire-stroke = black + 1.25pt

  let wire-length = 2
  
  line((0,0), (size-out, 0), (size-out, size-out), (0, size-out), close: true, fill: black.lighten(90%), stroke: box-stroke)

  let width = (size-out - size-in) / 2
  line((width,width), (size-out - width, width), (size-out - width, size-out - width), (width, size-out - width), close: true, fill: white, stroke: box-stroke)

  let coil(x-start, x-end, y-start, y-end, spin-density) = {
    let spins = calc.floor(calc.abs(y-end - y-start) * spin-density)
    
    let y-per-spin = 1 / spin-density


    let y = y-start
    for i in range(spins) {
      
      line((x-start, y), (x-end, y + y-per-spin), stroke: wire-stroke)
      y += y-per-spin
    }
  }

  coil(0, width, width, size-out - width, 5.5)
  coil(size-out, size-out - width, width, size-out - width, 2.5)

  line((0, size-out - width), (- wire-length, size-out - width))
  line((0, width), (- wire-length, width))

  line((size-out, width), (size-out + wire-length, width))
  line((size-out, size-out - width), (size-out + wire-length, size-out - width))


  let positive-y = size-out - width / 3 + 0.2
  let negative-y = 2* width / 3
  let symbol-margin = 0.4
  let right-x = size-out + symbol-margin - 0.15
  let right-x = size-out + symbol-margin - 0.15
  
  content((- symbol-margin - 0.1, positive-y), (- symbol-margin + 0.1, positive-y), $+$)
  content((- symbol-margin - 0.1, negative-y), (- symbol-margin + 0.1, negative-y), $-$)
    content((right-x - 0.1, positive-y), (right-x + 0.1, positive-y), $+$)
  content((right-x - 0.1, negative-y), (right-x + 0.1, negative-y), $-$)

  content((right-x + symbol-margin*2 - 0.1, size-out / 2 + 0.2), (right-x + symbol-margin*2 + 0.1, size-out / 2 + 0.2), $s$)
  content((- symbol-margin*2 - 0.3, size-out / 2 + 0.2), (- symbol-margin*2 + 0.1, size-out / 2 + 0.2), $p$)
  
})
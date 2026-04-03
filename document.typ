#set text(font: "Open Sans", size: 11pt)
#set page(margin: 2cm)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: none)

// Title block
#align(center)[
  #block(width: 100%, fill: rgb("#1a1a2e"), inset: 1.5em, radius: 8pt)[
    #set text(fill: white)
    #text(size: 24pt, weight: "bold")[Public Shelter Internet]
    #v(0.3em)
    #text(size: 12pt)[Portable internet connectivity for underground bomb shelters in Israel]
  ]
]

#v(0.5em)

// Banner image
#align(center)[
  #image("images/graphics/banner.png", width: 85%)
]

#v(0.5em)

= The Problem

To be effective at stopping missiles, underground public shelters involve lots of concrete. Concrete does not love RF waves.

30% of Israelis do not have a protected space (_mamad_) in their homes. Israel relies primarily upon a smartphone app (Home Front Command) and wireless emergency alerts (WEA / cell broadcast) to send vital notifications to those sheltering in place.

Both of these notifications share a single point of failure: *internet connectivity*.

Many public shelters are dilapidated and besides lacking connectivity lack power outlets. People sheltering are often left to guess when an official all-clear has been issued by the Home Front Command. Unfortunately people tend to resort to guesstimates and leave shelter prematurely, risking shrapnel.

= How It Works

#align(center)[
  #image("images/graphics/image.png", width: 80%)
  #text(size: 9pt, fill: gray)[_Network topology: phone at shelter entrance, ethernet run to router inside_]
]

#v(0.5em)

= The Solution

A backpack-portable kit that uses an Android phone's cellular connection, shared over a wired ethernet run into the shelter, and rebroadcast as Wi-Fi by a travel router.

== Parts List

#block(inset: (left: 1em))[
  - An old but not too old Android phone (with 5G)
  - A GL.iNet travel router (I use the GL-SFT1200 Opal)
  - A USB-C to ethernet adapter (with USB-C to USB-A converter)
  - A small power bank
  - A 20M ethernet cable
  - A zippered carry case
  - Superglue
  - USB switch (to turn the router on/off between uses)
  - Velcro ties / cable ties
]

== The Kit

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/photos/emergency-router-case-closed.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Carry case, labeled and closed_]]
  ],
  [
    #image("images/photos/kit-in-case-open.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Case open showing router and power bank_]]
  ],
  [
    #image("images/photos/kit-with-ethernet-cable.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Full kit with 20M ethernet cable_]]
  ],
  [
    #image("images/photos/kit-packed-in-backpack.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Everything fits in a backpack_]]
  ],
)

= Setup

== Phone Configuration

+ Connect the USB-C to ethernet adapter to the phone
+ Go to *Settings > Connections > Ethernet* and enable it
+ Set connection type to *DHCP*
+ Enable *Ethernet tethering* (Settings > Mobile Hotspot and Tethering)
+ *Disable Wi-Fi hotspot* — keep all bandwidth for the wired run

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/photos/ethernet-tethering-settings.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Enable ethernet tethering_]]
  ],
  [
    #image("images/photos/ethernet-config-dhcp.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Ethernet with DHCP on eth0_]]
  ],
)

== Physical Setup

+ Position the Android phone near the top of the shelter stairs (best cellular signal)
+ Connect phone to ethernet adapter, run cable down the stairwell
+ Connect ethernet cable to the WAN port on the GL.iNet router
+ The router broadcasts a Wi-Fi network inside the shelter

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/photos/full-setup-wide-angle.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Complete setup: phone to adapter to router_]]
  ],
  [
    #image("images/photos/case-with-phone-and-adapter.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Case connected to phone via adapter_]]
  ],
)

== Simpler Setup (Shelter With Ethernet But No Wi-Fi)

Some newer or better-maintained shelters have an ethernet access point on the wall but still no Wi-Fi. In this case the setup is much simpler: just connect the GL.iNet router directly to the wall jack and it will broadcast Wi-Fi from the existing wired connection — no phone or tethering needed.

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/photos/image copy 2.png", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Router connected to shelter's ethernet jack_]]
  ],
  [
    #image("images/photos/image copy 3.png", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_GL.iNet router powered by power bank_]]
  ],
)

== Laying the Ethernet Cable (No Existing Infrastructure)

You're not going to be running ethernet cable in an emergency. Nor do you want to create a trip hazard. Set this up *between alerts*.

- Secure the ethernet cable along the stairs/railings ensuring it doesn't impede the stairwell
- The carry case has an ethernet male-to-female coupler on the outside — connect the router when required
- If using an old Android you've accepted might be stolen: wipe it beforehand, set it up without apps/data, and leave it somewhere inconspicuous

= During an Alert

#block(fill: rgb("#fff3cd"), inset: 1em, radius: 6pt, width: 100%)[
  #set text(size: 11pt)
  + Grab backpack with internet kit
  + Plug the ethernet cable into the case coupler
  + Turn on the power bank (keep it charged between uses, turn it off after)
  + The router broadcasts Wi-Fi inside the shelter
  + When positioned right outside the shelter door, the signal usually propagates inside
]

= Extending Coverage

You can extend this significantly by adding additional GL.iNet travel routers in *repeater mode*:

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/graphics/image copy.png", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Mesh setup with relay node_]]
  ],
  [
    #image("images/graphics/image copy 2.png", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_Detailed mesh topology_]]
  ],
)

- Each repeater needs power (a power bank works; more advanced models need a PD-to-DC cable)
- Disable auto network switching on all nodes
- Hide the SSID on the first node (the phone) to prevent accidental connections
- Disable 5 GHz to save power
- Use a consistent, manually set Wi-Fi channel for reliable propagation between nodes

= Build Tips

- Use superglue to attach the power bank and router together — you learn quickly when running between shelters that you want everything secure with no moving parts coming loose
- A USB switch lets you turn the router on/off without disconnecting anything
- Velcro ties keep cables managed inside the case

#v(1em)
#align(center)[
  #image("images/photos/image copy.png", width: 60%)
  #text(size: 9pt, fill: gray)[_Emergency router case, ready to go_]
]

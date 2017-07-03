## [Effects](#effects)

Add post processing effects to your scene.

  Hologram.effects.film = yes
  Hologram.effects.bloom =
    strength: 4
    radius: 2
    threshold: 0.6

-------------------------------------------------------

#### [effects.fxaa](#effects-fxaa) *<boolean/object>*

Add a fxaa (Fast Approximate Anti-Aliasing) effect to your scene.

  Hologram.scene.fxaa = yes

-------------------------------------------------------

#### [effects.bloom](#effects-bloom) *<boolean/object>*

Add a bloom effect to your scene.

  Hologram.effects.bloom =
    strength: 8
    radius: 1.2
    threshold: 0.2

-------------------------------------------------------

#### [effects.film](#effects-film) *<boolean/object>*

Add a bloom effect to your scene.

  Hologram.effects.film =
    sIntensity: 0.03
    nIntensity: 0.2

-------------------------------------------------------

#### [effects.outline](#effects-outline) *<boolean/object>*

Add a outline effect to your scene.

  Hologram.effects.outline =
    width: '1.33 1.33'
    range: '0 10'
    strength: 3
    smooth: yes

-------------------------------------------------------

#### [effects.glitch](#effects-glitch) *<boolean/object>*

Add a glitch effect to your scene.

  Hologram.effects.glitch = yes

  # With more advanced settings
  Hologram.effects.glitch =
    amount: 0.2
    angle: 0.02
    seed: 0.04

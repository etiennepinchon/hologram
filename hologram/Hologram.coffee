Hologram = {}

# Root level modules
Hologram.Utils = (require "./Utils")
Hologram.print = (require "./Print")

# Components
# ...

Hologram.Utils.extend(window, Hologram) if window

window.Hologram = Hologram if window

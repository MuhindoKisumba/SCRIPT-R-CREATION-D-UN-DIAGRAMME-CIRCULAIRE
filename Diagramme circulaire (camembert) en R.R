
# ============================================================
# SCRIPT R : CREATION D'UN DIAGRAMME CIRCULAIRE
# ============================================================

# 1. Definir les categories
services <- c("Medecine", "Pediatrie", "Chirurgie", "Maternite", "Laboratoire")

# 2. Definir les effectifs de chaque categorie
effectifs <- c(120, 85, 60, 95, 70)

# 3. Calculer les pourcentages de chaque categorie
pourcentages <- round(effectifs / sum(effectifs) * 100, 1)

# 4. Creer les etiquettes avec les noms et les pourcentages
etiquettes <- paste(services, pourcentages, "%")

# 5. Creer le diagramme circulaire
pie(
  x = effectifs,                 # Valeurs a representer
  labels = etiquettes,           # Noms et pourcentages
  main = "Repartition des patients par service",
  col = rainbow(length(services)), # Couleurs des secteurs
  clockwise = TRUE,              # Sens des aiguilles d'une montre
  init.angle = 90,               # Angle de depart
  border = "white",              # Bordure blanche des secteurs
  cex = 0.8                      # Taille des etiquettes
)

# 6. Ajouter une legende
legend(
  "topright",                    # Position de la legende
  legend = services,             # Noms des categories
  fill = rainbow(length(services)), # Couleurs correspondantes
  cex = 0.7,                      # Taille du texte
  bty = "n"                       # Supprimer le cadre
)

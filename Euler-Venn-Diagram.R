# ============================================================================
# Euler-Venn diagram of Mariana Trench factor sets (R, venn).
# This produced Figure 21 (right) in the peer-reviewed article:
#   Lemenkova, P. (2019). Statistical Analysis of the Mariana Trench
#   Geomorphology Using R Programming Language.
#   Geodesy and Cartography, 45(2), 57-84.
#   DOI: https://doi.org/10.3846/gac.2019.3785
# Author: Polina Lemenkova | ORCID: 0000-0002-5759-1089
# ============================================================================

# Роза-диаграмма Эйлера Венна (логическая похожесть объектов, что у них общего в свойствах, есть ли пересекающиеся моменты) 
# пакетом venn.

# ЧАСТЬ-1. готовим датафрейм. 
	# шаг-1. вчитываем таблицу с данными. делаем из нее исходный датафрейм. чистим датафрейм от NA
MDepths <- read.csv("Morphology.csv", header=TRUE, sep = ",")
MDF <- na.omit(MDepths) 
row.has.na <- apply(MDF, 1, function(x){any(is.na(x))}) 
sum(row.has.na) 
head(MDF)

library(venn) 

# ЧАСТЬ-2. рисуем розу-диаграмму Эйлера-Венна 3 случая. 
# в каждом случае 2 шага: 1) создаем лист значений из датафрема. 2) чертим розу-диаграмму с помощью команды venn :  

	# вариант-1. диаграмма Эйлера-Венна по классам морфологии и тект. плитам (7 лепестков)
	x <- list(Philippine = MDF$plate_phill, Pacific = MDF$plate_pacif, Mariana = MDF$plate_maria, Caroline = MDF$plate_carol, Aspect = MDF$aspect_class, Morphology = MDF$morph_class, Slope = MDF$slope_class)
	venn(x, ilabels = TRUE, col = "navyblue", zcolor = "style")

	# вариант-2. диаграмма Эйлера-Венна по тект. плитам (4 лепестка)
	xp <- list(Philippine = MDF$plate_phill, Pacific = MDF$plate_pacif, Mariana = MDF$plate_maria, Caroline = MDF$plate_carol)
	venn(xp, ilabels = TRUE, ellipse = TRUE, col = "navyblue", zcolor = "style")

	# вариант-3. диаграмма Эйлера-Венна по разным геоморфологическим параметрам (6 лепестков)
	x3 <- list(Depth = MDF$Min, Volcanoles = MDF$igneous_volc, Sediments = MDF$sedim_thick, Angle = MDF$slope_angle, Hillshade = MDF$hillshade, Aspect = MDF$aspect_degree)
	venn(x3, ilabels = TRUE, col = "navyblue", zcolor = "style")


from qgis.utils import iface
# inserire qui il nome del layer geometrico
vl = QgsMapLayerRegistry.instance().mapLayersByName('nomeLayerGeom')[0]
iface.setActiveLayer(vl)
cLayer = iface.mapCanvas().currentLayer()
# qui sotto i nomi dei due campi da correlare
expr = QgsExpression("\"refGeom\" LIKE [% "refAttr" %]")
it = cLayer.getFeatures( QgsFeatureRequest( expr ) )
ids = [i.id() for i in it]
cLayer.setSelectedFeatures( ids )
# zoom alla selezione
box = cLayer.boundingBoxOfSelected()
iface.mapCanvas().setExtent(box)
iface.mapCanvas().refresh()


-- caso dei pill, da usare su layer pti_quadri

from qgis.utils import iface
vl = QgsMapLayerRegistry.instance().mapLayersByName('pti_pill')[0]
iface.setActiveLayer(vl)
cLayer = iface.mapCanvas().currentLayer()
expr = QgsExpression("\"rif_quadro\" like '[%nome_quadro%]'")
# oppure riga 23 expr = QgsExpression("rif_quadro LIKE '[% "nome_quadro" %]%'")
# oppure, per evitare carattere jolly expr = QgsExpression("rif_quadro IN ('[% "nome_quadro" %]')")
it = cLayer.getFeatures( QgsFeatureRequest( expr ) )
ids = [i.id() for i in it]
cLayer.setSelectedFeatures( ids )
box = cLayer.boundingBoxOfSelected()
iface.mapCanvas().setExtent(box)
iface.mapCanvas().refresh()

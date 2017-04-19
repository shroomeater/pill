from qgis.utils import iface
# inserire qui il nome del layer geometrico
vl = QgsMapLayerRegistry.instance().mapLayersByName('nomeLayerGeom')[0]
iface.setActiveLayer(vl)
cLayer = iface.mapCanvas().currentLayer()
# qui sotto i nomi dei due campi da correlare
expr = QgsExpression("\"refGeom\"=[% "refAttr" %]")
it = cLayer.getFeatures( QgsFeatureRequest( expr ) )
ids = [i.id() for i in it]
cLayer.setSelectedFeatures( ids )
# zoom alla selezione
box = cLayer.boundingBoxOfSelected()
iface.mapCanvas().setExtent(box)
iface.mapCanvas().refresh()

-- articolo:
-- https://medium.com/tantotanto/qgis-selezionare-geometrie-da-una-tabella-di-attributi-correlata-bea37747a7e2

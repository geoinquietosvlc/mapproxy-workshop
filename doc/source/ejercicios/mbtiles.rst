Servir un fichero *MBTiles* creado con TileMill
=====================================================

El objetivo de este ejercicio es montar una capa en MapProxy que sirva una
*cache* generada en TileMill. Es decir, realizamos todo el proceso de diseño
cartográfico con esta herramienta y después ofrecemos a nuestros usuarios dicho
trabajo con cualquiera de los servicios de MapProxy, aunque como es normal, se
tendrán los mejores resultados en clientes que consuman directamente la *cache*
sin tener que *resamplear* las teselas al tratarse de un dato vectorial.

El fichero *MBTiles* proporcionado consiste en una capa de la zona de trabajo
del taller en la que se muestran carreteras y edificios en tonos de gris y una
serie de puntos con la ubicación de zonas de aparcamiento. El archivo se puede
descargar de `aquí <https://docs.google.com/file/d/0B28vBRfHgG9pZ3l3MXlQc09jSjQ/edit?usp=sharing>`_.

El grid que define el fichero *MBTiles* es igual que el usado por Google Maps
solo que se han exportado las teselas hasta el nivel 16, es decir::

  grids:
    parkings:
      base: GLOBAL_MERCATOR
      num_levels: 17

Este ejercicio por tanto consiste en definir una nueva capa en MapProxy que
apunte a una *cache* que no tiene *sources* (se debe indicar como una lista
vacía porque el elemento es obligatorio). La cache ha configurar es de tipo
*mbtiles* y hay que indicar la ubicación del fichero que habrá que dejar en la
carpeta ``cache_data``.

.. figure:: /_static/exercise-mbtiles.png
	 :width: 50%
	 :alt: TMS de la capa de *parkings* diseñada en TileMill 
	 :align: center

	 TMS de la capa de *parkings* diseñada en TileMill 


En la siguiente figura se muestran las dos capas accedidas por separado desde un
cliente GIS de escritorio (QGis) en el que se ha establecido una transparencia
del 50% a la capa de ortofoto de tal forma que las zonas de aparcamiento se
visualizan de forma más efectiva.

.. figure:: /_static/exercise-mbtiles2.png
	 :width: 50%
	 :alt:  Acceso a las dos capas desde QGis
	 :align: center

	 Acceso a las dos capas mediante WMS

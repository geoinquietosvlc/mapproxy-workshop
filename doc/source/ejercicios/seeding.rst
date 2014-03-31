============================================
Ejercicio: *seeding* y borrado de *caches*
============================================

Te sugerimos que para resolver los ejercicios inicies un proyecto
nuevo llamado *ej02*::

    $ cd /home/user/mapproxy-workshop/confs/
    $ mapproxy-util create -t base-config ej02
    $ cd ej02
    $ leafpad seed.yaml &

y borres el contenido del archivo usando la combinación de
teclas :kbd:`Control+A` y después la tecla :kbd:`Supr`.

.. attention:: Como hemos creado un proyecto nuevo el archivo
   :file:`mapproxy.yaml` será el generado por defecto. Pero para este
   ejercicio deberás emplear un
   archivo con la configuración trabajada en el :ref:`ejer01`.

.. note:: Puedes copiar el archivo :file:`mapproxy.yaml` del :ref:`ejer01` o
   descargarlo de `aquí <https://raw.github.com/geoinquietosvlc/mapproxy-workshop/feature/sig_libre_viii/exercises/wms/mapproxy.yaml>`_.

Sembrar una *cache*
=====================

Llamamos **sembrar** una *cache* a generar toda la *cache* de antemano. Hay un par de
casos de uso típicos para los que es adecuado sembrar:

* Usar cartografía en portátiles sin una conexión fiable a Internet (en campo,
  en el extranjero, o en una demo)
* Acelerar el acceso a las capas cacheadas, descargando todo (por ejemplo) la
  noche anterior

En este ejercicio vamos a sembrar los datos de OSM en el área de Girona, pero
sólo para unos cuantos niveles de *zoom*. Una vez hecho el sembrado, veremos cómo
MapProxy sirve las imágenes sin necesidad de pedirlas al origen.


Sembrado sencillo
=====================

La tarea más sencilla es lanzar **una** tarea de sembrado un cache en
**una** cobertura (área) para **algunos** niveles de *zoom*. La *cache* (con sus
correspondientes *capas* y *orígenes*) deberían estar ya definidos en vuestros
:file:`mapproxy.yaml`. Las tareas de sembrado y las coberturas se definen en un
fichero aparte, normalmente nombrado :file:`seed.yaml`.

Hay que recordar que la *cache* es siempre una pirámide de imágenes, y que su
extensión y niveles de *zoom* vienen referidos por el *grid* del fichero
:file:`mapproxy.yaml`. Por eso, cuando se siembra una *cache*, se hace
referencia a los niveles de *zoom* de esta pirámide.

Primera parte
-------------

Primero queremos sembrar la *cache* de la capa de OpenStreetMap, en la zona de
Girona. Para hacer esto, escribid un fichero :file:`seed.yaml` que contenga una tarea
de sembrado que haga referencia a la *cache* apropiada y a una cobertura con el
*bounding box* de Girona, para niveles de *zoom* del **1** al **7**.

Una vez escrito el fichero :file:`seed.yaml`, se puede hacer el sembrado ejecutando::

    $ mapproxy-seed -f mapproxy.yaml -s seed.yaml -i

Si el servicio estuviera en producción, cambiaríamos :command:`-i` por
:command:`-seed=ALL` para poder automatizarlo.

Segunda parte
---------------

A continuación puedes crear una tarea de *cache* de la capa de la ortofoto para el
grid UTM o el ``GLOBAL_MERCATOR``, para niveles de *zoom* del 1 al 7 y el mismo *coverage*.


Limpiando *caches*
=====================

Para asegurar que solo tenemos la *cache* de los datos que se usan en la oficina,
vamos a crear una tarea de limpieza que borre los datos a partir del nivel 8 de
la cache de la ortofoto del ICC en coordenadas UTM, pero solo aquellas teselas
que tengan más de **1 semana**, **2 días**, **3 horas** y **4 minutos**.

De esta forma mantenemos los niveles superiores pero nos deshacemos de aquellas
teselas que no se visitan desde hace un tiempo.


Comprobación de tareas del seed
==================================

Si ejecutamos el comando :command:`mapproxy-seed` pasando como parámetro la opción
:command:`--summary` ::

    $ mapproxy-seed -f mapproxy.yaml -s seed.yaml --summary

obtendremos el siguiente resumen de las tareas de sembrado y
limpieza de teselas.

::

    ========== Seeding tasks ==========
      valencia_icv:
        Seeding cache 'icv_cache' with grid 'utm_valencia' in EPSG:25830
        Limited to: -0.46090, 39.25569, -0.24824, 39.56432 (EPSG:4326)
        Levels: [1, 2, 3, 4, 5, 6, 7]
        Overwriting: no tiles
      valencia_osm:
        Seeding cache 'osm_cache' with grid 'GLOBAL_MERCATOR' in EPSG:900913
        Limited to: -0.45000, 39.26000, -0.26000, 39.56000 (EPSG:4326)
        Levels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        Overwriting: no tiles
    ========== Cleanup tasks ==========
      valencia_icv:
        Cleaning up cache 'icv_cache' with grid 'GLOBAL_MERCATOR' in EPSG:900913
        Limited to: -0.45000, 39.26000, -0.26000, 39.56000 (EPSG:4326)
        Levels: [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
        Remove: tiles older than 2014-03-22 17:55:40
      valencia_icv:
        Cleaning up cache 'icv_cache' with grid 'GLOBAL_GEODETIC' in EPSG:4326
        Limited to: -0.45000, 39.26000, -0.26000, 39.56000 (EPSG:4326)
        Levels: [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
        Remove: tiles older than 2014-03-22 17:55:40
      valencia_icv:
        Cleaning up cache 'icv_cache' with grid 'utm_valencia' in EPSG:25830
        Limited to: -0.46090, 39.25569, -0.24824, 39.56432 (EPSG:4326)
        Levels: [8, 9, 10, 11]
        Remove: tiles older than 2014-03-22 17:55:40


Por otra parte, si ejecutamos el servidor de pruebas (comando :command:`mapproxy-util`)
después de haber sembrado la *cache*, en su salida por consola se ven las
peticiones WMS que está sirviendo, pero **no** las peticiones al *source*
que debería estar haciendo (porque todas esas peticiones se han hecho
durante el proceso de sembrado).

Te recordamos que para lanzar un servidor debes usar la orden::

    $ mapproxy-util serve-develop mapproxy.yaml

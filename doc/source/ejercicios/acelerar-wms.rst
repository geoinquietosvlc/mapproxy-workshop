Ejercicio: acelerar el acceso a un WMS
----------------------------------------------

Primera parte: cachear un servicio de ortoimágenes
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Supongamos que trabajamos en una oficina en la que un cierto número de técnicos
acceden a diario a un servicio de ortoimágenes por WMS. Sería muy conveniente
que pudiéramos almacenar una *cache* de dicho servicio para que el acceso a esta
información fuera más rápida y eficiente, ahorrando además una considerable
cantidad de ancho de banda a nuestra organización.

Vamos a *cachear* la capa ``orto5m`` ofrecida por el Institut Cartogràfic Català
en su servicio de ortofotos y mapas *raster*
http://shagrat.icc.es/lizardtech/iserv/ows. En concreto vamos a trabajar sobre
la zona de la ciudad de Girona y alrededores con las siguientes coordenadas de
rectángulo máximo:

- Longitud mínima 2.67
- Latitud mínima: 41.88
- Longitud máxima: 2.97
- Latitud máxima: 42.07

El ejercicio consiste en crear una configuración de MapProxy que ofrezca una
capa que almacene *caches* en los sistemas ``EPSG:900913`` y ``EPSG:4326`` de
esta capa del servicio WMS del ICC para la zona delimitada. El servicio debe
ofrecerse además de en estos dos sistemas de referencia y también en el más
estándar ``EPSG:3857`` y también en UTM31N, es decir en ``EPSG:25831``.

.. tip:: Resulta conveniente definir en el origen los dos sistemas de
         coordenadas soportados por el servidor WMS ``EPSG:4326`` y 
         ``EPSG:2581``. 
         
.. attention:: Con esta configuración recomendada, ¿qué *cache* se rellenará 
               al pedir teselas en el sistema ``EPSG:900913``? ¿Sabrías decir 
               por qué?

Como nuestros técnicos usan a menido cartografía en coordenadas UTM, sería
interesante que crearas una *cache* expresamente para ese sistema de coordenadas
de forma que MapProxy no tenga que reproyectar las teselas todo el tiempo.

Segunda parte: cachear las teselas de OpenStreetMap
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

`OpenStreetMap <http://osm.org>`_ es la mayor base de datos de información
geográfica generada por la comunidad. Este proyecto proporciona teselas que
podemos utilizar en nuestros proyectos, siempre que sigamos su `licencia
<http://opendatacommons.org/licenses/odbl/>`_.

El ejercicio consiste en añadir a nuestro servicio para la zona de Girona una
nueva capa con las teselas de OSM. Para ello definiremos una nueva capa, un
nuevo servicio, una nueva *cache* y un nuevo *grid* de acuerdo a las
especificaciones de OSM. Podemos usar como base la configuración que ofrece el
proyecto en su `wiki <http://wiki.openstreetmap.org/wiki/Mappproxy_setup>`_.


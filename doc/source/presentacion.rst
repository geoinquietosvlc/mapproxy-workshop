Presentación
============================

Facilitadores:
-------------------------

* Pedro-Juan Ferrer `@vehrka <http://twitter.com/vehrka>`_ pferrer@osgeo.org

  * Project Manager en Omnium SI
  * Geofriki

* Iván Sanchez `@realivansanchez <http://twitter.com/realivansanchez>`_ ivan@sanchezortega.es

  * PHPDev en Omnium SI
  * Más geofriki aún si cabe

* Jorge Sanz `@xurxosanz <http://twitter.com/xurxosanz>`_ jsanz@osgeo.org

  * GISguy en Prodevelop
  * Geofriki


Qué es MapProxy
---------------------------

MapProxy es un servidor de teselas que lee datos de WMS, TMS, configuraciones de Mapserver o Mapnik de TileCache, Google Maps, Bing Maps, etc.

Podría decirse que MapProxy es un *acelerador* de mapas en Internet, aunque no solo ofrece servicios de *proxy*, también es un Servidor WMS, permite realizar *Sembrado (Seeding)* de capas, permite gestionar seguridad de acceso a capas, reproyectar capas, etc.

.. figure:: img/mapproxy.png
   :align: center
   :alt: Esquema básico de red

   Esquema de una red con MapProxy configurado

Un poco más sobre MapProxy
---------------------------

* Es un producto de `Omniscale <http://omniscale.com>`_ (`ImpOSM <http://imposm.org>`_)

* `Oliver Tonnhofer <http://twitter.com/oltonn>`_ es su desarrollador principal

* Está escrito en Python

* Es FOSS desde 2010

* Actualmente está en el proceso previo a la `incubación en OSGeo <http://osgeo.org/incubator>`_

Pero ¿para qué sirve?
---------------------------

Algunos casos de uso:

* Ofrecer acceso a servicios de mapas en zonas con acceso restringido a Internet

* Ofrecer a Internet ciertos servicios internos de una organización sin abrir
  todo el servidor de mapas corporativo

* Generar servicios de teselas (TMS/WMTS) a partir de un servidor WMS

* Acelerar el acceso a servicios de mapas *cacheando* la información

* Mezclar cartografía de diferentes servicios de mapas

* Descargar cartografía a equipos que se van a desplazar a zonas sin acceso a
  Internet (caso del equipo HOT de OSM)

* Servir cartografía diseñada con TileMill

* Ofrecer servicios en diferentes sistemas de coordenadas a partir de un
  servicio TMS que solo nos llega en el Mercator.

¿Cómo funciona?
---------------------------

A través de scripts de configuración escritos en `YAML <http://http://www.yaml.org>`_.

.. code-block:: yaml
    
    services:
      demo:
      kml:
      tms:
      wmts:
      wms:
        srs: ['EPSG:3857', 'EPSG:900913', 'EPSG:4258', 'EPSG:4326', 'EPSG:25831']
        image_formats: ['image/jpeg', 'image/png']
        md:
          # metadata used in capabilities documents
          title: Taller MapProxy
          abstract: Ejercicio de aceleración de WMS y OSM con MapProxy
          online_resource: http://localhost:8080/service
          contact:
            person: Pedro-Juan Ferrer, Iván Sánchez y Jorge Sanz
            position: Facilitadores
            organization: Geoinquietos Valencia
            email: pferrer@osgeo.org , jsanz@osgeo.org y ivan@sanchezortega.es
          access_constraints:
            Este servicio tiene únicamente objetivos educativos.
          fees: 'None'



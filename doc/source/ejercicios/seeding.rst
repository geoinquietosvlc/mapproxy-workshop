Ejercicio: *seeding* y borrado de *caches*
--------------------------------------------



Sembrar una caché
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


Sembrar una caché significa llenar toda la caché de antemano. Hay un par de casos de uso típicos para los que es adecuado sembrar las cachés:

* Usar cartografía en portátiles sin una conexión fiable a internet (en campo, en el extranjero, o en una demo)
* Acelerar el acceso a las capas cacheadas, descargando todo (por ejemplo) la noche anterior


En este ejercicio vamos a sembrar los datos de OSM en el área de Gerona, pero sólo para unos cuantos niveles de zoom. Una vez hecho el sembrado, veremos cómo MapProxy sirve las imágenes sin necesidad de pedirlas al origen.


Sembrado sencillo
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

La tarea más sencilla es lanzar *una* **tarea** de sembrado *un* **cache** en *una* **cobertura** (área) para algunos **niveles de zoom**. La *cache* (con sus correspondientes *capas* y *origenes*) deberían estar ya definidos en vuestros *mapproxy.yaml*. Las tareas de sembrado y las coberturas se definen en un fichero aparte, normalmente nombrado *seed.yaml*.

Hay que recordar que la caché es siempre una pirámide de imágenes, y que su extensión y niveles de zoom vienen referidos por el *grid* del *mapproxy.yaml*. Por eso, cuando se siembra una caché, se hace referencia a los niveles de zoom de esta pirámide.


Primero queremos sembrar la caché de la capa de OpenStreetMap, en la zona de Gerona. Para hacer esto, escribid un fichero *seed.yaml* que contenga una tarea de sembrado que haga referencia a la *cache* apropiada y a una cobertura con el bounding box de Gerona, para niveles de zoom del 1 al 14.




Limpiando cachés
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++























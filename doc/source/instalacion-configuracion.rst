Instalación y configuración de MapProxy
=================================================

Instalación
--------------------

Descarga de dependencias del sistema
+++++++++++++++++++++++++++++++++++++++++++++++++++

Instalar paquetes iniciales::

  sudo apt-get install git tree python-virtualenv

Instalar dependencias de MapProxy::

  sudo apt-get install sudo aptitude install python-imaging \ 
    python-yaml libproj0 libgeos-dev python-lxml libgdal-dev \
    python-shapely build-essential python-dev libjpeg-dev \
    zlib1g-dev libfreetype6-dev

Esto descargará unas 200MB en binarios, tardará un buen rato...
A partir de aquí todo se ejecuta como un usuario normal.


Instalación de MapProxy
+++++++++++++++++++++++++++++++++++++++++++++++++++

Primero vamos a descargar los materiales del taller. En el home del usuario ejecutar::

  git clone https://github.com/geoinquietosvlc/mapproxy-workshop.git
  wget -Omapproxy-workshop/mapproxy-workshop.pdf "http://bit.ly/mapproxy-workshop"

Con esto tendremos una nueva carpeta ``mapproxy-worksop`` con el pdf del taller así como
los ejercicios resueltos, etc.

Moverse a la carpeta creada y crear el entorno virtual con::

  virtualenv venv

Activar el entorno virtual con:: 

  source venv/bin/activate

Instalar la librería de tratamiento de imágenes PIL con::

  pip install https://bitbucket.org/olt/pil-2009-raclette/get/default.tar.gz

Y ya podemos instalar MapProxy::

  pip install MapProxy

Al finalizar podremos comprobar que MapProxy está instalado usando la instrucción
``mapproxy-util``::

  $ mapproxy-util --version
  MapProxy 1.5.0
  




Configuración
--------------------




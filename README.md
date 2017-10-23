Archivos preparatorios para proyectos
=====================================

Archivos preparados para su utilización en proyectos de desarrollo web en los
que se utilice [Yii2](http://www.yiiframework.com/),
[Heroku](https://www.heroku.com), [Code Climate](https://codeclimate.com/) y
[Atom](https://atom.io/).

Instalación
-----------

La mejor manera de usar este repositorio es a través del script `proyecto.sh`
del repositorio [ricpelo/conf](https://github.com/ricpelo/conf), el cual
lleva a cabo todos los pasos necesarios para crear un proyecto de trabajo
usando la [plantilla básica de Yii2](https://github.com/yiisoft/yii2-app-basic),
volcando encima el contenido de este repositorio y realizando las
transformaciones y personalizaciones oportunas.

De no ser así, la instalación puede consistir simplemente en copiar encima de
la plantilla básica todos los archivos en el directorio raíz del proyecto. El
archivo `README.md` (este que estás leyendo) no es necesario copiarlo, y
probablemente entrará en conflicto con el del propio proyecto. Si se copia
encima de este accidentalmente, siempre se puede volver a recuperar con el
comando `git checkout -- README.md`. Los demás se pueden copiar encima de los
actuales pero conviene comprobar las diferencias entre el contenido antiguo y
el nuevo.

Se recomienda descargar el repositorio en forma de archivo `.zip` y no clonarlo
con `git clone`. Para ello, basta con acceder a
https://github.com/ricpelo/pre/archive/master.zip, lo que descargará el
archivo comprimido que luego se podrá extraer dentro del directorio del
proyecto, sobreescribiendo los archivos necesarios.


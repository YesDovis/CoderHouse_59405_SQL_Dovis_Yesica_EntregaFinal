
<div aling="center">
    <img src="/img/Logo_blackbg.png">
</div>

# Entrega Proyecto SQL Coderhouse

## Entrega Final 

Alumna:Dovis Yesica Lorena

Docente: Maximiliano Torreblanca

Tutor: Cristian Ovejero

Comisión: 59405 SQL   

___


### Introducción
La Birra es Bella es una tienda especializada en la distribución de cervezas artesanales que busca expandirse en el mercado digital. A través de su nueva tienda en línea, la empresa pretende ofrecer una experiencia optimizada a sus clientes, facilitando la compra de productos y la gestión de pedidos. Esta expansión requiere una estructura sólida que permita administrar de manera eficiente tanto la información de los clientes como las operaciones comerciales de la tienda.

### Objetivo
El objetivo principal de este proyecto es diseñar y crear una base de datos relacional que permita gestionar y administrar la tienda en línea de "Cervecería La Birra es Bella". La base de datos será fundamental para organizar y controlar aspectos clave como el manejo de usuarios, productos, ventas y servicios, asegurando una operatividad eficiente en el entorno digital.

### Situación problemática
La creación de esta base de datos tiene como propósito gestionar y administrar usuarios junto con sus respectivos roles (administradores, vendedores y clientes). A través de esta estructura, se almacenará información crítica, como las direcciones de envío, métodos de pago (tarjetas), productos disponibles y pedidos realizados por los clientes. El diseño incluirá múltiples tablas que reflejarán las relaciones entre estos elementos, proporcionando una base sólida para el correcto funcionamiento de la tienda.

Adicionalmente, se implementará un sistema de auditoría que registrará un historial detallado de todas las operaciones, incluyendo inserciones, actualizaciones y eliminaciones en las tablas principales, garantizando la trazabilidad y el control de cada cambio efectuado en el sistema. Esto permitirá mantener un registro preciso de todas las transacciones y modificaciones dentro de la plataforma, facilitando su administración y mejorando la seguridad de los datos.


### Diagrama de Entidad Relación

___

<div aling="center">
    <img src="/img/DiagramaDER.jpg">
</div>

___

Para implementar las relaciones descritas, se necesitarán varias tablas intermedias y claves foráneas para establecer las conexiones entre las entidades.  A continuación, detallo cada componente y cómo se interrelacionan. 

___

### Descripción de base de datos

TABLAS

`USUARIOS`  
+ Esta tabla almacena información básica sobre los usuarios.

`ROLES`  
+ Define los roles disponibles en el sistema, como "cliente", "administrador", etc. 

`USUARIO_ROLES`  
+ Esta tabla establece la relación entre usuarios y roles, indicando qué roles tiene asignados cada usuario.

`DIRECCIONES`  
+ Esta tabla almacena información sobre las direcciones de los usuarios.

`USUARIOS_DIRECCIONES`  
+ indicando las direcciones asociadas a cada usuario.

`TARJETAS`  
+ Guarda la información de las tarjetas de crédito de los usuarios.

`USUARIOS_TARJETAS`  
+ indica las tarjetas asociadas a cada usuario.

`PRODUCTOS`  
+ Representa los productos que se venden en la tienda.

`PEDIDOS`  
+ Almacena la información de los pedidos realizados.

`PEDIDOS_PRODUCTOS`  
+ Detalla los productos incluidos en cada pedido

___

## Definición de Entidades / Atributos / Tipo Dato / PK / FK / IX 

<div aling="center">
    <img src="/img/TABLA1.jpg">
</div>
<div aling="center">
    <img src="/img/TABLA2.jpg">
</div>


## Representación del Diagrama ER en Notación Chen:

<div aling="center">
    <img src="/img/DiagramaChen_BD_LBEB.jpg">
</div>

// se utilizo para el esquema https://online.visual-paradigm.com/ es de pago no permite descarga se realiza captura de pantalla, se procede a explicar las Relaciones entre Entidades que no me permitio la web//

## Explicacion 

`Usuarios tiene Usuarios_Roles`

Un usuario puede tener múltiples roles asignados a través de la entidad "Usuarios_Roles". Esta relación es de tipo **uno a muchos** (1), donde un usuario puede tener varios roles, pero un rol específico solo puede estar vinculado a un usuario dentro de esta tabla intermedia.

`Roles pertenece a Usuarios_Roles`

Un rol puede estar asociado a múltiples usuarios a través de la entidad "Usuarios_Roles". Esta relación también es de tipo **uno a muchos** (1), donde un rol puede ser asignado a varios usuarios diferentes.

`Usuarios tiene Usuarios_Direcciones`

Un usuario puede tener varias direcciones registradas mediante la entidad "Usuarios_Direcciones". 
La relación es de tipo **uno a muchos** (1), lo que significa que un usuario puede tener varias direcciones asociadas.

`Direcciones pertenece a Usuarios_Direcciones`

Una dirección específica puede estar vinculada a múltiples usuarios, pero en este contexto, una dirección está asociada directamente a un usuario mediante la entidad "Usuarios_Direcciones". Esta relación es de tipo **uno a muchos** (1).


`Usuarios tiene Usuarios_Tarjetas`

Un usuario puede tener varias tarjetas registradas a través de la entidad "Usuarios_Tarjetas". Esta es una relación de tipo **uno a muchos** (1), donde un usuario puede tener varias tarjetas asociadas.

`Tarjetas pertenece a Usuarios_Tarjetas`

Una tarjeta puede estar vinculada a múltiples usuarios, pero en este contexto, una tarjeta específica está asociada a un único usuario mediante la entidad "Usuarios_Tarjetas". Esta relación también es de tipo **uno a muchos** (1).

`Usuarios realiza Pedidos`

Un usuario puede realizar múltiples pedidos. Esta relación es de tipo **uno a muchos** (1), donde un usuario puede hacer varios pedidos.

`Direcciones es para Pedidos`

Un pedido está asociado a una única dirección de entrega. Esta relación es de tipo **uno a uno (1:1)**, donde un pedido específico se envía a una única dirección.

`Tarjetas se paga con Pedidos`

Un pedido se paga con una única tarjeta. Esta relación es de tipo **uno a uno (1:1)**, donde cada pedido se asocia a una tarjeta específica para el pago.

`Pedidos incluye Pedidos_Productos`

Un pedido puede incluir múltiples productos, a través de la entidad "Pedidos_Productos". Esta relación es de tipo **uno a muchos** (1), donde un pedido puede incluir varios productos.

`Productos es parte de Pedidos_Productos`

Un producto puede ser parte de múltiples pedidos a través de la entidad "Pedidos_Productos". Esta relación también es de tipo **uno a muchos** (1
), donde un producto puede ser incluido en diferentes pedidos.

## INSERT

Debido a la falta de datos adecuados que pudieran generarse utilizando herramientas como Mockaroo, los registros de la base de datos fueron insertados manualmente. Esta decisión se tomó porque los datos generados automáticamente no cumplían con los requisitos específicos de mi estructura de base de datos, como la coherencia en las relaciones entre las tablas y las particularidades de los tipos de datos utilizados. Por lo tanto, se realizaron inserciones directas para garantizar la integridad referencial y la correcta vinculación entre las diferentes entidades de la base de datos.

Se genera Carpeta CSV de registros insertados.

# Vistas

## Se diseñaron un total de 5 vistas:

1. Nombre de la vista: "Vista_Usuarios_Administradores"

` Descripción`  
+ Esta vista obtiene la información de los usuarios y sus roles, filtrando solo aquellos que tienen asignado el rol de administrador.

` Objetivo / Datos ` 

+ Crear la vista llamada Vista_Usuarios_Administradores.
+ Especifica las columnas que queremos obtener en el resultado de la vista. En este caso, se selecciona el id_usuario, nombre, apellidos, y email de la tabla Usuarios.Como buena practica se utilizo como alias (u) para identificar  de qué tabla proviene cada campo.
+ Se realiza una unión (JOIN) entre la tabla Usuarios y la tabla Usuarios_Roles mediante la coincidencia del campo id_usuario en ambas tablas. Esto significa que estamos relacionando cada usuario con los roles que tenga asignados.
+ JOIN Roles r ON ur.id_rol = r.id_rol:
Se realiza una segunda unión (JOIN), esta vez entre la tabla Usuarios_Roles y la tabla Roles, mediante el campo id_rol. Esto nos permite obtener el nombre del rol asignado a cada usuario.
+ WHERE r.nombre = 'rol_admin':
El WHERE filtra los resultados para obtener únicamente aquellos registros donde el campo nombre de la tabla Roles sea igual a 'rol_admin', es decir, usuarios con el rol de administrador.


` Consulta sobre un Rol de usuario específico ` 

<div aling="center">
    <img src="/img/Vista_Usuarios_Administradores.jpg">
</div>

___
 

2. Nombre de la vista: "Vista_Usuarios_Nombre_J"

` Descripción`  
+ Esta vista muestra todos los usuarios cuyo nombre comienza con la letra "J".

` Objetivo / Datos ` 

+ crear una vista llamada Vista_Usuarios_Nombre_J que muestra los usuarios de la tabla Usuarios cuyos nombres comienzan con la letra "J". La vista incluye las columnas id_usuario, nombre, apellidos y email.La misma modificando La cláusula LIKE  se puede utilizar para buscar cualquiel nombre segun necesidad > 'J%'  'Y%'  'D%' etc.

` Consulta sobre usuario cuyo nombre comienza con la letra "J" ` 

<div aling="center">
    <img src="/img/Vista_Usuarios_Nombre_J.jpg">
</div>

___

 
3. Nombre de la vista: "Vista_Usuarios_Con_Compra_IPA"

` Descripción`  
+ vista llamada Vista_Usuarios_Con_Compra_IPA que muestra información sobre los usuarios que han realizado compras de productos cuyo nombre contiene la palabra "IPA". La vista incluye el identificador, nombre, apellidos y email de los usuarios, así como el nombre y la descripción de los productos comprados.

` Objetivo / Datos ` 

+ El objetivo de la vista Vista_Usuarios_Con_Compra_IPA es proporcionar una manera rápida y conveniente de consultar qué usuarios han comprado productos relacionados con "IPA". Esto es útil para analizar las preferencias de los usuarios y generar informes sobre la popularidad de productos específicos dentro de una categoría de interés, en este caso, las cervezas IPA.

Datos en la Vista > id_usuario usuario_nombre usuario_apellidos  usuario_email producto_descripcion.

` Consulta sobre usuario cuya compra contenga la palabra ipa y datos del producto ` 

<div aling="center">
    <img src="/img/Vista_Usuarios_Con_Compra_IPA.jpg">
</div>
<div aling="center">
    <img src="/img/Vista_Usuarios_Con_Compra_IPA2.jpg">
</div>

___


4. Nombre de la vista: "Vista_Suma_Productos_Vendidos"

` Descripción`  

+ La vista Vista_Suma_Productos_Vendidos proporciona un resumen de la cantidad total de unidades vendidas para cada producto en la base de datos. Muestra el nombre, la descripción y el total de unidades vendidas de cada producto.

` Objetivo / Datos ` 

+ El objetivo de esta vista es facilitar el análisis de las ventas de productos al consolidar la información sobre las unidades vendidas por producto, lo que ayuda a evaluar el rendimiento de cada producto en términos de ventas.


`Resumen de la cantidad total de unidades vendidas  ` 

<div aling="center">
    <img src="/img/Vista_Suma_Productos_Vendidos.jpg">
</div>

___


5. Nombre de la vista: "Vista_Detalle_Pedidos"

` Descripción`  

+ La vista Vista_Detalle_Pedidos proporciona una visión detallada de cada pedido, incluyendo información del usuario, el rol del usuario, dirección de envío y los productos incluidos en el pedido, junto con el total de unidades vendidas y el costo total por producto.

` Objetivo / Datos ` 
 
+ El objetivo de esta vista es ofrecer un análisis integral de los pedidos, facilitando la revisión del comportamiento del cliente y las características del pedido, incluyendo el rol del usuario para posibles análisis de ventas basados en el tipo de usuario.
+ La vista Vista_Detalle_Pedidos utiliza los siguientes datos: el ID del pedido, la fecha del pedido, el nombre del usuario, los apellidos del usuario, el email del usuario, el rol del usuario, la localidad de la dirección, la calle de la dirección, el número de la dirección, el piso de la dirección, la letra de la dirección, el nombre del producto, la descripción del producto, las unidades vendidas del producto, el precio unitario del producto.


` Esta vista es ofrecer un análisis integral de los pedidos ` 

<div aling="center">
    <img src="/img/Vista_Detalle_Pedidos.jpg">
</div>

___

## FUNCIONES:

Se elaboraron 2 funciones para la base de Cerveceria_la_birra_es_bella que retornan información.

1. Nombre de la Función: "contar_usuarios_por_letra_inicial"

` Descripción` 

+ La función almacenada en la base de datos diseñada para contar el número de usuarios cuyo nombre comienza con una letra específica. La función realiza una búsqueda en la columna nombre de la tabla Usuarios, verificando únicamente la primera letra de cada nombre y comparándola con la letra proporcionada como parámetro.

` Objetivo` 

+ El objetivo principal de la función es facilitar la consulta y análisis de la base de datos al contar cuántos usuarios tienen un nombre que empieza con una Esta funcionalidad es útil para búsquedas basadas en patrones específicos de nombres.

` Tipo de dato` 

+ Parámetro de entrada: La función recibe un parámetro de tipo CHAR(1), que representa la letra inicial a buscar en los nombres de los usuarios.
+ Valor de retorno: Devuelve un valor de tipo INT, que indica el número total de usuarios cuyo nombre comienza con la letra especificada.


<div aling="center">
    <img src="/img/CREATE FUNCTION contar_usuarios_por_letra_inicial.jpg">
</div>

*EJECUTABLE:

<div aling="center">
    <img src="/img/F contar_usuarios_por_letra_inicial.jpg">
</div>
___

2. Nombre de la Función: "localidad_con_mas_pedidos"

` Descripción` 

+ La función busca la localidad que tiene más pedidos en la base de datos.

` Objetivo` 

+ El objetivo es identificar la localidad con la mayor cantidad de pedidos para realizar análisis de demanda y optimización logística.

` Tipo de dato` 

+ Valor de retorno: La función devuelve una cadena (VARCHAR(20)) que representa la localidad con más pedidos.

<div aling="center">
    <img src="/img/CREATE FUNCTION localidad_con_mas_pedidos.jpg">

</div>

___


## Procedimientos Almacenados

1. Procedimientos Almacenado: "InsertarUsuarioSimple"

+ Descripción:
El procedimiento almacenado InsertarUsuarioSimple permite insertar un nuevo usuario en la base de datos cerveceria_la_birra_es_bella y asignarle un rol. También devuelve el id_usuario del usuario recién insertado para su uso posterior.

+ Objetivo:
Insertar un nuevo registro en la tabla Usuarios.
Asociar el nuevo usuario con un rol en la tabla Usuarios_Roles.
Devolver el id_usuario del usuario recién creado a través de un parámetro de salida.

+ Datos:

Parámetros de Entrada:

nombreUsuario (VARCHAR(50)) - apellidosUsuario (VARCHAR(100))
fechaNacimiento (DATE) - emailUsuario (VARCHAR(100)) -
passwordUsuario (VARCHAR(255))- idRol (INT)

Parámetros de Salida:

idUsuario (INT): ID del usuario recién insertado.

<div aling="center">
    <img src="/img/Call_InsertarUsuarioSimple.jpg">
    <img src="/img/In&outCall_InsertarUsuarioSimple.jpg">
</div>



2. Procedimientos Almacenado: "ObtenerDetallesProducto"

+ Descripción:

Este procedimiento toma un id_producto como entrada y devuelve los detalles del producto asociado en la tabla Productos.

+ Objetivo:

Este procedimiento es permitir la consulta de detalles específicos de un producto a partir de su identificador. Esto puede ser útil para obtener información detallada sobre productos específicos en un sistema de gestión de inventario.

+ Datos:

Parámetros de Entrada:

id_producto (INT).

Parámetros de Salida:/*PRODUCTO*/

nombre:  (VARCHAR).
descripcion: (TEXT).
precio: (DECIMAL).
stock:  (INT).

<div aling="center">
    <img src="/img/tCall_ ObtenerDetallesProductoe.jpg">
</div>

___


## TRIGGERS

### Se Creo una Tabla para Almacenar/Registrar Múltiples Triggers.

+ Descripción de la Tabla acciones
La tabla acciones fue diseñada para almacenar los eventos generados por diversos triggers. Cada vez que un trigger se dispare (ya sea por la inserción de un nuevo registro, la actualización de uno existente o la eliminación de datos), se generará un registro en esta tabla.

+ Objetivo

Ventajas de Utilizar una Tabla Única para Múltiples Triggers
Centralización de Registros: Al guardar los registros de múltiples triggers en una misma tabla, puedes consultar fácilmente un historial centralizado de las acciones más importantes que ocurren en tu base de datos.

Escalabilidad:No seria necesario crear nuevas tablas de logs; todos los registros continuarán almacenándose en la tabla acciones.

Facilidad de Monitoreo y Auditoría: Con todos los registros almacenados en un solo lugar, es mucho más fácil revisar qué cambios se realizaron en la base de datos, cuándo y por quién.

Flexibilidad en los Triggers: Cada trigger puede tener su propia lógica específica, pero los resultados siempre se almacenarán de manera uniforme en la tabla acciones, facilitando la interpretación de los registros.

+ Ventajas de mantener la tabla de acciones sin relaciones:
Independencia: Para poder agregar y eliminar filas sin que esto afecte las demás tablas.
Simplicidad: No se necesita mantener la integridad referencial entre la tabla acciones y otras tablas, lo que hace que sea más fácil de mantener.
Registro histórico: Si eliminas un registro de las tablas originales, aún mantendrás un registro de la acción en la tabla acciones sin necesidad de preocuparte por eliminar o actualizar registros relacionados.

+ Descripción estructuran de la tabla:

<div aling="center">
    <img src="/img/TABLA3.jpg">
</div>

+ Invocacion:

SELECT * FROM cerveceria_la_birra_es_bella.acciones;

###  1. Trigger: "log_tabla_productos"

+ Descripción:
El trigger log_tabla_productos se activa automáticamente después de la inserción de un nuevo registro en la tabla productos. Su función principal es registrar la creación de nuevos productos en la tabla acciones, proporcionando información sobre el nombre del producto y su ID.

+ Objetivos:
El objetivo del trigger es crear un registro en la tabla acciones cada vez que se inserte un nuevo producto en la tabla productos. Esto permite llevar un control detallado de los productos añadidos a la base de datos y mejorar la trazabilidad de las acciones.

+ Evento Disparador:
Este trigger se dispara con el evento AFTER INSERT en la tabla productos. Es decir, cuando se inserta un nuevo producto, el trigger se ejecuta inmediatamente después de que el registro se haya insertado con éxito.

+ Tabla Asociada:
productos: Es la tabla sobre la que se realiza la acción de inserción. Cada vez que se inserta un nuevo producto, se ejecuta el trigger.

+ Tabla Afectada:
acciones: Es la tabla en la que se guarda el registro de la acción. El trigger inserta un nuevo registro en esta tabla con la descripción de la acción, el tipo de acción (creación de producto) y el nombre de la tabla afectada (productos).
<div aling="center">
    <img src="/img/TRIGGER log_tabla_productos.jpg">
</div>

+ Ejemplo de inserción de datos
<div aling="center">
    <img src="/img/INSERT log_tabla_productos.jpg">
</div>

___

###  2. Trigger: "log_tabla_usuarios"

+ Descripción:
El trigger log_tabla_usuarios se activa automáticamente después de que se inserte un nuevo registro en la tabla usuarios. Su función es registrar la creación de nuevos usuarios en la tabla acciones, proporcionando detalles como el nombre y el ID del usuario.

+ Objetivos:
El objetivo principal es crear un registro en la tabla acciones cada vez que se inserte un nuevo usuario, permitiendo un seguimiento y auditoría de las acciones relacionadas con los usuarios en el sistema.

+ Evento Disparador:
El trigger se dispara con el evento AFTER INSERT en la tabla usuarios, es decir, después de que se inserta un nuevo usuario en la base de datos.

+ Tabla Asociada: usuarios.
+ Tabla Afectada: acciones.

___

###  3. Trigger: "log_edicion_usuario"

+ Descripción:
El trigger log_edicion_usuario se activa automáticamente después de la actualización de un registro en la tabla usuarios. Su función es registrar las modificaciones realizadas a los usuarios, almacenando el ID del usuario, el nombre anterior y el nuevo nombre en la tabla acciones.

+ Objetivos:
El objetivo principal es crear un registro en la tabla acciones cada vez que se actualiza la información de un usuario, permitiendo el seguimiento detallado de las ediciones realizadas en la tabla usuarios.

+ Evento Disparador: AFTER UPDATE
+ Tabla Asociada: usuarios
+ Tabla Afectada: acciones

<div aling="center">
    <img src="/img/log_edicion_usuario.jpg">
</div>

+ Ejemplo de inserción de datos
<div aling="center">
    <img src="/img/UPDATElog_edicion_usuario.jpg">
</div>

___

###  4. Trigger: "log_eliminacion_usuario"

+ Descripción:
El trigger log_eliminacion_usuario se activa automáticamente después de que se elimine un registro de la tabla usuarios. Su función es registrar en la tabla `acciones los detalles del usuario eliminado, incluyendo el nombre y el ID del usuario.

+ Objetivos:
El objetivo principal de este trigger es mantener un historial detallado de las eliminaciones de usuarios en la base de datos. Permite auditar qué usuarios han sido eliminados, facilitando el seguimiento y la trazabilidad de estas acciones.

+ Evento Disparador: AFTER DELETE
+ Tabla Asociada: usuarios
+ Tabla Afectada: acciones

<div aling="center">
    <img src="/img/log_eliminacion_usuario.jpg">
</div>

+ Ejemplo de inserción de datos
<div aling="center">
    <img src="/img/DELETE log_eliminacion_usuario.jpg">
</div>

___


NOTA: Para ver los registros de la tabla Acciones.

### SELECT * FROM cerveceria_la_birra_es_bella.acciones;

<div aling="center">
    <img src="/img/Global Triggers.jpg">
</div>

NOTA: Para verificar que los Tiggers fueron creados adecuadamente, se pueden listar con la siguiente instrucción:

<div aling="center">
    <img src="/img/SHOW TRIGGERS.jpg">
</div>

NOTA: Diagrama ERR GLOBAL

<div aling="center">
    <img src="/img/DiagramaDER3.jpg">
</div>

___

# Modificacion Diagrama de entidad-relación (DER) - 

___

<div aling="center">
    <img src="/img/DiagramaDER3.jpg">
</div>

___
___

### Informes generados en base a la información de la base:

### Herramientas y tecnologías usadas:

Para la creación de mi base de datos relacional, utilicé varias herramientas clave. Primero, diseñé el esquema usando Visual Paradigm Online, que me permitió visualizar las entidades y relaciones de forma clara. Luego, con MySQL Workbench, implementé el esquema y gestioné la base de datos.

Además, usé XAMPP para configurar un entorno de desarrollo local con MySQL y poder realizar pruebas en mi propio servidor. El control de versiones lo manejé con Git y GitHub, lo que me permitió colaborar eficientemente y mantener un historial de cambios en los scripts SQL.

Este conjunto de herramientas facilitó el diseño, implementación y gestión de mi base de datos.


### Futuras líneas




<div aling="center">
    <img src="/img/logo.png">
</div>

** © [DOVIS YESICA] 2024. Todos los derechos reservados.**

___

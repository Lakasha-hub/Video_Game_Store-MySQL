# Creo el usuario coderhouse con una contraseña con el mismo nombre
create user 'coderhouse@localhost' identified by 'coderhouse';
# Creo el usuario test con una contraseña
create user 'userTest@localhost' identified by 'testing123';

# Le otorgo al usuario coderhouse solamente permisos de lectura de datos
grant select on store.* to 'coderhouse@localhost';
# Le otorgo al usuario test permisos de lectura, inserción y modificación de datos 
grant select, insert, update on store.* to 'userTest@localhost';

# Muestro los permisos de ambos usuarios
show grants for 'coderhouse@localhost';
show grants for 'userTest@localhost';
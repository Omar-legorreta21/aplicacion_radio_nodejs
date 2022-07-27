const mysql=require ('mysql');
const {promisify}=require('util');
const {database}=require ('./keys');
const pool=mysql.createPool(database);
pool.getConnection((err,connection)=>{
    if(err){
        if(err.code==='PROTOCOL_CONNECTION_LOST'){
            console.error('base de datos cerrada');
        } if(err.code==='ER_CON_COUNT_ERROR'){
            console.error('Hay muchas conecciones');
        } if(err.code==='ECONNREFUSED'){
            console.error('conexion fallida');
        }
    }
    if(connection)connection.release();
    console.log('base conectada');
    return;

});
pool.query=promisify(pool.query);
module.exports=pool;

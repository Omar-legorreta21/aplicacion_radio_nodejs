const express =require ('express');
const router=express.Router();
const pool=require('../database');

router.get('/add',(req,res)=>{
    res.render('radios/add');
});
router.post('/add',async(req,res)=>{
    
    const {region,proveedor_ran,id_sitio,nombre_sitio,multicarrer,tipo_tt,status_tt,baseline_ran,status_construccion,rfi_estimado,status_ca,rfi_estimado_cfe}=req.body;
    const datos={
        region,
        proveedor_ran,
        id_sitio,
        nombre_sitio,
        multicarrer,
        tipo_tt,
        status_tt,
        baseline_ran,
        status_construccion,
        rfi_estimado,
        status_ca,
        rfi_estimado_cfe
    };
    console.log(datos);
    await pool.query('INSERT INTO base_radios set ?',[datos]);
    console.log(datos);
    res.redirect('/radios');
   // res.send('datos recibidos');
});
router.get('/',async(req,res)=>{
   const datosbd= await pool.query('SELECT * FROM base_radios WHERE status=1');
    console.log(datosbd);
    res.render('radios/tabla',{datosbd});
});
router.get('/eliminar/:id', async(req,res)=>{
    const{id}=req.params;
    await pool.query('DELETE FROM base_radios WHERE ID=?',[id]);
    res.redirect('/radios');
});
router.get('/edit/:id',async(req,res)=>{
    const{id}=req.params;
    const datosbd= await pool.query('SELECT * FROM base_radios WHERE status=1 and ID=?',[id]);
    console.log(datosbd);
    res.render('radios/edit',{datosdb:datosbd[0]});
});
router.post ('/edit/:id',async (req,res)=>{
const {id}=req.params;
const {region,proveedor_ran,id_sitio,nombre_sitio,multicarrer,tipo_tt,status_tt,baseline_ran,status_construccion,rfi_estimado,status_ca,rfi_estimado_cfe}=req.body;
const datos={
    region,
    proveedor_ran,
    id_sitio,
    nombre_sitio,
    multicarrer,
    tipo_tt,
    status_tt,
    baseline_ran,
    status_construccion,
    rfi_estimado,
    status_ca,
    rfi_estimado_cfe
};
    await pool.query('UPDATE base_radios set ? WHERE id=? ',[datos,id])
    res.redirect('/radios');
});
module.exports=router;
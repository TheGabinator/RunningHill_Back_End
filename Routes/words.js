const Router = require("express").Router();
const mysql = require("mysql2");
const {dbConnection, getWordsquery } = require("../links_ and _DBconnections");

const PORT = process.env.PORT || 3000;
const db = mysql.createConnection(dbConnection);

db.connect((err)=> {
    if(err)
    {
        console.log("Error: " + err);
    } 
});

Router.get("/:wordtype", (req, res)=>{
   
    let sql = getWordsquery;

    db.query(sql, req.params.wordtype, (err ,result)=>{
        if(err)
        {
            console.log(err);
        }                
        res.status(200).send(result);
    });
});


module.exports = Router;

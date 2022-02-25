const Router = require("express").Router();
const mysql = require("mysql2");
const {dbConnection, getSentencesquery, postNewSentence } = require("../links_ and _DBconnections");

const PORT = process.env.PORT || 3000;
const db = mysql.createConnection(dbConnection);

db.connect((err)=> {
    if(err)
    {
        console.log("Error: " + err);
    } 
});

Router.get("/", (req, res)=>{
   
    //getsentences is an sql query from a persistent file 
    let sql = getSentencesquery;    

    db.query(sql, (err, result)=>{
        if(err)
        {
            console.log(`Error: ${err}`);
        }
        res.status(200).json(result);
    });
});

Router.post("/", (req, res)=>{

    let sql = postNewSentence;          
    db.query(sql, [req.body.sentence] , (err, result)=>{
        if(err)
        {
            console.log(err);
        }        
        
        //console.log(result);
        res.send(result);
    });

});

module.exports = Router;

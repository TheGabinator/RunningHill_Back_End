const express = require("express");
const dotenv = require("dotenv").config();
const mysql = require("mysql2");
const {dbConnection } = require("./links_ and _DBconnections");
const words = require("./Routes/words");
const sentences = require("./Routes/sentence");
const conjunctions = require("./Routes/sentence")
const Cors = require("cors");

const app = express();
const PORT = process.env.PORT || 3000;
const db = mysql.createConnection(dbConnection);

app.use(express.json());
app.use(Cors());


app.use("/api/words", words);
app.use("/api/sentences", sentences);


app.get("/", (req, res)=>{    

  res.send("Home page")

})

app.use((req, res) => {
    res.json("The requested page was not found");
})


app.listen(PORT, ()=> console.log(`Server running on Port ${PORT}`));

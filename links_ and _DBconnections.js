const express = require("express");
const dotenv = require("dotenv").config();

let dbConnection = {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DATABASE
}


let getSentencesquery = "SELECT sentence FROM sentence";
let getWordsquery = "SELECT word FROM words where Wordtype=?";
let postNewSentence = "INSERT INTO sentence (sentence) VALUES (?)";

module.exports = {dbConnection, getSentencesquery, getWordsquery, postNewSentence};


// let dbConnection = {
//     host: "localhost",
//     user: "Gabin",
//     password: "Basketball123",
//     database: "runninghill"
// }



const mysql = require('mysql2');
const inquierer = require('inquirer');
const express = require('express');
require('dotenv').config();

const start = require("./prompts.js");
const connection = require("./database.js");

const PORT = process.env.PORT || 3001;

const app = express();

// middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

start();
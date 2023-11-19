require('dotenv').config();
const cors = require("cors");
const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const Connection = require('./connection/connection');
require('./models/comment');
app.use(cors())
//app.use(bodyParser());
app.use(express.json());

app.use("/", require('./routes/user'));
app.use("/", require('./routes/course'));

app.use('/',(req,res)=>{
    console.log('test');
    res.send().json({valu:"djk"})
})


const PORT = 4000;

app.listen(PORT, () => {
    console.log("Done");
})
Connection();
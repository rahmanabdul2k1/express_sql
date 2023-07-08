const mysql = require('mysql');
const express = require('express');
const cors = require("cors");
const bodyparser = require('body-parser');
const multer = require('multer');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'mern_crud'
});

db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('MySql Connected...');
});
app = express();
app.use(bodyparser.json());
const corsOptions = {
    origin: '*',
    credentials: true,
    optionSuccessStatus: 200,
}

app.use(cors(corsOptions))
app.listen(5000, () => {
    console.log('Server started on port :5000');
});

app.get('/mern_all_users', (req, res) => {
    let sql = 'SELECT * FROM members';
    db.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    });
});

app.post('/mern_user', multer().none(), (req, res) => {
    let form = req.body;
    let sql = `SELECT * FROM members WHERE id = '${form.id}'`;
    db.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    });
});

app.post('/create_mern_user', multer().none(), (req, res) => {
    let form = req.body;
    let sql = `INSERT INTO members (name, phone, email, password) VALUES ('${form.name}','${form.phone}','${form.email}','${form.password}')`;
    db.query(sql, (err, result) => {
        if (err) throw err;
        console.log(result);
        res.send('User Created...');
    });
});

app.post("/delete_mern_user", multer().none(), (req, res) => {
    let form = req.body;
    const q = `DELETE FROM members WHERE id = '${form.id}'`;
    db.query(q, (err, data) => {
        console.log(err, data);
        if (err) throw err;
        res.send('User Deleted...');
    })
});
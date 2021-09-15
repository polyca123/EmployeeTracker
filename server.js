const { Sequelize, Model, Datatypes } = require('sequelize')
const { prompt } = require('inquirer')
require('console.table')

const sequelize = new Sequelize('mysql://root:rootroot@localhost:3306/employee_db')

class
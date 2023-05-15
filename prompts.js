const inquierer = require('inquirer');
const mysql = require('mysql2');
const connection = require('./database.js');

function start () {
    inquirer
    .prompt({
        name: 'action',
        type: 'list',
        message: 'What would you like to do?',
        // once this pops up i am presented with the options to: view all departments, all roles , all employees, add a department, a role, an employee and updte an employee role
        choices: ['View all departments',
         'View all roles',
          'View all employees',
           'Add a department',
            'Add a role',
             'Add an employee',
              'Update an employee role',
              'Quit',
    ],
})
.then((answers) => {
switch (answers.action) {
    case 'View all employees':
        viewAllEmployees();
        break;
        case 'View all roles':
            viewAllRoles();
            break;
            case 'View all departments':
                viewAllDepartments();
                break;

                case 'Add a department':
                    addDepartment();
                    break;
                    case 'Add a role':
                        addRole();
                        break;
                        case 'Add an employee':
                            addEmployee();
                            break;
                            case 'Update an employee role':
                                updateEmployee();
                                break;
                                case 'delete an employee':
                                    deleteEmployee();
                                    break;
                                    case 'delete a role':
                                        deleteRole();
                                        break;
                                        case 'delete a department':
                                            deleteDepartment();
                                            break;
                                            case 'Quit':
                                                connection.end();
                                                break;
}
});
}

// creating a class constructor for these functions
function viewAllEmployees() {
    const query = `SELECT * FROM employee`;
    connection.query(query, (err, res) => {
        if (err) throw err;
        console.table(res);
        start();
        });
        }
        function viewAllRoles() {
            const query = `SELECT * FROM role`;
            connection.query(query, (err, res) => {
                if (err) throw err;
                console.table(res);
                start();
                });
                }

                function viewAllDepartments() {
                    const query = `SELECT * FROM department`;
                    connection.query(query, (err, res) => {
                        if (err) throw err;
                        console.table(res);
                        start();
                        });
                        }
                        function addEmployee() {
                            inquirer
                            .prompt([
                                {
                                    name: "first_name",
                                    type: "input",
                                    message: "What is the employee's first name?",
                                },
                                {
                                    name: "last_name",
                                    type: "input",
                                    message: "What is the employee's last name?",
                                },
                                {
                                    name: "role_id",
                                    type: "input",
                                    message: "What is the employee's role id?",
                                },
                                {
                                    name: "manager_id",
                                    type: "input",
                                    message: "What is the employee's manager id?",
                                },
                                {
                                    name: "department_id",
                                    type: "input",
                                    message: "What is the employee's department id?",
                                },
                                {
                                    name: "salary",
                                    type: "input",
                                    message: "What is the employee's salary?",
                                },
                                ])
                                // the ? is going to reference the answers above in the inquirer prompt
                                .then((answers) => {
                                    const {first_name, last_name, role_id, manager_id, department_id, salary} = answers;
                                    const query = `INSERT INTO employee (first_name, last_name, role_id, manager_id, department_id, salary) VALUES (?, ?, ?, ?, ?, ?)`;
                                    connection.query(
                                        query,
                                        [first_name, last_name, role_id, manager_id, salary],
                                        (err, res) => {
                                            if (err) throw err;
                                            console.log('Employee added successfully');
                                            start();
                                            }
                                            );
                                            });
                                        }

                                        function addRole() {
                                            inquirer
                                            .prompt([
                                                {
                                                    name: "title",
                                                    type: "input",
                                                    message: "What is the role title?",

                                                },
                                                {
                                                    name: "salary",
                                                    type: "input",
                                                    message: "What is the role salary?",
                                                },
                                                {
                                                    name: "department_id",
                                                    type: "input",
                                                    message: "What is the department id of the new role? (Please enter a number)",
                                                    validate: function (value) {
                                                        if (isNaN(value) === false) {
                                                        return true;
                                                    }
                                                    return false;
                                                    },
                                                    },
                                                    ])
                                                    .then((answers) => {
                                                    const {title, salary, department_id} = answers;
                                                    const query = `INSERT INTO role (title, salary, department_id) VALUES (?, ?, ?)`;
                                                    connection.query(query, [title, salary, department_id], (err, res) => {
                                                        if (err) throw err;
                                                        console.log('Role added successfully');
                                                        start();
                                                    });
                                                    });
                                                    }

                                                    function addDepartment() {
                                                        inquirer
                                                        .prompt([
                                                            {
                                                                name: "title",
                                                                type: "input",
                                                                message: "What is the department title?",
                                                            },
                                                            ])
                                                            .then((answers) => {
                                                                const {title } = answer;
                                                                const query = `INSERT INTO department (title) VALUES (?)`;
                                                                connection.query(query, title, (err, res) =>{
                                                                    if (err) throw err;
                                                                    console.log('Department added successfully');
                                                                    start();
                                                                });
                                                                });
                                                                }

                                                                function updateEmployeeRole() {
                                                                    inquirer
                                                                    .prompt([
                                                                        {
                                                                            name: "employee_id",
                                                                            type: "input",
                                                                            message: "what is the employee's id?",
                                                                },
                                                                {
                                                                    name: "role_id",
                                                                    type: "input",
                                                                    message: "what is the employee's new role id",
                                                                    },
                                                                    ])
                                                                    .then((answers) => {
                                                                        const {id, role_id} = answers;
                                                                        const query = `UPDATE employee SET role_id = ? WHERE id = ?`;
                                                                        connection.query(query [id, role_id], (err, res) => {
                                                                            if (err) throw err;
                                                                            console.log('Employee role updated successfully');
                                                                            start();
                                                                        });
                                                                        });
                                                                        }
                                                                         module.exports = start;


                                        
                                

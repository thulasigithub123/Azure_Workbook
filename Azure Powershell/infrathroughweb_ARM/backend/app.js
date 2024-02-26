 const express = require('express');
const bodyParser = require('body-parser');
const { exec } = require('child_process');

const app = express();
const port = 3000;

app.use(bodyParser.json());
app.use(express.static('public'));

app.post('/submit-details', (req, res) => {
    const { vmname, username, password, resourcegroup, location } = req.body;
    console.log('Received details:', `Name: ${vmname}, Resource Group: ${resourcegroup}, Location: ${location}`);
    
     const command = `az deployment group create --resource-group MYLABRG --template-file ./linuxvmtemplate.json --parameters vmName=${vmname}`;

    exec(command, (error, stdout, stderr) => {
        if (error) {
            console.error('Error:', error.message);
            return res.status(500).send('Error executing  script');
        }
        if (stderr) {
            console.error('Script error:', stderr);
            return res.status(500).send(' script error');
        }
        console.log('vm created successfully:', stdout);
        res.sendStatus(200);
    });
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});

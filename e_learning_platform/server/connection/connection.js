const mongoose = require('mongoose');
const URL = 'yourmongoDBUrl';


const Connection = async() => {
    try {
        await mongoose.connect(URL, {
            useNewUrlParser: true,
            useUnifiedTopology: true,
            useFindAndModify: false
        });

        console.log("Database Connected");
    } catch (e) {
        console.log(e);
    }

}


module.exports = Connection;
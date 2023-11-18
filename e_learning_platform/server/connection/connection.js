const mongoose = require('mongoose');
const URL = 'mongodb+srv://saqib:saqib@cluster0.kllgvig.mongodb.net/?retryWrites=true&w=majority';


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
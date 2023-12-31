const mongoose = require('mongoose');
const { ObjectId } = mongoose.Schema.Types;

const courseSchema = new mongoose.Schema({
    courseName: {
        type: String,
        required: true
    },
    courseDescription: {
        type: String,
        required: true
    },
    coursePic: {
        type: String,
        required: true
    },
    channelName: {
        type: String,
        required: true,
    },
    courseUrl: {
        type: String,
        required: true,
    },
    isHighestRated: {
        type: Boolean,
        default: false
    },
    isRecentlyAdded: {
        type: Boolean,
        default: false
    },
    isTrendingCourse: {
        type: Boolean,
        default: false
    },
    isAccepted:{
        type:Boolean,
        default:true
    },
    category: {
        type: mongoose.Schema.Types.ObjectId,
        ref:"Category"
    },
    coursePublishedOn: {
        type: String,
    },
    courseRatings: {
        type: String,
        required: true
    },
    ratings: [{
        ratedBy: {
            type: ObjectId,
            ref:"User"
        },
        ratingsGiven: {
            type: String,
            required: true
        }
    }],
    hasBeenCommented:{
        type:Boolean,
        default:false
    },
    comments:[{
        type:ObjectId,
        ref:"Comments"
    }]
}, { timestamps: true });

const Courses = mongoose.model("Courses", courseSchema);


module.exports = Courses;
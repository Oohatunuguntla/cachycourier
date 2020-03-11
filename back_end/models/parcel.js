const mongoose=require('mongoose')
const parcelschema=mongoose.Schema({
    id:{
        type:number,
        unique:true,

    },
    weight:{
        type:number,
        required:true
    },
    sourceaddress:{
        type:String,
        required:true
    },
    destinationaddress:{
        type:String,
        required:true
    },
    parceltype:{
        type:String,
        required:true
    },
    pool:{
        type:Boolean,
        required:true
    },
    reached:{
        type:Boolean,
        required:true
    },
    cost:{
        type:number,
        required:true
    }

});
module.exports=mongoose.model('parcel',parcelschema);
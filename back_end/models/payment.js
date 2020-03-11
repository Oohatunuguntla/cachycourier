const mongoose=require('mongoose')
const parcel_paymentschema=mongoose.Schema({
    id:{
        type:number,
        unique:true
    },
    ispaid:{
        type:Boolean,
        required:true
    },
    cost:{
        type:number,
        required:true
    }
})
module.exports=mongoose.model('parcel_payment',parcel_paymentschema)
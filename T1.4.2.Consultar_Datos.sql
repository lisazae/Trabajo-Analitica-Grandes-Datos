db.ASESOR.find()
db.ASESOR.find({AG_USER_NAME:"felson.florez"})
db.ASESOR.count()
db.ASESOR.distinct("CALL_CONNID").length

db.ASESOR.aggregate([
    {"$group" : {_id:"$AG_USER_NAME", count:{$sum:1}}}
])


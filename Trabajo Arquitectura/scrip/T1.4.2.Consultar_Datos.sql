> show databases

> use analitica

> show collections;

> db.categoria.find().pretty();
{
        "_id" : ObjectId("60a97d9b03cdf3267c980d64"),
        "product_category_name" : "beleza_saude",
        "product_category_name_english" : "health_beauty"
}
Type "it" for more

> db.ciudades.find().pretty();
{
        "_id" : ObjectId("60a97f8603cdf3267c9816a5"),
        "geolocation_zip_code_prefix" : 1037,
        "geolocation_lat" : -23.54562128,
        "geolocation_lng" : -46.63929205,
        "geolocation_city" : "sao paulo",
        "geolocation_state" : "SP"
}
Type "it" for more

> db.categoria.find({product_category_name:/^b/}).count();
4

> db.encuestas.aggregate([{$group:{_id:"",last:{$max:"$review_score"}}}]);
{ "_id" : "", "last" : 5 }

> db.productos.aggregate([{$group:{_id:"",last:{$min:"$product_weight_g"}}}]);
{ "_id" : "", "last" : 50 }

> db.productos.aggregate([{$group:{_id:"",last:{$avg:"$product_weight_g"}}}]);
{ "_id" : "", "last" : 2206.976988494247 }
class OrderedProduct{
  final String name;
  final String description;
  final double price;
  final String connectiontype;
  final String id;
  final String quantity;
  final List images;
  int orderquantity = 1;
  final bool isDelivered;
  final bool isCanceled;

  OrderedProduct({
    required this.id,
    required this.name,
    required this.orderquantity,
    required this.description,
    required this.price,
    required this.images,
    required this.quantity,
    required this.connectiontype,
    required this.isCanceled,
    required this.isDelivered,
  });
  Map<String,dynamic>toJson()=>{
    'id': id,
    'name':name,
    'price':price,
    'quantity':quantity,
    'description':description,
    'connectiontype':connectiontype,
    'image':images,
    'isDeliverd': isDelivered,
    'isCanceled': isCanceled,
    'orderquantity': orderquantity,
};
  static OrderedProduct fromJson(Map<String,dynamic>json)=>OrderedProduct(
    id: json['id'], 
    name:  json['name'], 
    orderquantity:  json['orderquantity'], 
    description:  json['description'], 
    price:  json['price'], 
    images:  json['images'], 
    quantity:  json['quantity'], 
    connectiontype:  json['connectiontype'], 
    isCanceled:  json['isCanceled'], 
    isDelivered:  json['isDelivered']
    );

}
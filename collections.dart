void main(){

  Map<String, String> users = {};

  users.putIfAbsent("firstName", ()=> "Excellent");
  users.putIfAbsent("lastName", ()=> "Jedy");
  users.putIfAbsent("Age", ()=> "23");
  users["gender"] = "Male";

  print(users);
  
  users.forEach((key, value){
    print('$key, $value');
  });

  bool isKeyExists = users.containsKey("firstName");
  print(isKeyExists);
}


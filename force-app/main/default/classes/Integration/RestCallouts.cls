public with sharing class RestCallouts {

    // //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    // //Http Method: GET
    public static HttpResponse getAnimals() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. Prepare Internet
        Http http = new Http();

        //3. Send the request over the internet in order to receive the response
        HttpResponse response = http.send(request);

        //4. Process the response
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        return response;
    }

    // //Endpoint: https://dummyjson.com/products
    // //Http Method: GET
    public static HttpResponse getProducts() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/products');
        request.setMethod('GET');

        //2. Prepare Internet
        Http http = new Http();

        //3. Send the request over the internet in order to receive the response
        HttpResponse response = http.send(request);

        //4. Process the response
        if(response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            
            //Convert the jsonString into sobject records
            EcommerceProductWrapper epw = (EcommerceProductWrapper)JSON.deserialize(jsonString, EcommerceProductWrapper.class);
            List<EcommerceProductWrapper.ProductWrapper> pws = epw.products;
            List<Ecommerce_Product__c> products = new List<Ecommerce_Product__c>();
            for(EcommerceProductWrapper.ProductWrapper pw : pws) {
                Ecommerce_Product__c ep = new Ecommerce_Product__c();
                ep.Product_Id__c = pw.id;
                ep.Name = pw.title;
                ep.Description__c = pw.description;
                ep.Price__c = pw.price;
                ep.Discount_Percentage__c = pw.discountPercentage;
                ep.Rating__c = pw.rating;
                ep.Stock__c = pw.stock;
                ep.Brand__c = pw.brand;
                ep.Category__c = pw.category;
                ep.Thumbnail__c = pw.thumbnail;
                products.add(ep);
            }
            //insert records
            try {
                insert products;
            } catch(Exception ex) {
                System.debug(ex.getMessage());
            }
        }
        return response;
    }

    //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: GET
    public static HttpResponse getAirlines(Integer airlineId) {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.instantwebtools.net/v1/airlines/' + airlineId);
        request.setMethod('GET');

        //2. Prepare Internet
        Http http = new Http();

        //3. Send the request over the internet in order to receive the response
        HttpResponse response = http.send(request);

        //4. Process the response
        if(response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            //convert json string into sobject
            AirlinesWrapper aw = (AirlinesWrapper)JSON.deserialize(jsonString, AirlinesWrapper.class);
            Airlines__c airline = new Airlines__c();
            airline.Airlines_Id__c = aw.id;
            airline.Name = aw.name;
            airline.Country__c = aw.country;
            airline.Logo_URL__c = aw.logo;
            airline.Slogan__c = aw.slogan;
            airline.Head_Quaters__c = aw.head_quaters;
            airline.Website__c = aw.website;
            airline.Established__c = aw.established;
            //insert airlines
            try {
                insert airline;
            } catch(Exception ex) {
                System.debug(ex.getMessage());
            }
        }
        return response;
    }

     //Endpoint: https://dummyjson.com/products/add
    //Http Method: POST
    public static HttpResponse postProduct(Id prodId) {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/products/add');
        request.setMethod('POST');
        //prepare json body
        Ecommerce_Product__c ep = [SELECT Name, Brand__c, Category__c, Description__c, Discount_Percentage__c, Price__c, Rating__c, 
                                    Stock__c, Thumbnail__c, Product_Id__c
                                    FROM Ecommerce_Product__c 
                                    WHERE Id = :prodId];
        EcommerceProductWrapper.ProductWrapper pw = new EcommerceProductWrapper.ProductWrapper();
        pw.brand = ep.Brand__c;
        pw.category = ep.Category__c;
        pw.description = ep.Description__c;
        pw.discountPercentage = ep.Discount_Percentage__c;
        pw.price = Integer.valueOf(ep.Price__c);
        pw.rating = ep.Rating__c;
        pw.stock = Integer.valueOf(ep.Stock__c);
        pw.thumbnail = ep.Thumbnail__c;
        pw.title = ep.Name;
        String body = JSON.serialize(pw);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json');

        //2. Prepare Internet
        Http http = new Http();

        //3. Send the request over the internet in order to receive the response
        HttpResponse response = http.send(request);

        //4. Process the response
        System.debug(response.getStatusCode());
        if(response.getStatusCode() == 200 || response.getStatusCode() == 201) {
            String jsonString = response.getBody();
            EcommerceProductWrapper.ProductWrapper pwNew = (EcommerceProductWrapper.ProductWrapper)JSON.deserialize(jsonString, EcommerceProductWrapper.ProductWrapper.class);
            ep.Product_Id__c = pwNew.id;
            update ep;
        }
        return response;
    }
    //Endpoint: https://dummyjson.com/users
    //Http Method: GET
    // public static HttpResponse getUsers() {
    //     //1. Prepare HttpRequest and wrap all the necessary data in it
    //     HttpRequest request = new HttpRequest();
    //     request.setEndpoint('https://dummyjson.com/users');
    //     request.setMethod('GET');

    //     //2. Prepare Internet
    //     Http http = new Http();

    //     //3. Send the request over the internet in order to receive the response
    //     HttpResponse response = http.send(request);

    //     //4. Process the response
    //     if(response.getStatusCode() == 200) {
    //         String jsonString = response.getBody();
    //        System.debug(jsonString);
    //         //Convert the jsonString into sobject records
    //         UserWrapper usw = (UserWrapper)JSON.deserialize(jsonString, UserWrapper.class);
    //         System.debug(usw);
    //         List<UserWrapper.usersWrp> uw = usw.userInfo;
    //         System.debug(uw);
    //         List<Employee__c> users = new List<Employee__c>();
    //         System.debug('--');
    //         for(UserWrapper.usersWrp usInf : uw) {
    //             System.debug('1');
    //             Employee__c ep = new Employee__c();
    //             ep.User_Name__c = usInf.username;
    //             ep.First_Name__c = usInf.firstName;
    //             ep.Last_Name__c = usInf.lastName;
    //             ep.Maiden_Name__c = usInf.maidenName;
    //             ep.Age__c = usInf.age;
    //             ep.Gender__c = usInf.gender;
    //             ep.Email__c = usInf.email;
    //             ep.Phone_No__c = usInf.phone;
    //             ep.Birthdate__c = date.valueOf(usInf.birthDate);
    //             ep.Password__c = usInf.password;
    //             users.add(ep);
    //             System.debug('--');
    //         }
    //         //insert records
    //         try {
    //             System.debug('--');
    //             insert users;
    //         } catch(Exception ex) {
    //             System.debug(ex.getMessage());
    //         }
    //     }
    //     System.debug('--');
    //     return response;
    // }
    

    // //Endpoint: https://dummyjson.com/todos/add
    // //Http Method: POST
    @future(callout=true)
    public static void postToDo(Id toDoId) {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/todos/add');
        request.setMethod('POST');
        ToDo__c todo = [SELECT Name, ToDo_Id__c, User_Id__c, Completed__c FROM ToDo__c WHERE Id= :toDoId LIMIT 1];
        ToDoWrapper tw = new ToDoWrapper();
        tw.completed = todo.Completed__c;
        tw.todo = todo.Name;
        tw.userId = integer.valueOf(todo.User_Id__c);
        string body = JSON.serialize(tw);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json');
        //2. Prepare Internet
        Http http = new Http();
        
        //3. Send the request over the internet in order to receive the response
        HttpResponse response = http.send(request);
        //4. Process the response
        System.debug(response.getStatusCode());
        if (response.getStatusCode()==200 || response.getStatusCode() == 201) {
            string jsonString = response.getBody();
            ToDoWrapper newWrap = (ToDoWrapper)JSON.deserialize(jsonString, ToDoWrapper.class);
            todo.ToDo_Id__c = newWrap.id;
            update todo;
        }
    }
 
    //Endponint: https://dummyjson.com/todos/{id}
    //Http Method: PUT
    @future(callout=true)
    public static void updateToDo(id toDoId) {
        ToDo__c todo = [SELECT Name, ToDo_Id__c, User_Id__c, Completed__c FROM ToDo__c WHERE Id = :toDoId LIMIT 1];
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/todos/'+todo.ToDo_Id__c);
        request.setMethod('PUT');
        String body = '{"completed":' + todo.Completed__c + '}';
        System.debug(body);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json');
        //2. Prepare Internet
        Http http = new Http();
        
        //3. Send the request over the internet in order to receive the response
        HttpResponse response = http.send(request);
        //4. Process the response
        if (response.getStatusCode()==200) {
            System.debug('Data has been sent!');
            
        }else{
            System.debug(response.getStatusCode());

        }
        
    }
    //Endponint: https://dummyjson.com/todos/{id}
    //Http Method: DELETE
    @future(callout=True)
    public static void deleteToDo(Integer toDoId) {
   
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/todos/'+toDoId);
        request.setMethod('DELETE');
        //2. Prepare Internet
        Http http = new Http();
        //3. Send the request over the internet in order to receive the response
       HttpResponse response = http.send(request);
        //4. Process the response
       System.debug(response.getStatusCode());
       System.debug('Record has been deleted');
        
    }
    //Endpoint: https://falconllc-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Dn000007tAfPIAU
    //http Method: GET
    public static HttpREsponse getCase() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:NC_Falconllc/services/apexrest/Case/500Dn000007tAfPIAU');
        request.setMethod('GET');

        //2. Prepare Internet
        Http http = new Http();

        //3. Send the request over the internet in order to receive the response
        HttpResponse response = http.send(request);
        //4. Process the response
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        return response;
        
    }

}
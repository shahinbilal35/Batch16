public class RestCalloutsUsers {
    public static HttpResponse getUsers(){
        httpRequest request=new HttpRequest();
        request.setendpoint('https://dummyjson.com/users');
        request.setMethod('GET');
        Http http=new Http();
        HttpResponse response=http.send(request);
        if(response.getstatuscode()==200){
            string jsonString=response.getBody();
            system.debug(jsonString);
            users usr=(users)JSON.deserialize(jsonString,users.class);
            list<Dummy_Users__c> lstUser=new list<Dummy_Users__c>();
            for(UserWrapper us:usr.users){
                Dummy_Users__c user=new Dummy_Users__c();
                user.name=string.valueof(us.id);
                user.firstName__c=us.firstName;
                user.lastName__c=us.lastName;
                user.age__c=us.age;
                user.gender__c=us.gender;
                user.email__c=us.email;
                user.phone__c=us.phone;
                user.password__c=us.password;
                user.username__c=us.username;
                user.birthDate__c=Date.valueof(us.birthDate);
                user.image__c=us.image;
                lstUser.add(user);
            }
            insert lstUser;

        }
        return response;
        }
        public class users{
            public list<UserWrapper> users;
        }
        public class UserWrapper{
            public integer id;
            public string firstName;
            public string lastName;
            public integer age;
            public string gender;
            public string phone;
            public string email;
            public string password;
            public string username;
            public string birthDate;
            public string image ;
        }

}
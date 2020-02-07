global class remoteactionfunction {
    @RemoteAction //the function to be called in remote action should use this annotation
    global static list<Contact> getcon() {
        //function should be static and global else it will throw error
        list<Contact> con1 = [SELECT accountid,name FROM contact limit 20];
        if(con1!=null && !con1.isEmpty()){        
            return con1;        
        }else{        
            return  new list<contact>();        
        }
    }
}
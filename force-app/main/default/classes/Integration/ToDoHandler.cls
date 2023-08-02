public with sharing class ToDoHandler {
    public static void afterInsert(Map<Id,ToDo__c> TriggerNewmap) {
        for(Id toDoId : TriggerNewmap.keySet()) {
            RestCallouts.postToDo(toDoId);
        }
    }
    public static void afterUpdate(Map<id, ToDo__c> TriggerNewMap, Map<id, ToDo__c> TriggerOldMap) {
        for (Id toDoId : TriggerNewMap.keySet()) {
            ToDo__c newToDo = TriggerNewMap.get(todoId);
            ToDo__c oldToDo = TriggerOldMap.get(todoId);
            if (newToDo.name != oldToDo.name || newToDo.Completed__c != oldToDo.Completed__c || newToDo.User_Id__c != oldToDo.User_Id__c) {
                RestCallouts.updateToDo(toDoId);
                
            }

            
        }
        
    }
    public static void afterDelete(Map<Id,ToDo__c> TriggerOldmap) {
        for(Id toDoId : TriggerOldmap.keySet()) {
            RestCallouts.deleteToDo(integer.valueOf(TriggerOldmap.get(toDoId).ToDo_Id__c));
        }
    }
}
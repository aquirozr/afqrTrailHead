trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> lstTask = new List<Task>();
    Task tarea;
    for( Opportunity op : Trigger.New ){
        if( op.StageName == 'Closed Won' ){
            tarea = new Task();
            tarea.Subject = 'Follow Up Test Task';
            tarea.WhatId = op.Id;
            lstTask.add(tarea);
        }        
    }
    if(lstTask.size() > 0){
        insert lstTask;
    }
}
trigger Account_BI on Account (before Insert) {
    for(Account a : trigger.new){
        a.Name = a.Name +  ' ' + system.now();
    }
}
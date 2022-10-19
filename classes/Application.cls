public with sharing class Application {

    public static final fflib_Application.UnitOfWorkFactory uow = new fflib_Application.UnitOfWorkFactory(new List<SObjectType>{
        Task.SObjectType,
        Opportunity.SObjectType
});

public static final fflib_Application.ServiceFactory service = new fflib_Application.ServiceFactory(new Map<Type, Type>{
        I_TaskService.class => TaskServiceImplement.class
});

public static final fflib_Application.SelectorFactory selector = new fflib_Application.SelectorFactory(new Map<SObjectType, Type>{
        Opportunity.SObjectType => OpportunitySelector.class
});

public static final fflib_Application.DomainFactory domain = new fflib_Application.DomainFactory(Application.selector, new Map<SObjectType, Type>{
        Opportunity.SObjectType => Opportunities.Constructor.class
});

}

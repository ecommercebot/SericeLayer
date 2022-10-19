
public with sharing class OpportunitySelector extends fflib_SObjectSelector {


/**
	* @param includeFieldSetFields Set to true if the Selector queries are to include Fieldset fields as well 
	* @param enforceCRUD Enforce CRUD security
	* @param enforceFLS Enforce Field Level Security
	* @param sortSelectFields Set to false if selecting many columns to skip sorting select fields and improve performance
**/
	public OpportunitySelector(){ // optional constructor
		super(false, true, true, false);
	}


	// Implement this method to inform the base class of the common fields to be queried or listed by the base class methods
	// abstract method from fflib_SObjectSelector
	public List<Schema.SObjectField> getSObjectFieldList(){  
		return new List<Schema.SObjectField>{
			Opportunity.AccountId,
            Opportunity.Id,
            Opportunity.Name,
            Opportunity.StageName,
            Opportunity.CloseDate,
			Opportunity.OwnerId
		};
	}

	//Implement this method to inform the base class of the SObject (custom or standard) to be queried
	public Schema.SObjectType getSObjectType(){ 
		return Opportunity.SObjectType;
	}


}

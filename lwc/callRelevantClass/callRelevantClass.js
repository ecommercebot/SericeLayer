import { LightningElement, api } from 'lwc';
import createTask from '@salesforce/apex/TaskController.createTask'

export default class CallRelevantClass extends LightningElement {
    @api recordId;

    handleClick() {

        createTask({"id": this.recordId}).then(result=>{
			console.log(result)
		}).catch(error=>{
            console.log( JSON.stringify(error ) )
		});

    }
}
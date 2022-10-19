public interface I_CreateTask {
    fflib_ISObjectUnitOfWork createTasksForOpportunities(List<SObject> addTasksTo, fflib_ISObjectUnitOfWork unitOfWork);
}

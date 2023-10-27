package com.csc340.crudapp.task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskService {

    @Autowired
    TaskRepository repository;

    public Task getTaskById(long id) {
        return repository.getReferenceById(id);
    }

    public List<Task> getAllTasks() {
        return repository.findAll();
    }

    public void saveTask(Task task) {
        repository.save(task);
    }

    public void updateTask(Task task) {
        Task existing = getTaskById(task.getTaskID());

        existing.setTaskName(task.getTaskName());
        existing.setStatus(task.getStatus());
        repository.save(existing);
    }

    public void deleteTaskById(long id) {
        repository.deleteById(id);
    }

}

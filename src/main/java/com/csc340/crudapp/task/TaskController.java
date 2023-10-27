package com.csc340.crudapp.task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/task")
@Controller
public class TaskController {

    @Autowired
    TaskService taskService;

    @GetMapping("/all")
    public String getTasks(Model model) {
        model.addAttribute("tasksList", taskService.getAllTasks());
        return "list-all-tasks";
    }

    @GetMapping("/id={taskId}")
    public String getTask(@PathVariable long taskId, Model model) {
        model.addAttribute("task", taskService.getTaskById(taskId));
        return "task-detail";
    }

    @GetMapping("/delete/id={taskId}")
    public String deleteTask(@PathVariable long taskId, Model model) {
        taskService.deleteTaskById(taskId);
        return "redirect:/task/all";
    }

    @PostMapping("/create")
    public String createTask(Task task) {
        taskService.saveTask(task);
        return "redirect:/task/all";
    }

    @PostMapping("/update/id={taskId}")
    public String upateTask(@PathVariable long taskId, Task task) {
        Task existing = taskService.getTaskById(taskId);
        existing.setStatus(task.getTaskName());
        existing.setDetails(task.getDetails());
        existing.setStatus(task.getStatus());
        taskService.saveTask(existing);
        return "redirect:/task/all";
    }

    @GetMapping("/create")
    public String newTaskForm(Model model) {
        Task task = new Task();
        model.addAttribute("task", task);
        model.addAttribute("isUpdate", false);
        return "update-task";
    }

    @GetMapping("/update/id={taskId}")
    public String updateTaskForm(@PathVariable long taskId, Model model) {
        model.addAttribute("task", taskService.getTaskById(taskId));
        model.addAttribute("isUpdate", true);
        return "update-task";
    }
    @GetMapping("/update-status/id={taskID}&status={status}")
    public String updateTaskStatus(@PathVariable long taskID, @PathVariable String status) {
        Task existing = taskService.getTaskById(taskID);
        existing.setStatus(status);
        taskService.saveTask(existing);
        return "redirect:/goal/all";
    }
}

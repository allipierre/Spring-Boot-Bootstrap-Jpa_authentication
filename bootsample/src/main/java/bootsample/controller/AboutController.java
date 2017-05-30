/**
 * 
 */
package bootsample.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.model.Task;
import bootsample.service.TaskService;

/**
 * @author yotti
 *
 */
@Controller
public class AboutController {
	@Autowired
	private TaskService taskService;

	@GetMapping("/about")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "about";
	}
	
	@GetMapping("/delete-task/{id}")
	public String redirectAfterDelete(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_TASKS");
		return "about";
	}

	@GetMapping("/all-tasks")
	public String allTasks(HttpServletRequest request) {
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "about";
	}

	@GetMapping("/new-task")
	public String newTask(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_NEW");
		return "about";
	}
	
	@GetMapping("/show-task")
	public String showTask(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("task", taskService.findTask(id));
		request.setAttribute("mode", "MODE_NEWE");
		return "about";
	}

	@GetMapping("/update-task")
	public String updateTask(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("task", taskService.findTask(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "about";
	}

	@RequestMapping("/delete-task")
	public String deleteTask(@RequestParam int id, HttpServletRequest request) {
		try{
		taskService.delete(id);
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		}catch (Exception e) {
			return "about";
		}
		return "about";
	}

	@PostMapping("/save-task")
	public String saveTask(@ModelAttribute Task task,BindingResult bindingResult,HttpServletRequest request) {
		task.setDateCreated(new Date());
		taskService.save(task);
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "about";
	}

}

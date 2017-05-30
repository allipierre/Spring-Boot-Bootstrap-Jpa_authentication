/**
 * 
 */
package bootsample.service;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import bootsample.dao.TaskRepository;
import bootsample.model.Task;

/**
 * @author yotti
 *
 */
@Service
@Transactional
public class TaskService {

	private final TaskRepository taskRepository;

	/**
	 * @param taskRepository
	 */
	public TaskService(TaskRepository taskRepository) {
		super();
		this.taskRepository = taskRepository;
	}

	public List<Task> findAll() {
		List<Task> tasks = new ArrayList<>();
		for (Task task : taskRepository.findAll()) {
			tasks.add(task);
		}
		return tasks;

	}
	
	public List<Task> findAll(Pageable p) {
		List<Task> tasks = new ArrayList<>();
		for (Task task : taskRepository.findAll()) {
			tasks.add(task);
		}
		return tasks;

	}

	public void save(Task task) {
		taskRepository.save(task);
	}

	public void delete(int id) {
		taskRepository.delete(id);
	}

	public Task findTask(int id) {
		return taskRepository.findOne(id);
	}

}

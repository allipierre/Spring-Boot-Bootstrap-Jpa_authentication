/**
 * 
 */
package bootsample.service;

import bootsample.model.User;

/**
 * @author yotti
 *
 */
public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
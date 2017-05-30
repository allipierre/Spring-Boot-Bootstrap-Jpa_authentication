/**
 * 
 */
package bootsample.dao;

/**
 * @author yotti
 *
 */

import org.springframework.data.jpa.repository.JpaRepository;

import bootsample.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
/**
 * 
 */
package bootsample.dao;

/**
 * @author yotti
 *
 */
import org.springframework.data.jpa.repository.JpaRepository;

import bootsample.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
}

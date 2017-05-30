/**
 * 
 */
package bootsample.service;

/**
 * @author yotti
 *
 */
public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}

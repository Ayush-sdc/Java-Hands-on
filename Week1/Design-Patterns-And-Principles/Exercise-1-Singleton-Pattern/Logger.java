public class Logger {

    // Creating a static variable to store the single instance
    private static Logger instance;

    // Private constructor so object cannot be created outside
    private Logger() {
        System.out.println("Logger object created.");
    }

    // Method to get the single instance
    public static Logger getInstance() {

        // Create object only if it doesn't exist
        if (instance == null) {
            instance = new Logger();
        }

        return instance;
    }

    // Simple logging method
    public void log(String message) {
        System.out.println("LOG: " + message);
    }
}
public class SingletonTest {

    public static void main(String[] args) {

        // Getting first Logger object
        Logger logger1 = Logger.getInstance();

        logger1.log("Application Started");

        // Getting second Logger object
        Logger logger2 = Logger.getInstance();

        logger2.log("User Logged In");

        // Checking whether both references point to same object
        if (logger1 == logger2) {
            System.out.println("Only one Logger instance exists.");
        } else {
            System.out.println("Multiple Logger instances exist.");
        }

        // Printing hashcodes to verify
        System.out.println("Logger1 HashCode: " + logger1.hashCode());
        System.out.println("Logger2 HashCode: " + logger2.hashCode());
    }
}
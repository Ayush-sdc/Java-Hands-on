import java.util.Arrays;
import java.util.Comparator;

public class SearchFunction {

    
    public static Product linearSearch(Product[] products, int productId) {

        for (int i = 0; i < products.length; i++) {

            if (products[i].productId == productId) {
                return products[i];
            }

        }

        return null;
    }

    
    public static Product binarySearch(Product[] products, int productId) {

        int left = 0;
        int right = products.length - 1;

        while (left <= right) {

            int mid = (left + right) / 2;

            if (products[mid].productId == productId) {
                return products[mid];
            }

            if (products[mid].productId < productId) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }

        }

        return null;
    }

    public static void main(String[] args) {

        Product[] products = {

                new Product(105, "Laptop", "Electronics"),
                new Product(102, "Shoes", "Fashion"),
                new Product(108, "Mobile", "Electronics"),
                new Product(101, "Watch", "Accessories"),
                new Product(110, "Keyboard", "Electronics")

        };

        System.out.println("------ Linear Search ------");

        Product result1 = linearSearch(products, 108);

        if (result1 != null) {
            result1.display();
        } else {
            System.out.println("Product not found.");
        }

        Arrays.sort(products, Comparator.comparingInt(p -> p.productId));

        System.out.println("------ Binary Search ------");

        Product result2 = binarySearch(products, 108);

        if (result2 != null) {
            result2.display();
        } else {
            System.out.println("Product not found.");
        }

        System.out.println("Time Complexity");
        System.out.println("Linear Search : O(n)");
        System.out.println("Binary Search : O(log n)");
    }
}
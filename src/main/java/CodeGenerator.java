
import java.util.Random;

public class CodeGenerator {
    public static String getcode(int len)
    {
       
        String Capital_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String Small_chars = "abcdefghijklmnopqrstuvwxyz";
        String numbers = "0123456789";
        String values = Capital_chars + Small_chars +
                        numbers;
 
        // Using random method
        Random rndm_method = new Random();
 
        String ppassword="";
 
        for (int i = 0; i < len; i++)
        {
            // Use of charAt() method : to get character value
            // Use of nextInt() as it is scanning the value as int
            ppassword+=values.charAt(rndm_method.nextInt(values.length()));
            
 
        }
        
        return ppassword;
    }
}

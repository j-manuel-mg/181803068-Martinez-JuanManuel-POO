
public class Excepcion {

    public static void main(String[] args) {

        int numerador;
        int denominador;
        float division;

        numerador = 20;
        denominador = 0;

        System.out.println("Antes de la division.");

        try {
            
            division = numerador / denominador;

        } catch (Exception e) {
            
            System.out.println("Error: " + e);
            
            System.out.println(e.getMessage());
        }

        System.out.println("Despues de la division ");
    }

}

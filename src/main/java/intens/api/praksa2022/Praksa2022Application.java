package intens.api.praksa2022;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Praksa2022Application {

	public static void main(String[] args) {
		// Added log for testing pull requests
		System.out.println("Revision 1");
		SpringApplication.run(Praksa2022Application.class, args);
	}

}

package util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class GeneradorPassword {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
			String password = "alexis";
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			System.out.println(passwordEncoder.encode(password));
			
			boolean respueta = passwordEncoder.matches("prado", "$2a$10$vDkP4qAYle1H9M2aCuE5J.S5ZI7Ze9/UZA.6W6TszDQXWGzGEre/W");
			
			System.out.println("Respuesta: " + respueta);
	}

}

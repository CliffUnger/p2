package it.unisa.control;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class PasswordHashing {
    
    private static final int SALT_LENGTH = 16; // Lunghezza del salt in byte
    
    public static String hashPassword(String password) {
        try {
            // Genera un salt casuale
            SecureRandom random = new SecureRandom();
            byte[] salt = new byte[SALT_LENGTH];
            random.nextBytes(salt);
            
            // Aggiungi il salt alla password e calcola l'hash
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(salt);
            byte[] hashedPassword = md.digest(password.getBytes());
            
            // Converte l'hash e il salt in una stringa esadecimale
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedPassword) {
                sb.append(String.format("%02x", b));
            }
            sb.append(":");
            for (byte b : salt) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            // Gestione dell'errore
            e.printStackTrace();
            return null;
        }
    }
}
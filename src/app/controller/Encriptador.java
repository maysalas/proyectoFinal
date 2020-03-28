package app.controller;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class Encriptador {
    public static String encryptVal(String val) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(val.getBytes(StandardCharsets.UTF_8));
            byte byteData[] = md.digest();
            // convertir byte a hexadecimal
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }
            // ProjectLogger.log("encrypted value is==: " + sb.toString());
            return sb.toString();
        } catch (Exception e) {
            // ProjectLogger.log("Error while encrypting", e);
        }
        return "no se encriptó ni merga!";
    }
}

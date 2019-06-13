/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.sql.Blob;
import org.apache.commons.net.ftp.FTPClient;

/**
 *
 * @author java4
 */
public class Ftpcon {
    FTPClient client = new FTPClient();
    FileInputStream fis = null;
    boolean status;

public boolean upload(File file){
   try{
            client.connect("ftp.drivehq.com");
            client.login("manoj0802", "manoj0802");
            client.enterLocalPassiveMode();
             fis = new FileInputStream(file);
             status= client.storeFile(" /kk/"+file.getName(), fis);
             client.logout();
             fis.close();
    
}
catch(Exception e){
    System.out.println(e);
}
        if(status){
             System.out.println("success");
             return true;
        }
        else{
            System.out.println("failed");
            return false;
          
        }
    
} 


}


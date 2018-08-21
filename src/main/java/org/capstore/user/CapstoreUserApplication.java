package org.capstore.user;

import java.io.File;

import org.capstore.user.controller.UploadingController;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CapstoreUserApplication {

	public static void main(String[] args) {
		new File(UploadingController.uploadingdir).mkdirs();
		SpringApplication.run(CapstoreUserApplication.class, args);
	}
}

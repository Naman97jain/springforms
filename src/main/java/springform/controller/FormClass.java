package springform.controller;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import springform.model.FormData;

@Controller
public class FormClass {

	@RequestMapping(path = "/form")
	public String showForm() {
		return "showForm";
	}

	@RequestMapping(path = "/processForm", method = RequestMethod.POST, consumes = {"multipart/form-data"})
	public String processForm(@ModelAttribute FormData formData, 
			@RequestParam("file") CommonsMultipartFile file,
			Model model, HttpSession session) {
		System.out.println(formData);
		System.out.println("file handler");
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		System.out.println(file.getStorageDescription());
		System.out.println(file.getContentType());

		// saving file on server
		byte[] filedata = file.getBytes();

		String path = session.getServletContext().getRealPath("/") + file.getOriginalFilename();

		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(filedata);
			fos.close();
			model.addAttribute("msg", "Successfully uploaded file");
		} catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("msg", "Upload Error");
		}

		return "success";
	}
}

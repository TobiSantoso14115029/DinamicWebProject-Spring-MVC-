//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package springmvc.uas;

import java.util.HashMap;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import springmvc.uas.domain.Mahasiswa;

@Controller
public class HelloController {
	Map<Long, Mahasiswa> mahasiswaMap = new HashMap();

	public HelloController() {
	}

	@RequestMapping({"/hello"})
	public ModelAndView hello() {
		return new ModelAndView("welcome", "message", "Welcome to Spring MVC using Dynamic Web Project!!!");
	}

	@RequestMapping(
			value = {"/formMahasiswa"},
			method = {RequestMethod.GET}
	)
	public ModelAndView form() {
		return new ModelAndView("mahasiswa", "mahasiswa", new Mahasiswa());
	}

	@RequestMapping(
			value = {"/addMahasiswa"},
			method = {RequestMethod.POST}
	)
	public String submit(@Valid @ModelAttribute("employee") Mahasiswa mahasiswa, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "error";
		} else {
			model.addAttribute("name", mahasiswa.getName());
			model.addAttribute("contactNumber", mahasiswa.getcontactNumber());
			model.addAttribute("id", mahasiswa.getid());
			this.mahasiswaMap.put(mahasiswa.getid(), mahasiswa);
			return "mahasiswaView";
		}
	}
}

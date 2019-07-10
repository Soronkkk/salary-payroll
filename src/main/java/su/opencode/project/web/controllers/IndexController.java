package su.opencode.project.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class IndexController {

    @RequestMapping(method = RequestMethod.GET, value = "/pages/index")
    public String index() {
        return "index";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/index")
    public String dummy() {
        return "redirect:/pages/index";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/")
    public String empty() {
        return "index.html";
    }
}
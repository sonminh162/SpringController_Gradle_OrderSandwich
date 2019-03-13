package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OrderController {

    @GetMapping("/order")
    public String getMenu(){
        return "index";
    }

    @RequestMapping("/save")
    public String save(@RequestParam(value="condiment", defaultValue="nothing") String[] condiment, Model model){
        model.addAttribute("condiment",condiment);
        return "success";
    }
}

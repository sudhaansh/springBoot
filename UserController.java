package com.example.demo;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/*import org.springframework.web.bind.annotation.RequestParam;*/
import org.springframework.web.servlet.ModelAndView;
@Controller  
public class UserController {  
    @Autowired  
    private UserService userService;   
    @RequestMapping("/user-list")  
    public ModelAndView getAllUser(){  
    	   ModelAndView model2 = new ModelAndView();
    	   model2.addObject("user_list", userService.getAllUsers());
           model2.setViewName("user_list");        
           return model2; 
    }
    @RequestMapping(value="/", method=RequestMethod.GET)  
    public String index(){  
    	    	return "user_form";
    }  
    @RequestMapping(value="/add-user", method=RequestMethod.POST)  
    public ModelAndView addUser(@ModelAttribute("userform") UserRecord userRecord){  
    	ModelAndView model = new ModelAndView();
        userService.addUser(userRecord); 
        model.addObject("userRecord",userRecord);
        model.setViewName("add_user");
        return model;
    } 
    @RequestMapping(value="/delete_user/{id}", method=RequestMethod.GET)  
    public ModelAndView deleteUser(@PathVariable String id){  
    	userService.delete(id);
    	return new ModelAndView("redirect:/user-list/");
    }  
    @RequestMapping(value="/update_user/{id}", method=RequestMethod.GET)  
    public ModelAndView updateUser(@PathVariable String id){  
    	ModelAndView model3 = new ModelAndView();
    	Optional<UserRecord> userRecord=userService.getUser(id);
    	model3.addObject("userform",userRecord);
    	model3.setViewName("user_update");
    	return model3;
    }  
    @RequestMapping(value="/user-login", method=RequestMethod.GET)
    public String userLogin(){
    	return "user_login";
    }
    @RequestMapping(value="/user-home", method=RequestMethod.POST)  
    public ModelAndView userHome(@ModelAttribute ("userform") UserRecord userRecord1){  
    	ModelAndView model5 = new ModelAndView();	
    	Optional<UserRecord> user =userService.getUser(userRecord1.getId());
    	model5.addObject("user",user.get());
        model5.setViewName("user_home");
        return model5;
    }  
}  

package com.example.demo;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service  
	public class UserService {  
	   @Autowired  
	   private UserRepository userRepository;  
	   public List<UserRecord> getAllUsers(){  
	       List<UserRecord>userRecords = new ArrayList<>();  
	       userRepository.findAll().forEach(userRecords::add);  
	       return userRecords;  
	    }  
	
	    public void addUser(UserRecord userRecord){  
	        userRepository.save(userRecord);  
	   }  
	   
	    public void delete(String id){  
	        userRepository.deleteById(id);  
	    } 
	    
	    public Optional<UserRecord> getUser(String id){  
	        return userRepository.findById(id);  
	    }
	 
	}  

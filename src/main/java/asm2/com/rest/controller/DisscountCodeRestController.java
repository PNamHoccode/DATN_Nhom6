package asm2.com.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import asm2.com.entity.DiscountCode;
import asm2.com.service.DisscountService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/discount-codes")
public class DisscountCodeRestController {
	  @Autowired
	    private DisscountService discountCodeService;  // Inject the service layer

	    // Get all discount codes
	    @GetMapping
	    public ResponseEntity<List<DiscountCode>> getAllDiscountCodes() {
	        List<DiscountCode> discountCodes = discountCodeService.getAllDiscountCodes();
	        return new ResponseEntity<>(discountCodes, HttpStatus.OK);
	    }

	    // Get a discount code by ID
	    @GetMapping("/{id}")
	    public ResponseEntity<DiscountCode> getDiscountCodeById(@PathVariable Integer id) {
	        DiscountCode discountCode = discountCodeService.getDiscountCodeById(id);
	        if (discountCode != null) {
	            return new ResponseEntity<>(discountCode, HttpStatus.OK);
	        } else {
	            return new ResponseEntity<>(HttpStatus.NOT_FOUND);  // If not found, return 404
	        }
	    }

	    // Create a new discount code
	    @PostMapping
	    public ResponseEntity<DiscountCode> createDiscountCode(@RequestBody DiscountCode discountCode) {
	        DiscountCode createdDiscountCode = discountCodeService.createDiscountCode(discountCode);
	        return new ResponseEntity<>(createdDiscountCode, HttpStatus.CREATED);  // Return 201 created status
	    }

	    // Update an existing discount code
	    @PutMapping("/{id}")
	    public ResponseEntity<DiscountCode> updateDiscountCode(@PathVariable Integer id, @RequestBody DiscountCode discountCode) {
	        DiscountCode updatedDiscountCode = discountCodeService.updateDiscountCode(id, discountCode);
	        if (updatedDiscountCode != null) {
	            return new ResponseEntity<>(updatedDiscountCode, HttpStatus.OK);
	        } else {
	            return new ResponseEntity<>(HttpStatus.NOT_FOUND);  // If not found, return 404
	        }
	    }

	    // Delete a discount code by ID
	    @DeleteMapping("/{id}")
	    public ResponseEntity<Void> deleteDiscountCode(@PathVariable Integer id) {
	        discountCodeService.deleteDiscountCode(id);
	        return new ResponseEntity<>(HttpStatus.NO_CONTENT);  // Return 204 No Content after successful deletion
	    }
}

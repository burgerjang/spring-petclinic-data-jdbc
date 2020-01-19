package org.springframework.samples.petclinic.health;
  
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PetClinicHealthCheck {
    @GetMapping("/health")
    public ResponseEntity<HttpStatus> healthCehck() {
        return new ResponseEntity<> (null, HttpStatus.OK);
    }
}
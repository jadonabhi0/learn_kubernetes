package com.kubernities.kubernaties.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@RequestMapping
@Controller

public class KubernatiesController {

    private static final Logger logger = LoggerFactory.getLogger(KubernatiesController.class);

    @GetMapping("/get")
    public ResponseEntity<Map<String, String>> getKube() {
        logger.info("Receive request for getKube");
        return ResponseEntity.ok(Map.of("message", "Hello World! Learning Kubernetes !"));
    }

}

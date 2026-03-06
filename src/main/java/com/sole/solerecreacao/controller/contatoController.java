package com.sole.solerecreacao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class contatoController {

    @GetMapping("/contato")
    public String contato() {
        return "contato";
    }
}
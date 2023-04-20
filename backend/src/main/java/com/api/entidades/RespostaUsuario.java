package com.api.entidades;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class RespostaUsuario {
    
    private String mensagem;
}

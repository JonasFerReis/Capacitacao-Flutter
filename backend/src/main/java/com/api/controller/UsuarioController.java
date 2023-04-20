package com.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.api.entidades.Usuario;
import com.api.sevico.UsuarioServiço;

@RestController
public class UsuarioController {

    @Autowired
    private UsuarioServiço ps;

    @GetMapping("/listar")
    public Iterable<Usuario> listar(){
        return ps.listar();
    } 

    @GetMapping("/")
    public String rota(){
        return "API de Usuarios funcionando!";
    }

    @PostMapping("/cadastrar")
    public ResponseEntity<?>cadastrar(@RequestBody Usuario u){
        return ps.cadastrar(u);
    }

    @PutMapping("/editar")
    public ResponseEntity<?>alterar(@RequestBody Usuario u){
        return ps.alterar(u);
    }

    @DeleteMapping("/deletar/{id}")
    public ResponseEntity<?> deletar(@PathVariable long id){
        return ps.deletar(id);
    }
}

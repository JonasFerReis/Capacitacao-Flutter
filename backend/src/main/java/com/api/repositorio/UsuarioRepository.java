package com.api.repositorio;

import org.springframework.data.repository.CrudRepository;

import com.api.entidades.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario,Long>{
    
}

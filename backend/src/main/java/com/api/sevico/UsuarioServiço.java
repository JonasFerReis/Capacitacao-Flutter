package com.api.sevico;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.api.entidades.Usuario;
import com.api.entidades.RespostaUsuario;
import com.api.repositorio.UsuarioRepository;

@Service
public class UsuarioServiço {
    @Autowired
    private UsuarioRepository ur;

    @Autowired
    private RespostaUsuario r;

    public Iterable<Usuario> listar(){
        return ur.findAll();
    }

    public ResponseEntity<?> cadastrar(Usuario u){
        if(u.getNome().equals("")){
            r.setMensagem("O nome do usuario é obrigatorio!");
            return new ResponseEntity<RespostaUsuario>(r,HttpStatus.BAD_REQUEST);
        }else if(u.getEmail().equals("")){
            r.setMensagem("O Email do usuario é obrigatorio!");
            return new ResponseEntity<RespostaUsuario>(r,HttpStatus.BAD_REQUEST);
        }else if(u.getSenha().equals("")){
            r.setMensagem("A senha do usuario é obrigatorio!");
            return new ResponseEntity<RespostaUsuario>(r,HttpStatus.BAD_REQUEST);
        }else{
            return new ResponseEntity<Usuario>(ur.save(u), HttpStatus.CREATED);
        }
    }

    public ResponseEntity<?> alterar(Usuario u){
        if(u.getNome().equals("")){
            r.setMensagem("O nome do usuario é obrigatorio!");
            return new ResponseEntity<RespostaUsuario>(r,HttpStatus.BAD_REQUEST);
        }else if(u.getEmail().equals("")){
            r.setMensagem("O Email do usuario é obrigatorio!");
            return new ResponseEntity<RespostaUsuario>(r,HttpStatus.BAD_REQUEST);
        }else if(u.getSenha().equals("")){
            r.setMensagem("A senha do usuario é obrigatorio!");
            return new ResponseEntity<RespostaUsuario>(r,HttpStatus.BAD_REQUEST);
        }else{
            return new ResponseEntity<Usuario>(ur.save(u), HttpStatus.OK);
        }
    }

    public ResponseEntity<?> deletar(long id){
        ur.deleteById(id);
        r.setMensagem("O usuario foi removido com sucesso!");
        return new ResponseEntity<RespostaUsuario>(r, HttpStatus.OK);
    }
}

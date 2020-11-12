/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Cliente;

/**
 *
 * @author lucas
 */
public class DaoCliente {

    private final Connection conecction;

    public DaoCliente(Connection conecction) {
        this.conecction = conecction;
    }
    
    

    public void salvar(Cliente cliente) throws SQLException {

        String sql = "INSERT INTO cliente(cpf,nome,endereco,n,bairro,cep,celular,senha) values(?,?,?,?,?,?,?,?);";

        PreparedStatement statement = conecction.prepareStatement(sql);

        statement.setString(1, cliente.getCpf());
        statement.setString(2, cliente.getNome());
        statement.setString(3, cliente.getEndereco());
        statement.setInt(4, cliente.getN());
        statement.setString(5, cliente.getBairro());
        statement.setString(6, cliente.getCep());
        statement.setString(7, cliente.getCelular());
        statement.setString(8, cliente.getSenha());

        statement.execute();

    }

}

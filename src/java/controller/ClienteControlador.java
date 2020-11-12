/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import model.Cliente;

public class ClienteControlador {

    private Cliente cliente;

    public ClienteControlador(Cliente usr) {
        cliente = usr;
    }

    public boolean verificaUsuario() {
        if (cliente.getCpf() != null && cliente.getSenha() != null) {
            try {

                Connection con = new Conexao().getConnection();
                String strsql = "SELECT * FROM cliente WHERE cpf = ? and senha = ?;";
                PreparedStatement stmt = con.prepareStatement(strsql);
                stmt.setString(1, cliente.getCpf());
                stmt.setString(2, cliente.getSenha());
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) //Existe o usuário no banco de dados
                {
                    rs.close();
                    stmt.close();
                    return true;
                } // Não existe o usuário
                rs.close();
                stmt.close();
                return false;
            } catch (SQLException e) {
                return false;
            }

        }
        return false;

    }

}

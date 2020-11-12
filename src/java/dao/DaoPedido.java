/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Pedido;
import model.Produto;

/**
 *
 * @author lucas
 */
public class DaoPedido {

    private Connection conecction;

    public DaoPedido(Connection conecction) {
        this.conecction = conecction;
    }

    public void salvar(Pedido pedido) throws SQLException {

        String sql = "INSERT INTO Pedido(id_pedido,cpf,data_pedido,quantidade,valor_total) values(?,?,?,?,?);";

        PreparedStatement statement = conecction.prepareStatement(sql);

        statement.setInt(1, pedido.getIdPedido());
        statement.setString(2, pedido.getCpf().getCpf());
        statement.setString(3, pedido.getDataPedido());
        statement.setDouble(4, pedido.getQuantidade());
        statement.setDouble(5, pedido.getValorTotal());

        statement.execute();
        statement.close();

    }

}

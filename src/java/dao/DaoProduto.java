/*
 *DaoProduto
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Produto;

/**
 *
 * @author lucas
 */
public class DaoProduto {

    private Connection conecction;

    public DaoProduto(Connection conecction) {
        this.conecction = conecction;
    }

    public void salvar(Produto produto) throws SQLException {

        String sql = "INSERT INTO Produto(tipo,nome,valor_uni) values(?,?,?);";

        PreparedStatement statement = conecction.prepareStatement(sql);
        
        
        statement.setString(1, produto.getTipo());
        statement.setString(2, produto.getNome());
        statement.setDouble(3, produto.getValorUni());

        statement.execute();
        statement.close();

    }

    public void delete(Produto produto) throws SQLException {

        String sql = "DELETE FROM Produto where id_produto = ?";

        PreparedStatement statement = conecction.prepareStatement(sql);

        statement.setInt(1, produto.getIdProduto());

        statement.execute();
        statement.close();

    }

    public void buscar(Produto produto) throws SQLException {

        String sql = "SELECT * FROM Produto where id_produto = ?";

        PreparedStatement statement = conecction.prepareStatement(sql);

        statement.setInt(1, produto.getIdProduto());

        statement.execute();
        statement.close();

    }

    public void update(Produto produto) throws SQLException {

        String sql = "UPDATE Produto set tipo = ?,  nome = ?, valor_uni = ? where id_produto = ?";

        PreparedStatement statement = conecction.prepareStatement(sql);

        statement.setString(1, produto.getTipo());
        statement.setString(2, produto.getNome());
        statement.setDouble(3, produto.getValorUni());
        statement.setInt(4, produto.getIdProduto());

        statement.executeUpdate();
        statement.close();

    }

    private ArrayList<Produto> pesquisa(PreparedStatement statement) throws SQLException {
        ArrayList<Produto> ListaProduto = new ArrayList<Produto>();

        statement.execute();
        ResultSet resultSet = statement.getResultSet();

        while (resultSet.next()) {

            Produto listaProduto = new Produto();

            listaProduto.setIdProduto(resultSet.getInt("id_produto"));
            listaProduto.setNome(resultSet.getString("nome"));
            listaProduto.setTipo(resultSet.getString("tipo"));
            listaProduto.setValorUni(resultSet.getDouble("valor_uni"));

            ListaProduto.add(listaProduto);

        }

        return ListaProduto;
    }

    public ArrayList<Produto> selectAllProduto() throws SQLException {
        String sql = "select * from Produto";

        PreparedStatement statement = conecction.prepareStatement(sql);

        return pesquisa(statement);

    }

    public ArrayList<Produto> selectAllProdutoPao() throws SQLException {
        String sql = "select id_produto, nome, valor_uni, tipo from produto where tipo = 'Pao';";

        PreparedStatement statement = conecction.prepareStatement(sql);

        return pesquisa(statement);

    }
   

    public ArrayList<Produto> selectAllProdutoCarne() throws SQLException {
        String sql = "select id_produto, nome, valor_uni, tipo from produto where tipo = 'Carne';";

        PreparedStatement statement = conecction.prepareStatement(sql);

        return pesquisa(statement);

    }

    public ArrayList<Produto> selectAllProdutoSalada() throws SQLException {
        String sql = "select id_produto, nome, valor_uni, tipo from produto where tipo = 'Salada';";

        PreparedStatement statement = conecction.prepareStatement(sql);

        return pesquisa(statement);

    }

    public ArrayList<Produto> selectAllProdutoMolho() throws SQLException {
        String sql = "select id_produto, nome, valor_uni, tipo from produto where tipo = 'Molho';";

        PreparedStatement statement = conecction.prepareStatement(sql);

        return pesquisa(statement);

    }

   

}

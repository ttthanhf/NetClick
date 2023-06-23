/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.MovieDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.DBUtils;

/**
 *
 * @author Admin
 */
public class MovieDAO {

    public ArrayList<MovieDTO> getAll() {
        ArrayList<MovieDTO> movies = new ArrayList<>();

        String sql = "SELECT * FROM movie";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String description = rs.getString("description");
                String thumbnail = rs.getString("thumbnail");
                String movieUrl = rs.getString("movie_url");
                Date release = rs.getDate("release");
                String director = rs.getString("director");
                int rating = rs.getInt("rating");
                ArrayList tags = new ArrayList();
                MovieDTO movie = new MovieDTO(id, title, description, thumbnail, movieUrl, release, director, rating, director);
                movies.add(movie);
            }
            return movies;
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public MovieDTO getById(int id) {
        String sql = "SELECT * FROM movie WHERE id = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String title = rs.getString("title");
                String description = rs.getString("description");
                String thumbnail = rs.getString("thumbnail");
                String movieUrl = rs.getString("movie_url");
                Date release = rs.getDate("release");
                String director = rs.getString("director");
                int rating = rs.getInt("rating");
                // ArrayList tags = new ArrayList();
                MovieDTO movie = new MovieDTO(id, title, description, thumbnail, movieUrl, release, director, rating, director);
                return movie;
            }
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<MovieDTO> getByTag(String tag) {
        ArrayList<MovieDTO> movies = new ArrayList<>();

        String sql = "SELECT * FROM movie m, tag t, MovieTag mt "
                + "where m.id = mt.movie_id and t.id = mt.tag_id and tag_name = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, tag);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString("title");
                String description = rs.getString("description");
                String thumbnail = rs.getString("thumbnail");
                String movieUrl = rs.getString("movie_url");
                Date release = rs.getDate("release");
                String director = rs.getString("director");
                int rating = rs.getInt("rating");
                // ArrayList tags = new ArrayList();
                MovieDTO movie = new MovieDTO(id, title, description, thumbnail, movieUrl, release, director, rating, tag);
                movies.add(movie);
            }
            return movies;
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public ArrayList<MovieDTO> getRelatedByTag(int id, String tag) {
        // TODO: Add this function
        return null;
    }

    public ArrayList<String> getAllTag() {
        ArrayList<String> tags = new ArrayList<>();

        String sql = "SELECT tag_name FROM Tag";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String tag = rs.getString(1);
                tags.add(tag);
            }
            return tags;
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public void delete(int id) {
        // TODO: Add delete function
    }

    public void add(MovieDTO movie) {
        ArrayList<String> tags = new ArrayList<>();

        String sql = "INSERT INTO Movie (title, description, thumbnail, movie_url, release, director, rating)\n" +
                        "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, movie.getTitle());
            ps.setString(2, movie.getDescription());
            ps.setString(3, movie.getThumbnail());
            ps.setString(4, movie.getMovie_url());
            java.util.Date releaseDate = movie.getRelease();
            java.sql.Date sqlReleaseDate = new java.sql.Date(releaseDate.getTime());
            ps.setDate(5, sqlReleaseDate);
            ps.setString(6, movie.getDirector());
            ps.setInt(7, movie.getRating());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(MovieDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void update(MovieDTO movie) {
        // TODO: Add update function
    }
}

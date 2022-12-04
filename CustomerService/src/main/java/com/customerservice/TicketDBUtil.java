package com.customerservice;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class TicketDBUtil {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;  
    //Statement cannot accept input parameters
    //PreparedStatement can accept input parameters
    //CallableStatement statements are mainly used to access database procedures
    private static ResultSet rs = null;
    //ResultSet object maintains a cursor that points to the current row in the result set

    //To Insert
    public static boolean insertticket(String subject, String priority, String category, String issue) {

        boolean isSuccess = false;


        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "insert into ticketdb values (0,'"+subject+"','"+priority+"','"+category+"','"+issue+"')";
            int rs =stmt.executeUpdate(sql);
            //execute - any kind of sql statements
            //executeUpdate - returns an int value which represents the number of rows affected
            //executeQuery - retrieve data from database (only for SELECT query)

            if(rs > 0) {
                isSuccess = true;
            }else {
                isSuccess = false;
            }

        }
        catch(Exception e) {
            e.printStackTrace();
        }
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) { 
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) { 
                    e.printStackTrace();
                }
            }
        }


        return isSuccess;


    }	

    public static boolean updateTicket(String id, String issue) {

        try {

            con = DBConnect.getConnection();
            stmt = con.createStatement();
            System.out.print(id);
            String sql = "update ticketdb set issue = '"+issue+"' where ticketID = '"+id+"'";
            int rs =stmt.executeUpdate(sql);

            if(rs > 0) {
                isSuccess = true;
            }else {
                isSuccess = false;
            }


        }
        catch(Exception e) {
            e.printStackTrace();
        }
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) { 
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) { 
                    e.printStackTrace();
                }
            }
        }

        return isSuccess;
    }

    public static boolean deleteTicket(String id) {

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            System.out.print(id);
            String sql = "delete from ticketdb where ticketID = '"+id+"'";
            int rs =stmt.executeUpdate(sql);

            if(rs > 0) {
                isSuccess = true;
            }else {
                isSuccess = false;
            }

        }
        catch(Exception e) {
            e.printStackTrace();
        }
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) { 
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) { 
                    e.printStackTrace();
                }
            }
        }

        return isSuccess;
    }

}

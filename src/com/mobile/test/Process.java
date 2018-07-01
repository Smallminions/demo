package com.mobile.test;import com.mobile.model.Ed;import com.mobile.util.DaoFactory;import com.mobile.util.DatabaseBean;import java.sql.*;/** * ���Դ洢���̵ĵ��� */public class Process {    public static void main(String[] args) throws SQLException {        if(DaoFactory.getDeviceDao().deleteDevice("85204"))            System.out.println("11111");        else            System.out.println("22222");    }//    ����call getEmployeeCount(?)    public static void test1() throws SQLException {        Connection con = null;        CallableStatement sta = null;        ResultSet res = null;        String sql = "{call getEmployeeCount(?)}"; //���ô洢����        try {            con = DatabaseBean.getConnection();            sta = con.prepareCall(sql);            sta.registerOutParameter(1, Types.INTEGER);            sta.execute();            System.out.println(sta.getInt(1));        }catch(SQLException e){            e.printStackTrace();        }finally {            sta.close();            con.close();        }    }//    ����call getEmployees(?,?)    public static void test2(){        Connection con = null;        CallableStatement sta = null;        ResultSet res = null;        String sql = "{call getEmployees(?,?)}";        try {            con = DatabaseBean.getConnection();            sta = con.prepareCall(sql);            sta.setInt(1,0);            sta.setInt(2,4);            sta.execute();            res = sta.getResultSet();            while(res.next()){                System.out.println(res.getString(1)+":"+res.getInt(2));            }        }catch (SQLException e){            e.printStackTrace();        }finally {            DatabaseBean.close(res,sta,con);        }    }//    ���� call getPwd(?,?)    public static void test3() throws SQLException {        Connection con = null;        CallableStatement sta = null;        ResultSet res = null;        String sql = "{call getPwd(?,?)}";        try {            con = DatabaseBean.getConnection();            sta = con.prepareCall(sql);            sta.setString(1,"201500788");            sta.registerOutParameter(2,Types.VARCHAR);            res = sta.executeQuery();            System.out.println(res.getString(0));        }catch (SQLException e){            e.printStackTrace();        }finally {            sta.close();            con.close();        }    }//    ����findEmployee(?)�洢����    public static void test4(){        Connection con = null;        CallableStatement sta =null;        ResultSet res = null;        try{        String sql  = "{call findEmployee(?)}";        con = DatabaseBean.getConnection();        sta = con.prepareCall(sql);        sta.setString(1,"201500799");        res = sta.executeQuery();        while (res.next()){            for (int i = 1; i <12 ; i++) {                System.out.println(res.getString(i));            }        }        }catch (SQLException e){            e.printStackTrace();        }finally {            DatabaseBean.close(res,sta,con);        }    }    public static void test5(){        Connection con = null;        CallableStatement sta =null;        ResultSet res = null;        try{            String sql = "{call getDeviceKind()}";            con = DatabaseBean.getConnection();            sta = con.prepareCall(sql);            res = sta.executeQuery();            System.out.println(res.toString().endsWith(""));        }catch (SQLException e){            e.printStackTrace();        }finally {            DatabaseBean.close(res,sta,con);        }    }}
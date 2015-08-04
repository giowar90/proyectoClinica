/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloClinica;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author GIO
 */
@WebServlet(name = "controlAsistente", urlPatterns = {"/controlAsistente"})
public class controlAsistente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("id").matches("1")) {
            AltaAsistente(request, response);
        }
        if (request.getParameter("id").matches("2")) {
            BajasAsistente(request, response);
        }
        if (request.getParameter("id").matches("3")) {
            ModAsistente(request, response);
        }
    }
   
    protected void AltaAsistente(HttpServletRequest request, HttpServletResponse response) {
        try {
            int opc = 1;
            String nom = request.getParameter("nom");
            String appat = request.getParameter("appat");
            String apmat = request.getParameter("apamat");
            String dir = request.getParameter("dir");
            int tel = Integer.parseInt(request.getParameter("tel"));
            String sex = request.getParameter("sex");
            String rfcs = request.getParameter("rfcs");
            String nomus = new modeloClinica().nomUsuario(nom, appat, apmat);
            String passw = new modeloClinica().nomUsuario(nom, appat, apmat);
            String ced = request.getParameter("ced");
            int id = 0;
            System.out.println(nom + appat + apmat + dir + tel + sex + rfcs + nomus + passw + ced);
            new modeloClinica().abcmAsistente(opc,nom, appat,apmat,dir,tel,sex,rfcs,nomus,passw,ced,id);
            System.out.println("Ingrediente registrado");
            response.sendRedirect("principalAdmin.jsp?tipo=3&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void BajasAsistente(HttpServletRequest request, HttpServletResponse response) {
        int opc = 2;
        String nom = "";
        String appat = ""; 
        String apmat = "";
        String dir = "";
        int tel = 0; 
        String sex = "";
        String rfcs = "";
        String stat = "";
        String nomus = "";
        String passw = "";
        String ced = "";
        int id = Integer.parseInt(request.getParameter("idEli"));
        new modeloClinica().abcmAsistente(opc,nom,appat,apmat,dir,tel,sex,rfcs,nomus,passw,ced,id);
        System.out.println("Ingrediente registrado");
        try {
            response.sendRedirect("principalAdmin.jsp?tipo=3&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void ModAsistente(HttpServletRequest request, HttpServletResponse response) {
        int opc = 3;
        String nom = request.getParameter("nom");
        String appat = request.getParameter("appat");
        String apmat = request.getParameter("apamat");
        String dir = request.getParameter("dir");
        int tel = Integer.parseInt(request.getParameter("tel"));
        String sex = request.getParameter("sex");
        String rfcs = request.getParameter("rfcs");
        String nomus = "";
        String passw = "";
        String ced = request.getParameter("ced");
        int id = Integer.parseInt(request.getParameter("idAsi"));
        new modeloClinica().abcmAsistente(opc,nom,appat,apmat,dir,tel,sex,rfcs,nomus,passw,ced,id);
        System.out.println("Ingrediente registrado");
        try {
            response.sendRedirect("principalAdmin.jsp?tipo=3&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

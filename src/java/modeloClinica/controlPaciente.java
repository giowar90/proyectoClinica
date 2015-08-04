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
@WebServlet(name = "controlPaciente", urlPatterns = {"/controlPaciente"})
public class controlPaciente extends HttpServlet {

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
            AltaPaciente(request, response);
        }
        if (request.getParameter("id").matches("2")) {
            BajasPaciente(request, response);
        }
        if (request.getParameter("id").matches("3")) {
            ModPaciente(request, response);
        }
    }
   
    protected void AltaPaciente(HttpServletRequest request, HttpServletResponse response) {
        int opc = 1;
        String nom = request.getParameter("nom");
        String appat = request.getParameter("appat");
        String apmat = request.getParameter("apmat");
        String sex = request.getParameter("sex"); 
        String dir = request.getParameter("dir"); 
        int tel = Integer.parseInt(request.getParameter("tel"));
        String est = request.getParameter("est");
        String mun = request.getParameter("mun");
        String loc = request.getParameter("loc"); 
        String ocup = request.getParameter("ocup");
        String nomus = ""; 
        String passw = ""; 
        String pernom = request.getParameter("pernom"); 
        String perpat = request.getParameter("perpat"); 
        String permat = request.getParameter("permat");
        String perdir = request.getParameter("perdir"); 
        int percasa = Integer.parseInt(request.getParameter("percasa"));
        int permovil = Integer.parseInt(request.getParameter("permovil"));
        int id = 0;
        new modeloClinica().abcmPaciente(opc, nom, appat, apmat, sex, dir, tel, est, mun, loc, ocup,nomus, passw, pernom, perpat, permat, perdir, percasa, permovil, id);
        try {
            System.out.println("Ingrediente registrado");
            response.sendRedirect("principalAdmin.jsp?tipo=4&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void BajasPaciente(HttpServletRequest request, HttpServletResponse response) {
        int opc = 2;
        String nom = "";
        String appat = "";
        String apmat = "";
        String sex = ""; 
        String dir = ""; 
        int tel = 0;
        String est = "";
        String mun = "";
        String loc = "";
        String ocup = "";
        String nomus = ""; 
        String passw = ""; 
        String pernom = ""; 
        String perpat = "";
        String permat = "";
        String perdir = "";
        int percasa = 0;
        int permovil = 0;
        int id = Integer.parseInt(request.getParameter("idEli"));
        new modeloClinica().abcmPaciente(opc, nom, appat, apmat, sex, dir, tel, est, mun, loc, ocup,nomus, passw, pernom, perpat, permat, perdir, percasa, permovil, id);
        System.out.println("Ingrediente registrado");
        try {
            response.sendRedirect("principalAdmin.jsp?tipo=4&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void ModPaciente(HttpServletRequest request, HttpServletResponse response) {
        int opc = 3;
        String nom = request.getParameter("nom");
        String appat = request.getParameter("appat");
        String apmat = request.getParameter("apmat");
        String sex = request.getParameter("sex"); 
        String dir = request.getParameter("dir"); 
        int tel = Integer.parseInt(request.getParameter("tel"));
        String est = request.getParameter("est");
        String mun = request.getParameter("mun");
        String loc = request.getParameter("loc"); 
        String ocup = request.getParameter("ocup");
        String nomus = ""; 
        String passw = ""; 
        String pernom = request.getParameter("pernom"); 
        String perpat = request.getParameter("perpat"); 
        String permat = request.getParameter("permat");
        String perdir = request.getParameter("perdir"); 
        int percasa = Integer.parseInt(request.getParameter("percasa"));
        int permovil = Integer.parseInt(request.getParameter("permovil"));
        int id = Integer.parseInt(request.getParameter("idMod"));
        new modeloClinica().abcmPaciente(opc, nom, appat, apmat, sex, dir, tel, est, mun, loc, ocup,nomus, passw, pernom, perpat, permat, perdir, percasa, permovil, id);
        System.out.println("Ingrediente registrado");
        try {
            response.sendRedirect("principalAdmin.jsp?tipo=4&id=0");
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

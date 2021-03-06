/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloAsistente;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloClinica.modeloClinica;

/**
 *
 * @author GIO
 */
@WebServlet(name = "controlMedi", urlPatterns = {"/controlMedi"})
public class controlMedi extends HttpServlet {

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
            AltaMedico(request, response);
        }
        if (request.getParameter("id").matches("2")) {
            BajasMedico(request, response);
        }
        if (request.getParameter("id").matches("3")) {
            ModMedico(request, response);
        }
    }
   
    protected void AltaMedico(HttpServletRequest request, HttpServletResponse response) {
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
        int idEsp = Integer.parseInt(request.getParameter("idEsp"));
        int id = 0;
        System.out.println(nom + appat + apmat + dir + tel + sex + rfcs + nomus + passw + ced);
        new modeloClinica().abcmMedico(opc, nom, appat, apmat, dir, tel, sex, rfcs, nomus, passw, ced, idEsp, id);
        try {
            System.out.println("Ingrediente registrado");
            response.sendRedirect("principalAsis.jsp?tipo=2&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void BajasMedico(HttpServletRequest request, HttpServletResponse response) {
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
            response.sendRedirect("principalAsis.jsp?tipo=2&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void ModMedico(HttpServletRequest request, HttpServletResponse response) {
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
        int idEsp = Integer.parseInt(request.getParameter("idEsp"));
        int id = Integer.parseInt(request.getParameter("idMed"));
        System.out.println(nom + appat + apmat + dir + tel + sex + rfcs + nomus + passw + ced);
        new modeloClinica().abcmMedico(opc, nom, appat, apmat, dir, tel, sex, rfcs, nomus, passw, ced, idEsp, id);
        System.out.println("Ingrediente registrado");
        try {
            response.sendRedirect("principalAsis.jsp?tipo=2&id=0");
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

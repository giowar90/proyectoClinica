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
@WebServlet(name = "controlCitas", urlPatterns = {"/controlCitas"})
public class controlCitas extends HttpServlet {

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
            citaAsistente(request, response);
        }
        if (request.getParameter("id").matches("2")) {
            cancelarCita(request, response);
        }
        if (request.getParameter("id").matches("3")) {
            finalizarCita(request, response);
        }
    }
   
    protected void citaAsistente(HttpServletRequest request, HttpServletResponse response) {
        try {
            int opc = 1;
            String ho = request.getParameter("ho")+":00";
            String fec = request.getParameter("fec");
            int cos = 0;
            int idasi = new modeloClinica().consultaIdAsistente(request.getParameter("idasi"));
            int idmedico = Integer.parseInt(request.getParameter("idmedico"));
            int idpaciente = Integer.parseInt(request.getParameter("idpaciente"));
            int id = 0;
            new modeloClinica().crearCita(opc, ho, fec, cos, idasi, idmedico, idpaciente, id);
            System.out.println("Ingrediente registrado");
            response.sendRedirect("principalAsis.jsp?tipo=3&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void cancelarCita(HttpServletRequest request, HttpServletResponse response) {
        try {
            int opc = 3;
            String ho = "00:00:00";
            String fec = "2001-10-01";
            int cos = 0;
            int idasi= 0;
            int idmedico = 0;
            int idpaciente = 0;
            int id = Integer.parseInt(request.getParameter("idCancela"));
            new modeloClinica().crearCita(opc, ho, fec, cos, idasi, idmedico, idpaciente, id);
            System.out.println("Ingrediente registrado");
            response.sendRedirect("principalAsis.jsp?tipo=3&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void finalizarCita(HttpServletRequest request, HttpServletResponse response) {
        try {
            int opc = 4;
            String ho = "";
            String fec ="";
            int cos = 0;
            int idasi= 0;
            int idmedico = 0;
            int idpaciente = 0;
            int id = 0;
            new modeloClinica().crearCita(opc, ho, fec, cos, idasi, idmedico, idpaciente, id);
            System.out.println("Ingrediente registrado");
            response.sendRedirect("principalAsis.jsp?tipo=3&id=0");
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

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
@WebServlet(name = "controlConsulta", urlPatterns = {"/controlConsulta"})
public class controlConsulta extends HttpServlet {

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
            consulta(request, response);
        }
        if (request.getParameter("id").matches("2")) {
            receta(request, response);
        }
    }
    
    protected void consulta(HttpServletRequest request, HttpServletResponse response) {
        int opc = 4;
        int cos = Integer.parseInt(request.getParameter("costo"));
        String comentario = request.getParameter("com");
        int altura = Integer.parseInt(request.getParameter("altura"));
        int peso= Integer.parseInt(request.getParameter("peso"));
        int id = Integer.parseInt(request.getParameter("idcita"));
        new modeloClinica().crearCita(opc, "00:00:00", "2015-07-01", cos, 1, 1, 1, id);
        new modeloClinica().consulta(altura, peso, id, comentario);
        try {
            response.sendRedirect("principalMedico.jsp?tipo=2&id=0");
        } catch (IOException ex) {
            System.out.println("El archivo index.jsp no existe");
        }
    }
    
    protected void receta(HttpServletRequest request, HttpServletResponse response) {
        String med = ""; 
        String dosis = "";
        String via = "";
        String tiempo = ""; 
        String trata = "";
        try {
            for(int i=0;i<4;i++){
                if(!med.equals("") && !dosis.equals("") && !via.equals("") && !tiempo.equals("") && !trata.equals("")){
                    new modeloClinica().receta(med, dosis, via, tiempo, trata);
                }
            }
            response.sendRedirect("principalMedico.jsp?tipo=2&id=0");
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

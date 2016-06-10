package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import classes.Motorista;
import classes.Programacao;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class ProgramarCarona extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try{
        
            String origem = request.getParameter("origem");
            String destino = request.getParameter("destino");            

            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm");
            Date data = sdf.parse(request.getParameter("data"));

            int vagas = Integer.parseInt(request.getParameter("vagas"));
            String adicional = request.getParameter("adicional");
            
            Programacao p = new Programacao();
            
            p.setOrigem(origem);
            p.setDestino(destino);
            p.setData(data);
            p.setVagas(vagas);
            p.setAdicional (adicional);

            p.setEfetuada(false);
            
            Motorista m = recuperarMotorista();
            
            p.setMotorista(m);
            
            Session sessao = HibernateUtil.getSessionFactory().openSession();
            Transaction tx=null;
            
            try{
                tx = sessao.beginTransaction();
                sessao.save(p);
                sessao.flush();
                tx.commit();
                
                request.setAttribute("idProgramacao", p.getIdProgramacao());
                request.setAttribute("origem", p.getOrigem());
                request.setAttribute("destino", p.getDestino());
                request.setAttribute("data", p.getData());
                request.setAttribute("vagas", p.getVagas());
                request.setAttribute("adicional", p.getAdicional());
                
                request.getRequestDispatcher("resultadoProgramarCarona.jsp")
                        .forward(request, response);
            }
            catch(Exception ex){
                if(tx !=null){
                    tx.rollback();
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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

    private Motorista recuperarMotorista() {
        
        Motorista m = new Motorista();
        m.setNome("Joao");
        //m.setPerfil("");
        m.setRa(123456);
        m.setSenha("temer");
        m.setVeiculo("Gurgel");
        
        return m;
        
    }
}

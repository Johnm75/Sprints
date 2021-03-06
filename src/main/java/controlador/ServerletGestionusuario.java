package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import modelo.Usuario;
import modelo.Usuariocrud;

/**
 * Servlet implementation class ServerletGestionusuario
 */
@WebServlet("/ServerletGestionusuario")
public class ServerletGestionusuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServerletGestionusuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String  n,e,u,p;
		int c;
		boolean	y;	
		if(request.getParameter("btnCrear")!=null)
		{
			c= Integer.parseInt(request.getParameter("Cedula"));
			n= request.getParameter("NombreCompleto");
			e= request.getParameter("CorreoElectronico");
			u= request.getParameter("Usuario");
			p= request.getParameter("Contraseņa");
			Usuario us = new Usuario(c, n, e, u, p);
			Usuariocrud usc= new Usuariocrud();
			y=usc.insertarusuario(us);
			if(y)
			{
				 JOptionPane.showMessageDialog(null, "El usuario fue registrado");		
				 response.sendRedirect("menu.jsp");
			}
			else
			{
				JOptionPane.showMessageDialog(null, "El usuario fue no registrado");
				response.sendRedirect("menu.jsp");
			}
			
			
		}
		
		if( request.getParameter("btnEliminar") != null)
		{
			c= Integer.parseInt(request.getParameter("Cedula"));
			Usuario us = new Usuario(c);
			Usuariocrud usc= new Usuariocrud();
			y=usc.elminarusuario(us);
			if(y)
			{
				 JOptionPane.showMessageDialog(null, "El usuario fue eliminado");		
				 response.sendRedirect("menu.jsp");
			}
			else
			{
				JOptionPane.showMessageDialog(null, "El usuario no fue eliminado ");
				response.sendRedirect("menu.jsp");
			}
			
		}
	}

}

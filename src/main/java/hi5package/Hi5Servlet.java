package hi5package;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Hi5Servlet")
public class Hi5Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Hi5Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void validarUsuarios(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ArrayList<Usuarios> lista = TestJSON.getJSONUsuarios();
			request.setAttribute("lista", lista);
			String usua = request.getParameter("txtusuario");
			String pass = request.getParameter("txtpassword");
			int respuesta = 0;
			for (Usuarios usuario : lista) {
				if (usuario.getUsuario().equals(usua) && usuario.getPassword().equals(pass)) {
					request.setAttribute("usuario", usuario);
					request.getRequestDispatcher("./JSP/Index.jsp").forward(request, response);
					respuesta = 1;
				}

			}

			if (respuesta == 0) {
				request.getRequestDispatcher("./JSP/Login.jsp").forward(request, response);
				System.out.println("No se encontraron datos");
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
							// Modulo Usuarios
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	public void listarUsuarios(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ArrayList<Usuarios> lista = TestJSON.getJSONUsuarios();
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("./JSP/Usuarios.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	private void crearUsuarios(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int respuesta = 0;
		Long cedula_usuario = Long.parseLong(request.getParameter("txtcedula"));
		String nombre_usuario = request.getParameter("txtnombre");
		String email_usuario = request.getParameter("txtemail");
		String usuario = request.getParameter("txtusuario");
		String password = request.getParameter("txtpassword");
		
		Usuarios newusuario = new Usuarios(cedula_usuario, nombre_usuario, email_usuario, usuario, password);
		try {
			respuesta = TestJSON.postJSON(newusuario);
			if (respuesta == 200) {
				request.getRequestDispatcher("./JSP/Index.jsp").forward(request, response);
			}
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void actualizarUsuarios(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int respuesta = 0;
		Long cedula_usuario = Long.parseLong(request.getParameter("txtcedula"));
		String nombre_usuario = request.getParameter("txtnombre");
		String email_usuario = request.getParameter("txtemail");
		String usuario = request.getParameter("txtusuario");
		String password = request.getParameter("txtpassword");
		
		Usuarios usuarioactualizado = new Usuarios(cedula_usuario, nombre_usuario, email_usuario, usuario, password);
		try {
			respuesta = TestJSON.putJSON(usuarioactualizado);
			if (respuesta == 200) {
				request.getRequestDispatcher("./JSP/Index.jsp").forward(request, response);
			}
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void eliminarUsuarios(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int respuesta = 0;
		Long id = Long.parseLong(request.getParameter("id"));
		
		try {
			respuesta = TestJSON.deleteJSONUsuarios(id);
			if (respuesta == 200) {
				request.getRequestDispatcher("./JSP/Index.jsp").forward(request, response);
			}
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
								// Modulo Clientes
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		
	public void listarClientes(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ArrayList<Clientes> lista = TestJSONClientes.getJSONClientes();
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("./JSP/Clientes.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	private void crearClientes(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int respuesta = 0;		
		Long cedula_cliente = Long.parseLong(request.getParameter("txtcedula"));
		String nombre_cliente = request.getParameter("txtnombre");
		String direccion_cliente = request.getParameter("txtdireccion");
		String email_cliente = request.getParameter("txtemail");
		String telefono_cliente = request.getParameter("txttelefono");
		
		Clientes newcliente = new Clientes(cedula_cliente, nombre_cliente, direccion_cliente, email_cliente, telefono_cliente);
		try {
			respuesta = TestJSONClientes.postJSONClientes(newcliente);
			if (respuesta == 200) {
				request.getRequestDispatcher("./JSP/Index.jsp").forward(request, response);
			}
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void actualizarClientes(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int respuesta = 0;
		Long cedula_cliente = Long.parseLong(request.getParameter("txtcedula"));
		String nombre_cliente = request.getParameter("txtnombre");
		String direccion_cliente = request.getParameter("txtdireccion");
		String email_cliente = request.getParameter("txtemail");
		String telefono_cliente = request.getParameter("txttelefono");
		
		Clientes clienteactualizado = new Clientes(cedula_cliente, nombre_cliente, direccion_cliente, email_cliente, telefono_cliente);
		try {
			respuesta = TestJSONClientes.putJSONClientes(clienteactualizado, cedula_cliente);
			if (respuesta == 200) {
				request.getRequestDispatcher("./JSP/Index.jsp").forward(request, response);
			}
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void eliminarClientes(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int respuesta = 0;
		Long id = Long.parseLong(request.getParameter("id"));
		
		try {
			respuesta = TestJSONClientes.deleteJSONClientes(id);
			if (respuesta == 200) {
				request.getRequestDispatcher("./JSP/Index.jsp").forward(request, response);
			}
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String accion = request.getParameter("accion");
		String tipo = request.getParameter("tipo");

		if (accion.equals("Ingresar")) {
			this.validarUsuarios(request, response);
		} else if(accion.equals("listar")&&tipo.equals("usuarios")){
			this.listarUsuarios(request, response);
		} else if(accion.equals("crear")&&tipo.equals("usuarios")){
			this.crearUsuarios(request, response);
		}else if(accion.equals("actualizar")&&tipo.equals("usuarios")){
			this.actualizarUsuarios(request, response);
		}else if(accion.equals("eliminar")&&tipo.equals("usuarios")){
			this.eliminarUsuarios(request, response);
		}else if(accion.equals("listar")&&tipo.equals("clientes")){
			this.listarClientes(request, response);
		}else if(accion.equals("crear")&&tipo.equals("clientes")){
			this.crearClientes(request, response);
		}else if(accion.equals("actualizar")&&tipo.equals("clientes")){
			this.actualizarClientes(request, response);
		}else if(accion.equals("eliminar")&&tipo.equals("clientes")){
			this.eliminarClientes(request, response);
		}
	}




	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
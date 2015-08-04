/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloClinica;

import funciones.conexion;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author GIO
 */
public class modeloClinica {

    conexion con = new conexion();

    public ResultSet consultar(String x) {
        ResultSet rs = null;
        try {
            String sql = x;
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery(sql);
            }
            return rs;
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return rs;
    }

    public int consultaIdAsistente(String nom) {
        ResultSet rs = null;
        int dato = 0;
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select * from clinica.personal where nom_us ='" + nom + "';");
                if (rs.next()) {
                    do {
                        dato = rs.getShort(1);
                    } while (rs.next());
                }
            }
            return dato;
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return dato;
    }

    public String abcmPaciente(int opc, String nom, String appat, String apmat, String sex, String dir, int tel, String est, String mun, String loc, String ocup, String nomus, String passw, String pernom, String perpat, String permat, String perdir, int percasa, int permovil, int id) {
        ResultSet rs = null;
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select abcPacientes(" + opc + ",'" + nom + "','" + appat + "',"
                        + "'" + apmat + "','" + sex + "','" + dir + "'," + tel + ",'" + est + "','" + mun + "',"
                        + "'" + loc + "','" + ocup + "','Activo','" + nomus + "','" + passw + "','" + pernom + "','" + perpat + "',"
                        + "'" + permat + "','" + perdir + "'," + permovil + "," + percasa + "," + id + ");");
            }
            return "Paciente agregado";
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return "paciente no agregado";
    }

    public String abcmAsistente(int opc, String nom, String appat, String apmat, String dir, int tel, String sex, String rfcs, String nomus, String passw, String ced, int id) {
        ResultSet rs = null;
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select abcPaciente(" + opc + ",'" + nom + "','" + appat + "','" + apmat + "',"
                        + "'" + dir + "'," + tel + ",'" + sex + "','" + rfcs + "','Activo','" + nomus + "','" + passw + "','" + ced + "'," + id + ");");
            }
            return "Asistente agregado";
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return "Asistente no agregado";
    }

    public String abcmMedico(int opc, String nom, String appat, String apmat, String dir, int tel, String sex, String rfcs,
            String nomus, String passw, String ced, int id_esp, int id) {
        ResultSet rs = null;
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select abcMedico(" + opc + ",'" + nom + "','" + appat + "','" + apmat + "','" + dir + "',"
                        + "" + tel + ",'" + sex + "','" + rfcs + "','Activo','" + nomus + "','" + passw + "','" + ced + "'," + id_esp + "," + id + ");");
            }
            return "Medico agregado";
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return "Medico no agregado";
    }

    public String crearCita(int opc, String ho, String fec, int cos, int idasi, int idmedico, int idpaciente, int id) {
        ResultSet rs = null;
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select crearCita(" + opc + ",'" + ho + "','" + fec + "'," + cos + "," + idasi + "," + idmedico + "," + idpaciente + "," + id + ");");
            }
            return "Medico agregado";
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return "Medico no agregado";
    }
    
    public String consulta(int altura,int peso,int idcita,String comentario){
        ResultSet rs = null;
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select expConsulta("+altura+","+peso+","+idcita+",'"+comentario+"');");
            }
            return "consulta relaizada agregado";
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return "Medico no agregado";
    }
    
    public String receta(String med, String dosis, String via, String tiempo, String trata){
        ResultSet rs = null;
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select receta('"+med+"','"+dosis+"','"+via+"','"+tiempo+"','"+trata+"');");
            }
            return "consulta relaizada agregado";
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return "Medico no agregado";
    }

    public String nomUsuario(String nom, String appat, String apmat) {
        String usuario = "";
        usuario = nom.substring(0, 2) + appat.substring(0, 2) + apmat.substring(0, 2);
        return usuario;
    }

    public String sexo(String sql) {
        ResultSet rs = null;
        String sexo = "";
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery(sql);
                if (rs.next()) {
                    do {
                        if (rs.getString(1).equals("Masculino")) {
                            sexo = "<select type=\"text\" name=\"sex\" class=\"form-control\">\n"
                                    + "<option selected=\"selected\" value=\"Masculino\"> Masculino</option>\n"
                                    + "<option value=\"Femenino\">  Fememnino</option>\n"
                                    + "</select><br/>";
                        } else if (rs.getString(1).equals("Femenino")) {
                            sexo = "<select type=\"text\" name=\"sex\" class=\"form-control\">\n"
                                    + "<option value=\"Masculino\"> Masculino</option>\n"
                                    + "<option selected=\"selected\" value=\"Femenino\">  Fememnino</option>\n"
                                    + "</select><br/>";
                        }
                    } while (rs.next());
                }
                System.out.println(sexo);
            }
            return sexo;
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return sexo;
    }

    public String ocupacion(int id) {
        ResultSet rs = null;
        String sexo = "";
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select ocupacion from clinica.paciente where \"idPaciente\" = " + id + ";");
                if (rs.next()) {
                    do {
                        if (rs.getString(1).equals("Estudiante")) {
                            sexo = "<select type=\"text\" name=\"ocup\" class=\"form-control\">         \n"
                                    + "                                    <option selected=\"selected\" value=\"Estudiante\">  Estiduante</option>\n"
                                    + "                                    <option value=\"Obrero\"> Obrero</option>          \n"
                                    + "                                    <option value=\"Profesionista\">  Profesionista</option>\n"
                                    + "                                    <option value=\"Ama de casa\"> Ama de casa</option>          \n"
                                    + "                                    <option value=\"Desempleado\">  Desempleado</option>\n"
                                    + "                                </select><br/>";
                        } else if (rs.getString(1).equals("Obrero")) {
                            sexo = "<select type=\"text\" name=\"ocup\" class=\"form-control\">         \n"
                                    + "                                    <option value=\"Estudiante\">  Estiduante</option>\n"
                                    + "                                    <option selected=\"selected\" value=\"Obrero\"> Obrero</option>          \n"
                                    + "                                    <option value=\"Profesionista\">  Profesionista</option>\n"
                                    + "                                    <option value=\"Ama de casa\"> Ama de casa</option>          \n"
                                    + "                                    <option value=\"Desempleado\">  Desempleado</option>\n"
                                    + "                                </select><br/>";
                        } else if (rs.getString(1).equals("Profesionista")) {
                            sexo = "<select type=\"text\" name=\"ocup\" class=\"form-control\">         \n"
                                    + "                                    <option value=\"Estudiante\">  Estiduante</option>\n"
                                    + "                                    <option value=\"Obrero\"> Obrero</option>          \n"
                                    + "                                    <option selected=\"selected\" value=\"Profesionista\">  Profesionista</option>\n"
                                    + "                                    <option value=\"Ama de casa\"> Ama de casa</option>          \n"
                                    + "                                    <option value=\"Desempleado\">  Desempleado</option>\n"
                                    + "                                </select><br/>";
                        } else if (rs.getString(1).equals("Ama de casa")) {
                            sexo = "<select type=\"text\" name=\"ocup\" class=\"form-control\">         \n"
                                    + "                                    <option value=\"Estudiante\">  Estiduante</option>\n"
                                    + "                                    <option value=\"Obrero\"> Obrero</option>          \n"
                                    + "                                    <option value=\"Profesionista\">  Profesionista</option>\n"
                                    + "                                    <option selected=\"selected\" value=\"Ama de casa\"> Ama de casa</option>          \n"
                                    + "                                    <option value=\"Desempleado\">  Desempleado</option>\n"
                                    + "                                </select><br/>";
                        } else if (rs.getString(1).equals("Desempleado")) {
                            sexo = "<select type=\"text\" name=\"ocup\" class=\"form-control\">         \n"
                                    + "                                    <option value=\"Estudiante\">  Estiduante</option>\n"
                                    + "                                    <option value=\"Obrero\"> Obrero</option>          \n"
                                    + "                                    <option value=\"Profesionista\">  Profesionista</option>\n"
                                    + "                                    <option value=\"Ama de casa\"> Ama de casa</option>          \n"
                                    + "                                    <option selected=\"selected\" value=\"Desempleado\">  Desempleado</option>\n"
                                    + "                                </select><br/>";
                        }
                    } while (rs.next());
                }
                System.out.println(sexo);
            }
            return sexo;
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return sexo;
    }

    public String especialidad(String especialidad) {
        ResultSet rs = null;
        String sexo = "";
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery("select * from clinica.especialidad;");
                if (rs.next()) {
                    sexo = "<select type=\"text\" name=\"idEsp\" class=\"form-control\">\n";
                    do {
                        if (rs.getString(2).equals(especialidad)) {
                            sexo = sexo + "<option selected=\"selected\" value='" + rs.getString(1) + "'> " + rs.getString(2) + "</option>\n";
                        } else {
                            sexo = sexo + "<option value='" + rs.getString(1) + "'>  " + rs.getString(2) + "</option>\n";
                        }
                    } while (rs.next());
                    sexo = sexo + "</select><br/>";
                }
                System.out.println(sexo);
            }
            return sexo;
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return sexo;
    }

    public String especialidades(String sql) {
        ResultSet rs = null;
        String sexo = "";
        try {
            if (con.conectar()) {
                Statement stt = con.conexion.createStatement();
                rs = (ResultSet) stt.executeQuery(sql);
                if (rs.next()) {
                    sexo = "<select type=\"text\" name=\"consultorio\" class=\"form-control\">\n";
                    do {
                        sexo = sexo + "<option selected=\"selected\" value='" + rs.getString(1) + "'> " + rs.getString(2)+ " - "+rs.getString(3) + "</option>\n";
                    } while (rs.next());
                    sexo = sexo + "</select><br/>";
                }
                System.out.println(sexo);
            }
            return sexo;
        } catch (Exception e) {
            System.out.println("Erroral conectar " + e);
        }
        return sexo;
    }

}

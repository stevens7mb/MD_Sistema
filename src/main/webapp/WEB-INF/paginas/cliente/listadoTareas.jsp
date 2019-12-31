<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_GT"></fmt:setLocale>

    <section id="clientes">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-header">
                            <h4>Tareas de Mantenimiento</h4>
                        </div>
                        <table class="table table-responsive-xl table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Ticket</th>
                                    <th>Fecha Inicio</th>
                                    <th>Fecha Fin</th>
                                    <th>Item Trabajo</th>
                                    <th>RDA</th>
                                    <th>Sitio</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Iteramos cada elemento de la lista de clientes-->
                            <c:forEach var="tarea" items="${tareas}" varStatus="status">
                                <tr>
                                    <td>${tarea.idTarea}</td>
                                    <td>${tarea.ticket} </td>
                                    <td>${tarea.fechaInicioTarea} </td>
                                    <td>${tarea.fechaFinTarea} </td>
                                    <td>${tarea.item} </td>
                                    <td>${tarea.rda} </td>
                                    <td>${tarea.idSitio} </td>
                                   <!-- <td><fmt:formatNumber value="${cliente.saldo}" type="currency"/> </td>    -->
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idTarea=${tarea.idTarea}"
                                           class="btn btn-secondary">
                                            <i class="fas fa-angle-double-right"></i> Editar
                                        </a>
                                    </td> 
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Tarjetas para los totales -->
            <div class="col-md-3">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo Total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                        </h4>
                    </div>
                </div>
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Clientes</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalClientes}
                        </h4>
                    </div>
                </div>
            </div>
            <!-- Fin Tarjetas para los totales -->
        </div>
    </div>
</section>
<!-- Agregar cliente Modal-->
<jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>

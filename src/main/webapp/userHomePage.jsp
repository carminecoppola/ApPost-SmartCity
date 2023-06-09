<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 22/03/23
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <link rel="icon" type="image/x-icon" href="img/wallpaperCar.jpg" />
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="img">

    <!-- API Google Maps-->
    <title>ApPost - My Home</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" type="text/css" href="CSS/styleMap.css" />
    <script type="module" src="js/jsMap.js"></script>

</head>

<body>
<jsp:include page="NavBarUser.jsp" />

<!-- Inizio MasterHead-->
<header class="masthead">
    <div class="container">
        <div class="col-lg-10 mx-auto mb-4">
            <h2 class="text-center mt-0" style="color: white">
                <c:choose>
                    <c:when test="${userBean != null}">
                        Benvenuto, ${userBean.getNome()}
                    </c:when>
                </c:choose>

            </h2>
            <hr class="divider" />
        </div>

    </div>
    <!--INIZIO SEZIONE CARD-->
    <div class="row">
        <!-- Inizio Prima Card-->
        <div class="my-4 card bg-light" style="width: 20rem; height: 30rem" id="personal">
            <img style="border-radius: 2.3rem" src="img/imgCard/personalData.jpg">
            <div class="card-body">
                <h4 class="card-title">Dati personali</h4>
                <p class="card-text">Qui vengono visualizzati i dati personali di </p>
                <p>
                    <c:choose>
                    <c:when test="${userBean != null}">
                <p class="text-muted mb-0">
                        ${userBean.getNome()}
                        ${userBean.getCognome()}
                </p>
                </c:when>
                </c:choose>
                </p>
                <div class="text-center">
                    <a href="PersonalServlet" style="border-radius: 20px" class="btn btn-outline-primary">Visualizza i tuoi dati</a>
                </div>
            </div>
        </div><!-- Fine Prima Card-->

        <!-- Inizio Seconda Card-->
        <div class="my-4 card bg-light mx-auto" style="width: 20rem;height: 30rem" id="prenota">
            <img style="border-radius: 2.3rem" src="img/park6.jpg">
            <div class="card-body">
                <h4 class="card-title">Prenota</h4>
                <p class="card-text">Qui puoi effettuare una nuova prenotazione in uno dei nostri parcheggi.</p><br>
                <div class="text-center">
                    <a href="SearchServlet" style="border-radius: 20px" class="btn btn-outline-primary text-center">Effettua una prenotazione</a>
                </div>
            </div>
        </div><!-- Fine Seconda Card-->

        <!-- Inizio Terza Card-->
        <div class="my-4 card bg-light" style="width: 20rem;height: 30rem" id="booking">
            <img style="border-radius: 2.3rem" src="img/imgCard/prenotazione.jpg">
            <div class="card-body">
                <h4 class="card-title">Le mie prenotazioni</h4>
                <p class="card-text">Qui vengono visualizzate le prenotazioni effettuate,
                    con informazioni come data orario e luogo.</p>
                <form action="ShowBookingServlet" method="post">
                    <button class="btn btn-outline-primary text-center" style="border-radius: 20px">Visualizza prenotazioni</button>
                </form>
            </div>
        </div><!-- Fine Terza Card-->

    </div><!-- FINE SEZIONE CARD-->

</header> <!-- Fine MasterHead-->

<!--Mappa-->
<section class="page-section" style="padding: 2rem" id="parcheggi">
    <h2 class="text-center mt-0" style="color: #000000">I nostri parcheggi
    </h2>
    <hr class="divider" />
    <div class="my-3 card bg-light mx-auto" style="width:60rem;">
        <div class="card">
            <div class="card-body">
                <p class="text-muted mb-0">Visualizza dove sono situati i nostri parcheggi</p>
                <!--The div element for the map -->
                <div id="map"></div> <!-- Qua esce la mappa-->
            </div>
        </div>
    </div>
</section>


<jsp:include page="Footer.jsp" />


<!-- SimpleLightbox plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

<!--L'attributo defer fa sì che la funzione di callback venga eseguita
       dopo che l'intero documento HTML è stato analizzato. Per utilizzi non
       bloccanti, evitando condizioni di gara e comportamenti coerenti tra
       browser, considera il caricamento tramite Promises con
       https://www.npmjs.com/package/@googlemaps/js-api-loader.-->

<!--Qui importiamo lo script di google maps dove però
    andiamo a modificare la chiave API che abbiamo generato -->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA23kxKNlGB1Gw7UQdz4zbemqIZSG93JUQ&callback=initMap">
</script>

<!--Conferma logout-->
<script>
    function confermaLogout() {
        return confirm("Sei sicuro di voler uscire?");
    }
</script>

</body>
</html>
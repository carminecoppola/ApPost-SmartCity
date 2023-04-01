<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 20/03/23
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>ApPost-Smart Parking</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="img/iconMoney.png" />
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
</head>
<body id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">ApPost</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                <li class="nav-item"><a class="nav-link" href="#about">Chi siamo</a></li>
                <li class="nav-item"><a class="nav-link" href="#services">Servizi</a></li>
                <li class="nav-item"><a class="nav-link" href="registrazione.jsp">Registrati</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Accedi</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Masthead-->
<header class="masthead">
    <div class="container px-4 px-lg-5 h-100">
        <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-8 align-self-end">
                <h1 class="text-white font-weight-bold">Trova parcheggio con facilità nella tua città grazie alla nostra app!</h1>
                <hr class="divider" />
            </div>
            <div class="col-lg-8 align-self-baseline">
                <p class="text-white-75 mb-5">Con la nostra app, parcheggiare non è mai stato così facile. Con un solo click, potrai trovare il parcheggio più vicino a te, risparmiando tempo e fatica.</p>
                <div class="d-flex justify-content-center align-items-center">
                    <a class="btn btn-primary btn-xl me-2" href="registrazione.jsp">Registrati</a> <!-- Bottone registra-->
                    <a class="btn btn-primary btn-xl me-2" href="login.jsp">Accedi ora</a> <!-- Bottone Accedi-->
                </div>
                <a class="btn btn-primary btn-xl mt-3" href="#about">Scopri di più</a> <!-- Bottone Scopri di piu-->
            </div>
        </div>
    </div>
</header>

<!-- Services-->
<section class="page-section" id="services">
    <div class="container px-4 px-lg-5">
        <h2 class="text-center mt-0">I nostri servizi</h2>
        <hr class="divider" />
        <div class="row gx-4 gx-lg-5">
            <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <!--<div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>-->
                    <div><img height="50" width="50" src="img/prenotazione.png"></div>
                    <h3 class="h4 mb-2">Prenotazioni</h3>
                    <p class="text-muted mb-0">Prenota il tuo posto auto in anticipo
                        per evitare l'ansia del parcheggio dell'ultimo minuto.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <!--<div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>-->
                    <div><img height="50" width="50" src="img/pagamento.png"></div>
                    <h3 class="h4 mb-2">Pagamenti</h3>
                    <p class="text-muted mb-0">Paga il parcheggio direttamente
                        dall'app, senza dover cercare il cambio o la carta di credito.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <!--<div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>-->
                    <div><img height="50" width="50" src="img/risparmia.png"></div>
                    <h3 class="h4 mb-2">Risparmia</h3>
                    <p class="text-muted mb-0">Risparmia tempo, fatica e
                        denaro grazie alla nostra app di parcheggio smart.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <!--<div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>-->
                    <div><img height="50" width="50" src="img/parcheggio.png"></div>
                    <h3 class="h4 mb-2">Parcheggio</h3>
                    <p class="text-muted mb-0">Trova il parcheggio più vicino a te
                        con un solo click, senza dover girare a vuoto in cerca di un posto auto disponibile.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!--About-->
<section class="page-section" id="about">
    <div class="container px-4 px-lg-5">
        <h2 class="text-center mt-0">Chi siamo</h2>
        <hr class="divider" />
        <div class="row gx-4 gx-lg-5">
            <!--<div class="col-lg-3 col-md-6 text-center">-->
            <div class="mt-5">
                <p class="text-muted mb-0">Quest'app di parcheggi smart è la soluzione perfetta
                    per tutti coloro che cercano un modo semplice ed efficace per trovare il parcheggio
                    perfetto. Con la tua app, puoi prenotare il parcheggio in anticipo e risparmiare
                    tempo ed energia nella ricerca di un posto auto.
                    Quest'app di parcheggi smart ti consente di cercare parcheggi nelle vicinanze della
                    tua destinazione e di visualizzare il prezzo e la disponibilità in tempo reale.
                    Puoi scegliere il parcheggio più conveniente e prenotarlo direttamente dall'app,
                    senza dover cercare parcheggi a caso.
                    Una volta parcheggiato, la nostra app ti consente di monitorare il tempo di parcheggio
                    e di ricevere avvisi quando il tuo tempo sta per scadere. In questo modo, puoi
                    evitare multe e ulteriori spese, e rimanere tranquillo durante la tua permanenza.
                    Inoltre, la nostra app di parcheggi smart ti permette di guadagnare punti ogni volta
                    che utilizzi la piattaforma. Questi punti possono essere convertiti in sconti sui
                    tuoi prossimi parcheggi o altri premi, rendendo l'esperienza di parcheggio ancora
                    più conveniente e gratificante.
                    In definitiva, la nostra app di parcheggi smart è la soluzione ideale per tutti coloro
                    che cercano un modo semplice e veloce per parcheggiare. Con la sua capacità di
                    trovare parcheggi vicini, di prenotare in anticipo e di monitorare il tempo di
                    parcheggio, questa app è un must-have per ogni automobilista moderno.</p>
            </div>
        </div>
    </div>
    <!--</div>-->
</section>

<!-- Portfolio-->
<div id="portfolio">
    <div class="container-fluid p-0">
        <div class="row g-0">
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="img/8.jpg" title="Project Name">
                    <img class="img-fluid" src="img/park8.jpg" alt="..." />
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">SmartPark City</div>
                        <div class="project-name">Via dei Parcheggiatori 10, Milano</div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="img/park2.jpg" title="Project Name">
                    <img class="img-fluid" src="img/park2.jpg" alt="..." />
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">TechGarage</div>
                        <div class="project-name">Via dell'Innovazione 20, Torino</div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="img/park3.jpg" title="Project Name">
                    <img class="img-fluid" src="img/park3.jpg" alt="..." />
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">AutoHaven</div>
                        <div class="project-name">Via degli Automobilisti 5, Roma</div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="img/park5.jpg" title="Project Name">
                    <img class="img-fluid" src="img/park5.jpg" alt="..." />
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">ParkEase</div>
                        <div class="project-name">Via del Parcheggio Facile 15, Firenze</div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="img/park6.jpg" title="Project Name">
                    <img class="img-fluid" src="img/park6.jpg" alt="..." />
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">QuickPark</div>
                        <div class="project-name">Via del Parcheggio Veloce 8, Bologna</div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="img/park7.jpg" title="Project Name">
                    <img class="img-fluid" src="img/park7.jpg" alt="..." />
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">CitySpot</div>
                        <div class="project-name">Via del Posto in Città 4, Napoli</div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Call to action-->
<section class="page-section bg-dark text-white">
    <div class="container px-4 px-lg-5 text-center">
        <h2 class="mb-4">Inizia subito a parcheggiare con facilità</h2>
        <a class="btn btn-light btn-xl" href="login.jsp">Download Now!</a>
    </div>
</section>

<!-- Footer-->
<footer class="bg-light py-5">
    <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2022 - Company Name</div></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- SimpleLightbox plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>


<!doctype html>
<html>
    
    <head>
        <title><?php echo $this->title ?></title>
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootswatch/3.0.0/cerulean/bootstrap.min.css">
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js" type="text/javascript"></script>
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="static/js/ajax_scanner.js"></script>
        <link href="static/css/scanner_main.css" type="text/css" rel="stylesheet" />

        <style type="text/css">
            /* Space out content a bit */
            body {
                padding-top: 20px;
                padding-bottom: 20px;
            }
            /* Everything but the jumbotron gets side spacing for mobile first views */
            .header, .marketing, .footer {
                padding-left: 15px;
                padding-right: 15px;
            }
            /* Custom page header */
            .header {
                border-bottom: 1px solid #e5e5e5;
            }
            /* Make the masthead heading the same height as the navigation */
            .header h3 {
                margin-top: 0;
                margin-bottom: 0;
                line-height: 40px;
                padding-bottom: 19px;
            }
            /* Custom page footer */
            .footer {
                padding-top: 19px;
                color: #777;
                border-top: 1px solid #e5e5e5;
            }
            /* Customize container */
            @media(min-width: 768px) {
                .container {
                    max-width: 730px;
                }
            }
            .container-narrow > hr {
                margin: 30px 0;
            }
            /* Main marketing message and sign up button */
            .jumbotron {
                text-align: center;
                border-bottom: 1px solid #e5e5e5;
            }
            .jumbotron .btn {
                font-size: 21px;
                padding: 14px 24px;
            }
            /* Supporting marketing content */
            .marketing {
                margin: 40px 0;
            }
            .marketing p + h4 {
                margin-top: 28px;
            }
            /* Responsive: Portrait tablets and up */
            @media screen and(min-width: 768px) {
                /* Remove the padding we set earlier */
                .header, .marketing, .footer {
                    padding-left: 0;
                    padding-right: 0;
                }
                /* Space out the masthead */
                .header {
                    margin-bottom: 30px;
                }
                /* Remove the bottom border on the jumbotron for visual effect */
                .jumbotron {
                    border-bottom: 0;
                }
            }
        </style>
    </head>
    
    <body>
        <div class="container">
            <div class="header">
                <ul class="nav nav-pills pull-right">
                    <li class="active">
                        <a href="index.php?controller=scanner">Scanner</a>
                    </li>
                    <li>
                        <a href="index.php?controller=executor">Executor</a>
                    </li>
                    <li>
                        <a href="static/html/help.html">Help</a>
                    </li>
                </ul><h3 class="text-muted">PAT Tool</h3>
            </div>
            <div class="jumbotron">

                <h2>Let's find some malware!</h2>

				<div id="progress_area">

					<b>Progress:</b>

					<div id="progress">Found <span id="count">0</span> files, <span id="current_folder">./</span>
					</div>

					<pre><div id="debug" style="margin: 30px 0 0 0; border: 1px solid darkred; font-size: 9px; padding: 10px;"></div></pre>

				</div>
                <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                <div class="header">
                    <div id="spinner" class="spinner"></div>
                </div>

                <form name="config"> 
                    <input class="btn btn-lg btn-success" type="button" id="startButton" value="Start Scanning" onclick="onStartButtonPressed()">
                </form>
    <div id="result_area">
        Now you can download the report and send it to malware analyst:
        <a href="<?php echo $this->path_to_xml ?>">
            <?php echo $this->path_to_xml ?></a>
    </div>

 
            </div>
        
        </div><!-- /container -->
    </body>

</html>
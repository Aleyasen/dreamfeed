<!DOCTYPE html>
<html>
    <head>

        <title>Dreamfeed: A Better News Feed for All!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Dreamfeed">
        <meta name="keyword" content="Dreamfeed">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">


        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/dc.css"/>

    </head>

    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">DreamFeed</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Settings</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Logout</a></li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <input size="100" type="text" class="form-control" placeholder="Search...">
                    </form>
                </div>
            </div>
        </nav>

        <?php echo $content; ?>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.isotope/2.2.0/isotope.pkgd.js"></script>


        <script src="http://d3js.org/d3.v3.min.js"></script>

        <script>
            // external js: isotope.pkgd.js

            $(document).ready(function() {
                // init Isotope
                var $container = $('.isotope').isotope({
                    itemSelector: '.item',
                    layoutMode: 'fitRows',
                    getSortData: {
                        sender: '.sender',
                        date: '.date',
                        type: '.type',
                        category: '[data-category]',
                        weight: function(itemElem) {
                            var weight = $(itemElem).find('.weight').text();
                            return parseFloat(weight.replace(/[\(\)]/g, ''));
                        }
                    }
                });

                // filter functions
                var filterFns = {
                    // show if number is greater than 50
                    numberGreaterThan50: function() {
                        var number = $(this).find('.number').text();
                        return parseInt(number, 10) > 50;
                    },
                    // show if name ends with -ium
                    ium: function() {
                        var name = $(this).find('.name').text();
                        return name.match(/ium$/);
                    }
                };

                // bind filter button click
                $('#filters').on('click', 'button', function() {
                    var filterValue = $(this).attr('data-filter');
                    // use filterFn if matches value
                    filterValue = filterFns[ filterValue ] || filterValue;
                    $container.isotope({
                        filter: filterValue
                    });
                });

                // bind sort button click
                $('#sorts').on('click', 'button', function() {
                    var sortByValue = $(this).attr('data-sort-by');
                    $container.isotope({
                        sortBy: sortByValue
                    });
                });

                // change is-checked class on buttons
                $('.button-group').each(function(i, buttonGroup) {
                    var $buttonGroup = $(buttonGroup);
                    $buttonGroup.on('click', 'button', function() {
                        $buttonGroup.find('.is-checked').removeClass('is-checked');
                        $(this).addClass('is-checked');
                    });
                });

            });
        </script>
    </body>
</html>
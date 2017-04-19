<script>
    function substitutePdfVariables() {

        function getParameterByName(name) {
            var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
            return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
        }

        function substitute(name) {
            var value = getParameterByName(name);
            var elements = document.getElementsByClassName(name);

            for (var i = 0; elements && i < elements.length; i++) {
                elements[i].textContent = value;
            }
        }

        ['frompage', 'topage', 'page', 'webpage', 'section', 'subsection', 'subsubsection']
            .forEach(function(param) {
                substitute(param);
            });
    }
</script>

<link href="style.css" type="text/css" rel="stylesheet"></link>


<body onload="substitutePdfVariables()" markdown="1">

<div class="footerpage"><span class="page"></span></div>

<div class="footernote">
Coding Conventions
</div>
</body>


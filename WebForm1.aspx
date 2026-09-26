<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"
    Inherits="Online_Event_Registration_Portal.WebForm1"
    UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html>
<head>
    <title>Online Event Registration</title>
</head>
<body>

    <!-- Your ASP.NET form code here -->

    <script>
        function allowDrop(ev) {
            ev.preventDefault();
        }

        function updateHidden() {
            var dropZone = document.getElementById('dropZone');

            var items = Array.from(
                dropZone.querySelectorAll('.item')
            ).map(function (n) {
                return n.dataset.value;
            });

            var hidden = document.getElementById(
                '<%= (HiddenSelectedEvents != null ? HiddenSelectedEvents.ClientID : "") %>'
            );

            if (!hidden) return;

            hidden.value = items.join(',');
        }
    </script>

</body>
</html>

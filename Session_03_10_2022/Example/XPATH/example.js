var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        showResult(xhttp.responseXML);
    }
};
xhttp.open("GET", "example.xml", true);
xhttp.send(); 

function showResult(xml) {
    var txt = "";
    path = "/repertoire/personne[position()=2]/descendant::*";
    path1 = "/repertoire/personne[count(telephone/telephone)>1]";
    path2 = "/repertoire/personne/descendant::*";
    path3 = "/repertoire/personne[adresse/pays='FRANCE'][position()=2]/descendant::*";
    path4 = "/repertoire/personne[@sexe='masculin'][adresse/ville='USA']/descendant::*";
    if (xml.evaluate) {
        var nodes = xml.evaluate(path2, xml, null, XPathResult.ANY_TYPE, null);
        var result = nodes.iterateNext();
        while (result) {
            txt += result.childNodes[0].nodeValue + "<br>";
            result = nodes.iterateNext();
        } 
    // Code For Internet Explorer
    } else if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        xml.setProperty("SelectionLanguage", "XPath");
        nodes = xml.selectNodes(path);
        for (i = 0; i < nodes.length; i++) {
            txt += nodes[i].childNodes[0].nodeValue + "<br>";
        }
    }
    document.getElementById("demo").innerHTML = txt;
}
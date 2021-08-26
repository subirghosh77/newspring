# NewSpring <img src="https://img.shields.io/badge/project-completed-brightgreen"> <img src="https://github.com/subirghosh77/newspring/blob/243f36b36fa33026caadacb8684e433b5b76db20/newspring/web/images/logo.svg" align="right" width="20%" height="20%">


<img src="https://img.shields.io/badge/Spring-v4.0.1-brightgreen"> <img src="https://img.shields.io/badge/Spring-MVC-brightgreen"> <img src="https://img.shields.io/badge/Java-v1.8-brightgreen"> <img src="https://img.shields.io/badge/MySQL-v5.7.26-brightgreen"> <img src="https://img.shields.io/badge/HTML-v5-brightgreen"> <img src="https://img.shields.io/badge/CSS-brightgreen"> <img src="https://img.shields.io/badge/JavaScript-brightgreen"> <img src="https://img.shields.io/badge/Jquery-v1.12.4-brightgreen"> <img src="https://img.shields.io/badge/Ajax-brightgreen"> <img src="https://img.shields.io/badge/Apache Tomcat-v8.0.32-brightgreen"> <img src="https://img.shields.io/badge/NetBeans-brightgreen">

Duration
--------
8 months

Technologies / Tools Used
-------------------------
JAVA, MySQL, Spring MVC, J2EE, HTML, CSS, JavaScript, AJAX, NetBeans, Apache Tomcat.

Description
-----------

__i.__ Main purpose of the project is making of a News Portal.

__ii.__ We have collected data from __`RSS`__ feeds of different News Website and have made a news website for displaying the news of all channels and websites.

__iii.__ We have got the URL from different news from __`RSS`__ feeds and displayed the news of the particular URL in front end.

Images
------

    Images of the projects are shown below.
    
> Index page

<img src="https://github.com/subirghosh77/newspring/blob/952b254c553791b94893f878dd7f3784659d8f76/newspring/web/images/ss/index.png" alt="index page" title="Index Page"> 

> Detailed news page

<img src="https://github.com/subirghosh77/newspring/blob/952b254c553791b94893f878dd7f3784659d8f76/newspring/web/images/ss/detailed-news.png" alt="detailed news" title="Detailed News">

> Available news paper page

<img src="https://github.com/subirghosh77/newspring/blob/952b254c553791b94893f878dd7f3784659d8f76/newspring/web/images/ss/available-news-paper.png" alt="available news paper" title="Available News Paper">

> News paper page 

<img src="https://github.com/subirghosh77/newspring/blob/952b254c553791b94893f878dd7f3784659d8f76/newspring/web/images/ss/news-paper.png" alt="news paper" title="News Paper">

> About page


> Contact page



> 404 page



Code
----

__`1. HTML Code`__

```html
<svg width="100%" height="380px" viewBox="0 0 636 324" fill="none">
   <g id="OBJECTS">
      <g id="Group">
         <path id="Vector" d="M101.3 255.2C101.3 255.2 111.1 272.6 181.8 280.5C252.5 288.4 288.2 314.9 333.1 322.8C378 330.7 433.6 278.5 481.8 286.5C530 294.4 588.2 264.2 592.8             255.2H101.3Z" fill="#2F1829"/>
      </g>
   </g>
</svg>
````

__`2. Java Script Code`__

```javascript
function triggerAjaxCall() {
   $.ajax({
      method: "POST",
      url: "ajaxcall-index",
      async: true,
      dataType: "json",
      beforeSend: function () {
      ...                    
      }
   }).done(function (items) {
      var text = "<div class='main_contener_div'style='height:fit-content;'>";
      $.each(items, function (index, item) {
         if(item.img === "null"){
            text=text+ "<div class='news_summary_div space_news_summary_div'><div class='news_div'><div class='news_first_part'><span class='decripition-type-div-    mobile'>"+item.channelsDes+"</span>...</div>...</div>...";                
         }else{
            text=text+ "<div class='news_summary_div space_news_summary_div'><div class='news_div'><div class='news_first_part'><span class='decripition-type-div-mobile'>"+item.channelsDes+"</span>...</div>...</div>...";                
         }
   });
      text = text + "</div>";
      $(".second_div.showNews").append(text);
   }).fail(function () {
      alert("Error In append text");
   });
}
```

__`3. Spring IOC`__

```java
List l=null;
List list=null;
int newItemCount;
if(session!=null && session.getAttribute("newsItemList")==null){
   l=fetchResourcesServiceImpl.getNewsItemDataFromDBService();
   System.out.println("List Size ->"+l.size());
   session.setAttribute("newsItemList", l);
   session.setAttribute("newsItemCount", 0);
}
list=(List)session.getAttribute("newsItemList");
newItemCount=(Integer)session.getAttribute("newsItemCount");
session.setAttribute("newsItemCount", newItemCount+10);
if(list.size()<=newItemCount + 10){
   return list.subList(newItemCount, list.size());
}else{
   return list.subList(newItemCount, newItemCount + 10);
} 
```

__`4. News Updater`__

```java
for (int m = 0; m < cNodesLvl1.getLength(); m++) {
   leafP = cNodesLvl1.item(m);
   if (!channelsDes.equals("all")) {
      item.setChannelsDes(channelsDes);
   }
   if (leafP.hasChildNodes()) {
      switch (leafP.getNodeName().toUpperCase()) {
         case "TITLE":
            item.setTitle(leafP.getChildNodes().item(0).getNodeValue());
         break;
      case "DESCRIPTION":
         if (leafP.getChildNodes().item(0).getNodeValue().contains("<img")) {
            splitFirst = leafP.getChildNodes().item(0).getNodeValue().split("</a>");
            if (splitFirst.length > 1) {
               item.setDescription(splitFirst[1]);
            } else {
               item.setDescription("No Description found.");
            }
            splitFinal = splitFirst[0].split("src=", splitFirst[0].length());       
            splitFinal = splitFinal[1].split(Character.toString((char) 34));
            item.setImg(splitFinal[1].substring(0, splitFinal[1].length()));
         } else {
            item.setDescription(leafP.getChildNodes().item(0).getNodeValue());
         }
        break;
        ...
        case "AUTHOR":
           item.setAuthor(leafP.getChildNodes().item(0).getNodeValue());
        break;
      }
   }
}
items.add(item);
```


__`5. Mysql Connection`__

> Create Connection

```java
final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
final String DB_URL = "jdbc:mysql://localhost:3306/dailynews";
final String USER = "root";
final String PASS = "admin";
try {
   Class.forName(JDBC_DRIVER);
   System.out.println("Connecting to database...");
   conn = DriverManager.getConnection(DB_URL, USER, PASS);
} catch (Exception ex) {
   ex.printStackTrace();
}
return conn;
```

> Close Connection

```java
conn = getConnection();
stmt = conn.createStatement();
if (stmt != null) {
   stmt.close();
}
if (conn != null) {
   conn.close();
}
return null;
```


__`6. Detabase Schema`__

<img src="https://github.com/subirghosh77/newspring/blob/243f36b36fa33026caadacb8684e433b5b76db20/newspring/web/images/ss/daigram.png" alt="ERR diagram" title="ERR Diagram" width="100%" height="100%">

Features
--------

Search by news,Login portal.

Future Work
-----------

__i.__ We have a plan to implement a feature where a user can post news by him in our news portal.

__ii.__ We have a plan to implement of __`Spring JDBC`__ and comment section.

Team Members
------------

https://github.com/subirghosh77 , https://github.com/sneha2245/

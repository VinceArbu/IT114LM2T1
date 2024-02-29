<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" MasterPageFile="Site1.master" AutoEventWireup="true" Inherits="Module1Exercise1.Exercise4"  %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>How would you compare plain HTML to ASP.NET WebForms</h3>
        <p>Answer:</p>
        <p>
            HTML and ASP.NET WebForms are two distinct 
            approaches to web development. Plain HTML involves 
            creating static web pages manually and relies on client-
            side scripting languages like JavaScript for interactivity 
            and data processing. It offers flexibility but requires more
            effort for handling server communication and data management
            <br />
            On the contrary, ASP.NET WebForms, which is built on  
            top of ASP.NET, follows a more structured, event-driven,
            and server-centric development approach. It provides a 
            component-based model with server controls that
            abstract HTML elements and handle events on the
            server. This abstraction simplifies development but can 
            limit flexibility compared to plain HTML.
            <br />
            To sum it up, plain HTML is known for its simplicity and aligns well with modern front-end development trends while
            ASP.NET WebForms offers rapid development capabilities by abstracting many aspects of web capabilities by abstracting many aspects of web.
        </p>
    </div>
    <div>
        <h3>The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples.</h3>
        <p>Answer:</p>
        <p>
            When deciding whether to use code-behind (C#) or JavaScript, it's important to consider what kind of logic is
            needed and what part of the application it's for. Code behind is best for server-related operations, while JavaScript is best for client-side interactivity.
            <br />
            If the logic involves server-side processing, data manipulation, or tasks that require access to server 
            resources, it should be implemented in the code-behind. This includes server-side validation, database
            operations, and business logic that must be executed on the server. Server-side logic provides benefits such as
            security, consistency, and centralized control over critical operations.
            <br />
            On the other hand, if the logic pertains to client-side interactivity, dynamic user interfaces, and enhancing the
            user experience without requiring a round-trip to the server, it should be implemented in JavaScript. Examples 
            include form validation, DOM manipulation, and AJAX calls to fetch or update data asynchronously. JavaScript
            is ideal for creating responsive and interactive web applications, as it runs in the user's browser.
            <br />
            To create a more efficient and seamless user experience in web applications, use code-behind for server-side 
            operations and logic that requires server resources, and JavaScript for client-side interactivity and enhancing the 
            user interface. By balancing the two, you can create a more efficient and seamless user experience.
        </p>
    </div>
    <div>
        <h3>Explain what post backs are.</h3>
        <p>Answer:</p>
        <p>
            When developing websites, a postback is the process whereby a client, usually a web browser, sends data to the server for processing. In ASP.NET WebForms, 
            postbacks are used to send a web page back to the server for further processing after it has been initially displayed to the user.
            <br />
            Whenever a user interacts with a web page by clicking a button, submitting a form, or triggering a control that causes a server-side event, a postback happens.
            During a postback, the client-side state of the page, including user input and control states, is sent to the server. 
            The server processes the request, runs the corresponding server-side event handlers, and then sends the updated HTML or response back to the client.
            The browser then renders the updated HTML, and the user sees the refreshed page.
            <br />
            Developers can optimize performance and control postbacks by using techniques such as partial page updates (UpdatePanel in ASP.NET AJAX) or embracing more modern approaches like ASP.NET MVC or client-side frameworks, such as Angular or React.
            With these modern approaches, the entire page isn't necessarily sent back and forth between the client and server for each user interaction. 
        </p>
</div>
</asp:Content>
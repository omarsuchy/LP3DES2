<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="LP3DES2.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>FORMULARIO DE REGISTRO</h3>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Email: "></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Ingrese su Email." Display="None"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="No posee formato de Email." ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$"></asp:RegularExpressionValidator>
<br />
<asp:Label ID="Label2" runat="server" Text="Username: "></asp:Label>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingrese su nombre de usuario." Display="None"></asp:RequiredFieldValidator>
<br />
<asp:Label ID="Label3" runat="server" Text="Edad: "></asp:Label>
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Ingrese su Edad" Display="None"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="La edad debe ser entre 15 y 99 años." MaximumValue="99" MinimumValue="15" Type="Integer"></asp:RangeValidator>
<br />
<asp:Label ID="Label4" runat="server" Text="Contraseña: "></asp:Label>
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Ingrese su contraseña" Display="None"></asp:RequiredFieldValidator>
<br />
<asp:Label ID="Label5" runat="server" Text="Repetir Contraseña: "></asp:Label>
<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Ingrese su contraseña" Display="None"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="None" ErrorMessage="Las contraseñas no coinciden."></asp:CompareValidator>
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF9900" />
<asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
</asp:Content>

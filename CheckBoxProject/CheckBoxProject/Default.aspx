<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CheckBoxProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   

    <div class="row">
        <div class="col-md-12">
            <br /><br /><br />
            <!--Quais linguagens você programa?<br />-->
            <asp:CheckBoxList runat="server" AutoPostBack="true" ID="chkLinguagem" RepeatDirection="Vertical" 
                    OnSelectedIndexChanged="chkLinguagem_SelectedIndexChanged" Visible="false">
                <asp:ListItem Text="Java" Value="J" />
                <asp:ListItem Text="C#" Value="CSharp" />
                <asp:ListItem Text="VB" Value="VB" />
                <asp:ListItem Text="Swift" Value="Swift" />
                <asp:ListItem Text="Objective-C" Value="Objective-C" />
            </asp:CheckBoxList>

            <asp:Button Text="Enviar" ID="cmdEnviar" OnClick="cmdEnviar_Click" runat="server" Visible="false" />

            

            <asp:TextBox runat="server" id="txtTermo" Text="Termo de aceite      Aceita em doar o seu órgão para o Google? "
                TextMode="MultiLine" Rows="10" Columns="20"/>
            <br />
            <asp:CheckBox Text="Aceito" ID="chkAceito" AutoPostBack="true" 
                OnCheckedChanged="chkAceito_CheckedChanged" runat="server" />
            <br /><asp:Button Text="Gravar" Visible="false" runat="server" ID="cmdGravar" />


        </div>
        
    </div>

</asp:Content>

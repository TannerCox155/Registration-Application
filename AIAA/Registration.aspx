<%@ Page Title="" Language="C#" MasterPageFile="~/AIAA/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Cox_AIAA_Registration.AIAA.Registration" %>
<asp:Content ID="MyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>29th Annual AIAA/USU Conference on Small Satellites 2023 Registration</h2>
    <br />

    <table>
        <tr>
            <td><div class="red">*</div><asp:RequiredFieldValidator ID="valFirstName" runat="server" ErrorMessage="*" ControlToValidate="txtFirstName" SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator></td>
            <td width="10">&nbsp;</td>
            <td>First Name:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtFirstName" runat="server" MaxLength="25"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="red">*</div><asp:RequiredFieldValidator ID="valLastName" runat="server" ErrorMessage="*" ControlToValidate="txtLastName" SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator></td>
            <td width="10">&nbsp;</td>
            <td>Last Name:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtLastName" runat="server" MaxLength="25"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td width="10">&nbsp;</td>
            <td>Job Title:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtJobTitle" runat="server" MaxLength="25"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td width="10">&nbsp;</td>
            <td>Company Name:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtCompanyName" runat="server" MaxLength="25"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="red">*</div><asp:RequiredFieldValidator ID="valAddress" runat="server" ErrorMessage="*" ControlToValidate="txtAddress" SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator></td>
            <td width="10">&nbsp;</td>
            <td>Address:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtAddress" runat="server" MaxLength="35"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="red">*</div><asp:RequiredFieldValidator ID="valCity" runat="server" ErrorMessage="*" ControlToValidate="txtCity" SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator></td>
            <td width="10">&nbsp;</td>
            <td>City:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtCity" runat="server" MaxLength="25"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="red">*</div><asp:RequiredFieldValidator ID="valState" runat="server" ErrorMessage="*" ControlToValidate="txtState" SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator></td>
            <td width="10">&nbsp;</td>
            <td>State:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtState" runat="server" MaxLength="2"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="red">*</div><asp:RequiredFieldValidator ID="valZip" runat="server" ErrorMessage="*" ControlToValidate="txtZip" SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator></td>
            <td width="10">&nbsp;</td>
            <td>Zip:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtZip" runat="server" MaxLength="5"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="red">*</div><asp:RequiredFieldValidator ID="valPhone" runat="server" ErrorMessage="*" ControlToValidate="txtPhone" SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator></td>
            <td width="10">&nbsp;</td>
            <td>Phone Number:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtPhone" runat="server" MaxLength="25"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="red">*</div><asp:RequiredFieldValidator ID="valEmail" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator></td>
            <td width="10">&nbsp;</td>
            <td>Email:</td>
            <td width="10">&nbsp;</td>
            <td><asp:TextBox ID="txtEmail" runat="server" MaxLength="25"></asp:TextBox></td>
        </tr>
       
    </table>

    <h2>Conference Fees & Registration Options</h2>
    <p>I plan to attend the Pre-Conference Workshop:</p>
    <asp:RadioButtonList ID="optRegOptions" runat="server" RepeatDirection="vertical" CellPadding="3" CellSpacing="3">
        <asp:ListItem Value="Early">&nbsp;Early (by May 7) - $575</asp:ListItem>
        <asp:ListItem Value="Regular">&nbsp;Regular (by July 31) - $675</asp:ListItem>
        <asp:ListItem Value="OnSite">&nbsp;On-site (after July 31) - $800</asp:ListItem>
        <asp:ListItem Value="Exhibitor">&nbsp;Exhibitor/Sponsor (one per exhibit space) - $525</asp:ListItem>
        <asp:ListItem Value="Student">&nbsp;Student - $150</asp:ListItem>
        <asp:ListItem Value="PreOnly">&nbsp;Pre-Conference Workshop ONLY - $50</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="valRegOptions" runat="server" ErrorMessage="*" SetFocusOnError="true" ControlToValidate="optRegOptions"></asp:RequiredFieldValidator>

    <br />
    <h2>Wednesday Evening Activities</h2>
    <p>Please check an event you wish to attend:</p>
    <asp:RadioButtonList ID="optActivities" runat="server" RepeatDirection="vertical" CellPadding="3" CellSpacing="3">
        <asp:ListItem Value="55">&nbsp;All-Terrain Vehicle Trail Riding - $55</asp:ListItem>
        <asp:ListItem Value="30">&nbsp;Canoeing In The Marshes - $30</asp:ListItem>
        <asp:ListItem Value="45">&nbsp;Dutch Oven Cookout at the Driving Range - $45</asp:ListItem>
        <asp:ListItem Value="0">&nbsp;Family History Center - FREE</asp:ListItem>
        <asp:ListItem Value="15">&nbsp;Faraday and Einstein: Fun Physics Lecture and Demonstrations - $15</asp:ListItem>
        <asp:ListItem Value="120">&nbsp;Fly Fishing at Sportsman&#39;s Paradise - $120</asp:ListItem>
        <asp:ListItem Value="30">&nbsp;Guided Naturalist Hike In Logan Canyon - $30</asp:ListItem>
        <asp:ListItem Value="55">&nbsp;Horseback Riding at Beaver Creek - $55</asp:ListItem>
        <asp:ListItem Value="45">&nbsp;Skeet Shooting and Archery - $45</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <h2>Dietary Request (Medical or Religious only)</h2>
    <p>Please select an option below if you requrie special dietary considerations.</p>
    <asp:DropDownList ID="lstLunch" runat="server">
        <asp:ListItem>None</asp:ListItem>
        <asp:ListItem>Vegetarian</asp:ListItem>
        <asp:ListItem>Vegan</asp:ListItem>
        <asp:ListItem>No Pork</asp:ListItem>
        <asp:ListItem>Gluten Free</asp:ListItem>
        <asp:ListItem>Kosher</asp:ListItem>
    </asp:DropDownList>
    <br /> <br />
    <p>Food allergy: <asp:TextBox ID="txtAllergy" runat="server" MaxLength="25"></asp:TextBox></p>

    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="btn btn-dark" OnClick="btnSubmit_Click" />
   
</asp:Content>

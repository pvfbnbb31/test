<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Cadet Intramural Management System</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
}
</style>
</head>

<body>

<form id="form1" runat="server">
	<div id="wrapper">
		<div id="header">
			Cadet Intramural Management System
		</div>
		<div id="content">
			<ul>
				<li><a href="default.aspx">Home</a></li>
				<li><a href="intramuralForm.aspx">Enter Intramural Data</a></li>
				<li><a href="intramuralReport.aspx">Display Sports Report</a></li>
				<li><a href="intramuralSearch.aspx">List Cadets By Sport</a></li>
			</ul>
			<h2>Sports Search Report</h2>
			<p>
			Select a Sport:
			<asp:DropDownList id="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource2" DataTextField="sportName" DataValueField="sportName">
			</asp:DropDownList>
			<asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="cadetIntramurals.mdb" SelectCommand="SELECT * FROM [Sport]">
			</asp:AccessDataSource>
			</p>
			<p>
			<asp:GridView id="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" HorizontalAlign="Center" EmptyDataText="No Cadets played Sport">
				<Columns>
					<asp:BoundField DataField="cadetLastName" HeaderText="Last Name" SortExpression="cadetLastName">
					</asp:BoundField>
					<asp:BoundField DataField="cadetFirstName" HeaderText="First Name" SortExpression="cadetFirstName">
					</asp:BoundField>
					<asp:BoundField DataField="sportName" HeaderText="Sport" SortExpression="sportName">
					</asp:BoundField>
					<asp:BoundField DataField="academicYear" HeaderText="Semester" SortExpression="academicYear">
					</asp:BoundField>
				</Columns>
			</asp:GridView>
			<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="cadetIntramurals.mdb" SelectCommand="SELECT * FROM [CadetsPlayingSports] WHERE ([sportName] = ?)">
				<SelectParameters>
					<asp:ControlParameter ControlID="DropDownList1" Name="sportName" PropertyName="SelectedValue" Type="String" />
				</SelectParameters>
			</asp:AccessDataSource>
			</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
		</div>
	</div>
</form>

</body>

</html>

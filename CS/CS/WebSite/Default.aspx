<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ASPxperience_RoundPanel_CollapsibleRoundPanel_CollapsibleRoundPanel" %>
<%@ Register Assembly="DevExpress.Web.v9.2" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>
<%@ Register Assembly="DevExpress.Web.v9.2" Namespace="DevExpress.Web.ASPxRoundPanel" TagPrefix="dxrp" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.2" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>How to implement collapsible ASPxRoundPanel</title>
    <script type="text/javascript">

    </script>
</head>
<body>
    <form id="form1" runat="server">
        
            
        <script type="text/javascript">
            function OnExpandCollapseButtonClick(s, e) {
    var isVisible = ContentPanel.GetVisible();
    s.SetText(isVisible ? "+" : "-");
    ContentPanel.SetVisible(!isVisible);
}

function OnExpandCollapseButtonStandardClick(s) {
    var isVisible = ContentPanel2.GetVisible();
    
    ContentPanel2.SetVisible(!isVisible);
}
        </script>
        <table cellspacing="10px">
        <tr style="background-color:ButtonFace">
        <td>
        ASPxRoundPanel with ASPxEditors:
        </td>
        <td>
        ASPxRoundPanel with the standard ASP editors:
        </td>
        </tr>
        <tr>
        <td>
        <dxe:ASPxButton ID="btnShowHide" runat="server" Text="Show / Hide" AllowFocus="False" AutoPostBack="False">
            <ClientSideEvents Click="function(s, e) { RoundPanel1.SetVisible(!RoundPanel1.GetVisible()); }" />
        </dxe:ASPxButton>
        </td>
        <td>
            <asp:button ID="Button1" runat="server"  Text="Show/Hide" OnClientClick="RoundPanel2.SetVisible(!RoundPanel2.GetVisible()); return false;" />
        </td>
        
        </tr>
       <tr>
       <td>
        <dxrp:ASPxRoundPanel ID="rpRoundPanel" runat="server" Width="200px" ClientInstanceName="RoundPanel1" HorizontalAlign="Justify">
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="white-space: nowrap;">
                            Collapsible Round Panel
                        </td>
                        <td style="width: 1%; padding-left: 5px;">
                            <dxe:ASPxButton ID="btnExpandCollapse" runat="server" Text="-" AllowFocus="False" AutoPostBack="False" Width="20px">
                                <Paddings Padding="1px" />
                                <FocusRectPaddings Padding="0" />
                                <ClientSideEvents Click="OnExpandCollapseButtonClick" />
                            </dxe:ASPxButton>
                        </td>
                    </tr>
                </table>
            </HeaderTemplate>
            <PanelCollection>
                <dxp:PanelContent runat="server">
                    <dxp:ASPxPanel ID="pnlContent" runat="server" Width="100%" ClientInstanceName="ContentPanel">
                        <PanelCollection>
                            <dxp:PanelContent runat="server">
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel ante congue ligula 
                                blandit rhoncus. Mauris tellus augue, viverra euismod, facilisis at, vestibulum sed, risus.
                                Vivamus lobortis ultricies erat.
                            </dxp:PanelContent>
                        </PanelCollection>
                    </dxp:ASPxPanel>
                </dxp:PanelContent>
            </PanelCollection>
        </dxrp:ASPxRoundPanel>
        </td>
        <td>
          <dxrp:ASPxRoundPanel ID="rpRoundPanel2" runat="server" Width="200px" ClientInstanceName="RoundPanel2" HorizontalAlign="Justify">
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="white-space: nowrap;">
                            Collapsible Round Panel
                        </td>
                        <td style="width: 1%; padding-left: 5px;">
                             <asp:button ID="Button2" runat="server" Text="+/-" OnClientClick="OnExpandCollapseButtonStandardClick(this); return false;" />
                        </td>
                    </tr>
                </table>
            </HeaderTemplate>
            <PanelCollection>
                <dxp:PanelContent runat="server">
                    <dxp:ASPxPanel ID="pnlContent2" runat="server" Width="100%" ClientInstanceName="ContentPanel2">
                        <PanelCollection>
                            <dxp:PanelContent runat="server">
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel ante congue ligula 
                                blandit rhoncus. Mauris tellus augue, viverra euismod, facilisis at, vestibulum sed, risus.
                                Vivamus lobortis ultricies erat.
                            </dxp:PanelContent>
                        </PanelCollection>
                    </dxp:ASPxPanel>
                </dxp:PanelContent>
            </PanelCollection>
        </dxrp:ASPxRoundPanel>
        </td>
        </tr>
        </table>
    </form>
</body>
</html>

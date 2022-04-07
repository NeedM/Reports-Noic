report 50274 "Global Sales Order Drawdowns"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Global Sales Order Drawdown.rdl';
    Caption = 'Globalsales order Drawdown';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;


    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            column(Sales_Shipment_Header_No_; "No.")
            {

            }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {

            }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }
            column(Quote_No_; "Quote No.")
            {

            }
            column(Blanket_Order_No; "Blanket Order No")
            {

            }
            column(Order_No_; "Order No.")
            {

            }
            dataitem("Sales Header"; "Sales Header")
            {
                DataItemLink = "No." = field("Order No.");
                DataItemLinkReference = "Sales Shipment Header";
                DataItemTableView = SORTING("Document Type", "No.") where("Document Type" = filter("Order"));
                column(No_; "No.")
                {

                }
                column(Blanket_Order_No_; "Blanket Order No.")
                {

                }
                dataitem("Sales Line"; "Sales Line")
                {
                    column(Sales_line_Document_No_; "Document No.")
                    {

                    }
                    column(Item_No_; "No.")
                    {

                    }
                    column(Sales_Line_Quantity; Quantity)
                    {

                    }
                    column(Quantity_Shipped; "Quantity Shipped")
                    {

                    }
                    column(Outstanding_Quantity; "Outstanding Quantity")
                    {

                    }

                }

            }
            dataitem("Sales Shipment Line"; "Sales Shipment Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = "Sales Shipment Header";
                column(Document_No_; "Document No.")
                {

                }

                column(Blanket_Order_No_2; "Blanket Order No.")
                {

                }
                column(Sales_Shipment_line_No_; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Quantity__Base_; "Quantity (Base)")
                {

                }
                column(Sales_Shipment_Line_Order_No_; "Order No.")
                {

                }
                column(Shipment_Date; "Shipment Date")
                {

                }
                column(remainingQuantity; remainingQuantity)
                {

                }
                trigger OnAfterGetRecord()
                var

                begin

                end;

            }

        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
        remainingQuantity: decimal;

}
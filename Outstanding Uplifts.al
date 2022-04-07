report 50259 "Outstanding Uplifts - Receipts"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Outstanding Uplifts - Receipts.rdlc';
    Caption = 'Outstanding Uplifts - Receipts';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = SORTING("No.") ORDER(Ascending);
           // PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", Priority;
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(STRSUBSTNO_Text000_PeriodText_; StrSubstNo(Text000, PeriodText))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Customer_TABLECAPTION__________CustFilter; Customer.TableCaption + ': ' + CustFilter)
            {
            }
            column(STRSUBSTNO_Text001_SalesLineFilter_; StrSubstNo(Text001, SalesLineFilter))
            {
            }
            column(Customer__No__; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            column(GrandTotalQuantity; GrandTotalQuantity)
            {
                DecimalPlaces = 0 : 0;
            }
            column(GrandTotalOutstandingQuantity; GrandTotalOutstandingQuantity)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Outstanding_Uplifts_ReportCaption; Outstanding_Uplifts_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(All_amounts_are_in_LCYCaption; All_amounts_are_in_LCYCaptionLbl)
            {
            }
            column(Sales_Line__Shipment_Date__Control34Caption; "Sales Line".FieldCaption("Shipment Date"))
            {
            }
            column(Sales_Line_Type_Control35Caption; "Sales Line".FieldCaption(Type))
            {
            }
            column(Sales_Line__No___Control36Caption; "Sales Line".FieldCaption("No."))
            {
            }
            column(Sales_Line_Description_Control37Caption; "Sales Line".FieldCaption(Description))
            {
            }
            column(Quantity_BoughtCaption; Quantity_BoughtCaptionLbl)
            {
            }
            column(Sales_Line__Outstanding_Quantity__Control39Caption; "Sales Line".FieldCaption("Outstanding Quantity"))
            {
            }
            column(SalesHeader__No__Caption; SalesHeader__No__CaptionLbl)
            {
            }
            column(Order_DateCaption; Order_DateCaptionLbl)
            {
            }
            column(Receipt_NoCaption; Receipt_NoCaptionLbl)
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }
            column(EmptyStringCaption_Control1000000010; EmptyStringCaption_Control1000000010Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000011; EmptyStringCaption_Control1000000011Lbl)
            {
            }
            column(Grand_TotalsCaption; Grand_TotalsCaptionLbl)
            {
            }
            column(EmptyStringCaption_Control1000000016; EmptyStringCaption_Control1000000016Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000017; EmptyStringCaption_Control1000000017Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000018; EmptyStringCaption_Control1000000018Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000019; EmptyStringCaption_Control1000000019Lbl)
            {
            }
            column(Customer_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            column(Customer_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Bill-to Customer No." = FIELD("No."), "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter");
                DataItemTableView = SORTING("Document Type", "Bill-to Customer No.", "Currency Code") WHERE("Document Type" = CONST(Order), "Outstanding Quantity" = FILTER(<> 0), Type = CONST(Item));
                RequestFilterFields = Type, "No.", "Receipt No.", "Shipment Date", "Quantity Shipped", "Location Code";
                RequestFilterHeading = 'Sales Order Line';
                column(SalesHeader__No__; SalesHeader."No.")
                {
                }
                column(SalesHeader__Order_Date_; SalesHeader."Order Date")
                {
                }
                column(Sales_Line_Description; Description)
                {
                }
                column(Sales_Line__No__; "No.")
                {
                }
                column(Sales_Line_Type; Type)
                {
                }
                column(Sales_Line__Shipment_Date_; "Shipment Date")
                {
                }
                column(Sales_Line_Quantity; Quantity)
                {
                }
                column(Sales_Line__Outstanding_Quantity_; "Outstanding Quantity")
                {
                }
                column(SalesHeader__Receipt_No__; SalesHeader."Receipt No.")
                {
                }
                column(Sales_Line__Shipment_Date__Control59; "Shipment Date")
                {
                }
                column(Sales_Line_Type_Control60; Type)
                {
                }
                column(Sales_Line__No___Control61; "No.")
                {
                }
                column(Sales_Line_Description_Control62; Description)
                {
                }
                column(Sales_Line_Quantity_Control63; Quantity)
                {
                }
                column(Sales_Line__Outstanding_Quantity__Control64; "Outstanding Quantity")
                {
                }
                column(SalesHeader__No___Control1000000015; SalesHeader."No.")
                {
                }
                column(SalesHeader__Order_Date__Control1000000020; SalesHeader."Order Date")
                {
                }
                column(SalesHeader__Receipt_No___Control1000000021; SalesHeader."Receipt No.")
                {
                }
                column(Sales_Line__Shipment_Date__Control34; "Shipment Date")
                {
                }
                column(Sales_Line_Type_Control35; Type)
                {
                }
                column(Sales_Line__No___Control36; "No.")
                {
                }
                column(SalesHeader__No___Control32; SalesHeader."No.")
                {
                }
                column(Sales_Line_Description_Control37; Description)
                {
                }
                column(SalesHeader__Order_Date__Control33; SalesHeader."Order Date")
                {
                }
                column(Sales_Line_Quantity_Control38; Quantity)
                {
                }
                column(Sales_Line__Outstanding_Quantity__Control39; "Outstanding Quantity")
                {
                }
                column(SalesHeader__Receipt_No___Control1000000003; SalesHeader."Receipt No.")
                {
                }
                column(Sales_Line__Shipment_Date__Control45; "Shipment Date")
                {
                }
                column(Sales_Line_Type_Control46; Type)
                {
                }
                column(Sales_Line__No___Control47; "No.")
                {
                }
                column(Sales_Line_Description_Control48; Description)
                {
                }
                column(Sales_Line_Quantity_Control49; Quantity)
                {
                }
                column(Sales_Line__Outstanding_Quantity__Control50; "Outstanding Quantity")
                {
                }
                column(SalesHeader__No___Control1000000022; SalesHeader."No.")
                {
                }
                column(SalesHeader__Order_Date__Control1000000023; SalesHeader."Order Date")
                {
                }
                column(SalesHeader__Receipt_No___Control1000000024; SalesHeader."Receipt No.")
                {
                }
                column(TotalOutstandingQuantity; TotalOutstandingQuantity)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(TotalQuantity; TotalQuantity)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(EmptyStringCaption_Control1000000001; EmptyStringCaption_Control1000000001Lbl)
                {
                }
                column(EmptyStringCaption_Control1000000002; EmptyStringCaption_Control1000000002Lbl)
                {
                }
                column(Sub_TotalsCaption; Sub_TotalsCaptionLbl)
                {
                }
                column(Sales_Line_Document_Type; "Document Type")
                {
                }
                column(Sales_Line_Document_No_; "Document No.")
                {
                }
                column(Sales_Line_Line_No_; "Line No.")
                {
                }
                column(Sales_Line_Bill_to_Customer_No_; "Bill-to Customer No.")
                {
                }
                column(Sales_Line_Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
                {
                }
                column(Sales_Line_Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    //Start - Dennis Kuchocha

                    if "Sales Line"."Receipt No." = '' then
                        CurrReport.Skip;
                    if "Sales Line"."Sell-to Customer No." = CurrCustomer then begin
                        TotalQuantity := TotalQuantity + "Sales Line".Quantity;
                        TotalOutstandingQuantity := TotalOutstandingQuantity + "Sales Line"."Outstanding Quantity";
                    end;
                    GrandTotalQuantity := GrandTotalQuantity + "Sales Line".Quantity;
                    GrandTotalOutstandingQuantity += "Sales Line"."Outstanding Quantity";
                    //End - Dennis Kuchocha

                    NewOrder := "Document No." <> SalesHeader."No.";
                    if NewOrder then
                        SalesHeader.Get(1, "Document No.");
                    if "Shipment Date" <= WorkDate then
                        BackOrderQty := "Outstanding Quantity"
                    else
                        BackOrderQty := 0;
                    SalesOrderAmount := "Outstanding Amount" / (1 + "VAT %" / 100);
                    SalesOrderAmountLCY := SalesOrderAmount;
                    if SalesHeader."Currency Code" <> '' then begin
                        if SalesHeader."Currency Factor" <> 0 then
                            SalesOrderAmountLCY :=
                              Round(
                                CurrExchRate.ExchangeAmtFCYToLCY(
                                  WorkDate, SalesHeader."Currency Code",
                                  SalesOrderAmountLCY, SalesHeader."Currency Factor"));
                        if PrintAmountsInLCY then begin
                            "Unit Price" :=
                              Round(
                                CurrExchRate.ExchangeAmtFCYToLCY(
                                  WorkDate, SalesHeader."Currency Code",
                                  "Unit Price", SalesHeader."Currency Factor"));
                            SalesOrderAmount := SalesOrderAmountLCY;
                        end;
                    end;
                    if SalesHeader."Prices Including VAT" then begin
                        "Unit Price" := "Unit Price" / (1 + "VAT %" / 100);
                        "Inv. Discount Amount" := "Inv. Discount Amount" / (1 + "VAT %" / 100);
                    end;
                    "Inv. Discount Amount" := "Inv. Discount Amount" * "Outstanding Quantity" / Quantity;
                    CurrencyCode2 := SalesHeader."Currency Code";
                    if PrintAmountsInLCY then
                        CurrencyCode2 := '';
                    CurrencyTotalBuffer.UpdateTotal(
                      CurrencyCode2,
                      SalesOrderAmount,
                      Counter1,
                      Counter1);
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CreateTotals(SalesOrderAmountLCY, SalesOrderAmount);
                end;
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                column(Customer_Name_Control56; Customer.Name)
                {
                }
                column(Customer_Name_Control58; Customer.Name)
                {
                }
                column(Integer_Number; Number)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if Number = 1 then
                        OK := CurrencyTotalBuffer.Find('-')
                    else
                        OK := CurrencyTotalBuffer.Next <> 0;
                    if not OK then
                        CurrReport.Break;

                    CurrencyTotalBuffer2.UpdateTotal(
                      CurrencyTotalBuffer."Currency Code",
                      CurrencyTotalBuffer."Total Amount",
                      Counter1,
                      Counter1);
                end;

                trigger OnPostDataItem()
                begin
                    CurrencyTotalBuffer.DeleteAll;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                with Customer do begin
                    if CurrCustomer <> Customer."No." then begin
                        TotalOutstandingQuantity := 0;
                        TotalQuantity := 0;
                        CurrCustomer := Customer."No.";
                    end;
                end;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.NewPagePerRecord := PrintOnlyOnePerPage;
                CurrReport.CreateTotals(SalesOrderAmountLCY);
                CurrCustomer := '';
                TotalOutstandingQuantity := 0;
                TotalQuantity := 0;
                GrandTotalQuantity := 0;
                GrandTotalOutstandingQuantity := 0;
            end;
        }
        dataitem(Integer2; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));

            trigger OnAfterGetRecord()
            begin
                if Number = 1 then
                    OK := CurrencyTotalBuffer2.Find('-')
                else
                    OK := CurrencyTotalBuffer2.Next <> 0;
                if not OK then
                    CurrReport.Break;
            end;

            trigger OnPostDataItem()
            begin
                CurrencyTotalBuffer2.DeleteAll;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(PrintAmountsInLCY; PrintAmountsInLCY)
                {
                    Caption = 'Show Amount in LCY';
                }
                field(PrintOnlyOnePerPage; PrintOnlyOnePerPage)
                {
                    Caption = 'New Page Per Customer';
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        CustFilter := Customer.GetFilters;
        SalesLineFilter := "Sales Line".GetFilters;
        PeriodText := "Sales Line".GetFilter("Shipment Date");
    end;

    var
        Text000: Label 'Shipment Date: %1';
        Text001: Label 'Sales Order Line: %1';
        CurrExchRate: Record "Currency Exchange Rate";
        CurrencyTotalBuffer: Record "Currency Total Buffer" temporary;
        CurrencyTotalBuffer2: Record "Currency Total Buffer" temporary;
        SalesHeader: Record "Sales Header";
        ExcelBuf: Record "Excel Buffer" temporary;
        CustFilter: Text[250];
        SalesLineFilter: Text[250];
        SalesOrderAmount: Decimal;
        SalesOrderAmountLCY: Decimal;
        PrintAmountsInLCY: Boolean;
        PeriodText: Text[80];
        PrintOnlyOnePerPage: Boolean;
        BackOrderQty: Decimal;
        NewOrder: Boolean;
        OK: Boolean;
        Counter1: Integer;
        CurrencyCode2: Code[80];
        PrintToExcel: Boolean;
        Text002: Label 'Data';
        Text003: Label 'Customer - Order Detail';
        Text004: Label 'Company Name';
        Text005: Label 'Report No.';
        Text006: Label 'Report Name';
        Text007: Label 'User ID';
        Text008: Label 'Date';
        Text009: Label 'Customer Filters';
        Text010: Label 'Sales Order Lines Filters';
        Text011: Label 'Quantity on Back Order';
        Text012: Label 'Outstanding Orders';
        Text013: Label 'All amounts are in LCY';
        Text014: Label ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
        Text015: Label 'Item';
        Text016: Label 'Order';
        "Order Date": Date;
        CurrCustomer: Code[80];
        GrandTotalQuantity: Decimal;
        TotalOutstandingQuantity: Decimal;
        TotalQuantity: Decimal;
        GrandTotalOutstandingQuantity: Decimal;
        Outstanding_Uplifts_ReportCaptionLbl: Label 'Outstanding Uplifts Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        All_amounts_are_in_LCYCaptionLbl: Label 'All amounts are in LCY';
        Quantity_BoughtCaptionLbl: Label 'Quantity Bought';
        SalesHeader__No__CaptionLbl: Label 'Order No.';
        Order_DateCaptionLbl: Label 'Order Date';
        Receipt_NoCaptionLbl: Label 'Receipt No';
        EmptyStringCaptionLbl: Label '.';
        EmptyStringCaption_Control1000000010Lbl: Label '.';
        EmptyStringCaption_Control1000000011Lbl: Label '.';
        Grand_TotalsCaptionLbl: Label 'Grand Totals';
        EmptyStringCaption_Control1000000016Lbl: Label '-';
        EmptyStringCaption_Control1000000017Lbl: Label '-';
        EmptyStringCaption_Control1000000018Lbl: Label '-';
        EmptyStringCaption_Control1000000019Lbl: Label '-';
        EmptyStringCaption_Control1000000001Lbl: Label '_';
        EmptyStringCaption_Control1000000002Lbl: Label '_';
        Sub_TotalsCaptionLbl: Label 'Sub Totals';
}


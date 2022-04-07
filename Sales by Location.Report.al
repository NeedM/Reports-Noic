report 50252 "Sales by Location"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Sales by Location.rdl';


    dataset
    {
        dataitem("Sales Invoice Line"; "Sales Invoice Line")
        {
            DataItemTableView = SORTING("Sell-to Customer No.");
            RequestFilterFields = "No.", "Sell-to Customer No.";
            RequestFilterHeading = 'Sales Invoice';
            column(Document_No_; "Document No.")
            {
            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(No_; "No.")
            {
            }
            column(Description; Description)
            {

            }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {
            }
            column(CustomerGroup; CustomerGroup)
            {

            }
            column(CustomerName; customerName)
            {

            }
            column(Type; Type)
            {
            }
            column(Amount; Amount)
            {

            }
            column(Quantity; Quantity)
            {

            }
            column(itemName; itemName)
            {

            }
            column(Location_Code; "Location Code")
            {

            }
            column(locationName; locationName)
            {

            }

            column(Company_picture; companyInfo.Picture)
            {

            }

            column(CompanyInfo_Name; CompanyInfo.Name)
            {
            }
            column(CompanyInfo_Picture; CompanyInfo.Picture)
            {
            }
            column(CompanyInfo_Address; CompanyInfo.Address)
            {
            }
            column(CompanyInfo_Address2; CompanyInfo."Address 2")
            {
            }
            column(CompanyInfo_City; CompanyInfo.City)
            {
            }
            column(CompanyInfo_Phone; CompanyInfo."Phone No.")
            {
            }
            column(CompanyInfo1_Picture; CompanyInfo.Picture)
            {
            }

            trigger OnAfterGetRecord()
            var
                ItemName: text[50];
            begin
                Case LineType of
                    LineType::"G/L Account":
                        if GLAccount.Get("Sales Invoice Line"."No.") then
                            itemName := GLAccount.Name;
                    lineType::Item:
                        if item.Get("Sales Invoice Line"."No.") then
                            ItemName := item.Description;
                End;

                if Customer.Get("Sell-to Customer No.") then begin

                    customerName := Customer.Name;
                    CustomerGroup := Customer."Customer Posting Group";
                end;

                if Location.Get("Sales Invoice Line"."Location Code") then
                    locationName := Location.Name;

            end;

        }


    }

    requestpage
    {
        layout
        {
            area(Content)
            {

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

    trigger onPreReport()
    var
    //myInt: Integer;
    begin
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);
    end;

    var
        myInt: Integer;
        companyinfo: Record "Company Information";
        itemName: Text[100];
        item: record item;
        GLAccount: record "G/L Account";
        LineType: Option "G/L Account","Item";

        Customer: record customer;
        customerName: Text[100];
        CustomerGroup: Text[100];
        locationName: Text[100];
        location: record Location;
}
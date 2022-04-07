report 50253 "Customer Sales Order Summary"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Customer Sales Orders.rdl';


    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("Sell-to Customer No.") Where("Document Type" = const("Order"));
            RequestFilterFields = "Sell-to Customer No.", "Posting Date", "No.";
            RequestFilterHeading = 'Sales Header';
            column(Amount_SalesHeader; Amount)
            {
            }
            column(AmountLCY_SalesHeader; "Amount (LCY)")
            {
            }
            column(BilltoName_SalesHeader; "Bill-to Name")
            {
            }
            column(BilltoCustomerNo_SalesHeader; "Bill-to Customer No.")
            {
            }
            column(BlanketOrderNo_SalesHeader; "Blanket Order No.")
            {
            }
            column(DocumentType_SalesHeader; "Document Type")
            {
            }
            column(DocumentDate_SalesHeader; "Document Date")
            {
            }
            column(HQSupRef_SalesHeader; "HQ Sup. Ref")
            {
            }
            column(No_SalesHeader; "No.")
            {
            }
            column(PickInstructions_SalesHeader; "Pick Instructions")
            {
            }
            column(PostingDate_SalesHeader; "Posting Date")
            {
            }
            column(ProformaInvoiceNo_SalesHeader; "Proforma Invoice No.")
            {
            }
            column(SelltoCustomerNo_SalesHeader; "Sell-to Customer No.")
            {
            }
            column(SelltoCustomerName_SalesHeader; "Sell-to Customer Name")
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
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLinkReference = "Sales Header";
                DataItemLink = "Document No." = field("No."), "Document Type" = field("Document Type");
                column(Quantity; Quantity)
                {

                }
                column(No_; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(Document_Type; "Document Type")
                {

                }
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

    trigger onPreReport()
    var
    //myInt: Integer;
    begin
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);
    end;

    var
        myInt: Integer;
        CompanyInfo: record "Company Information";
        quantity: decimal;

}
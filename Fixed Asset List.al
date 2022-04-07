report 50256 "Fixed Assets list"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    DefaultLayout = RDLC;
    RDLCLayout = './Fixed Assets list.rdl';
    caption = 'Fixed Assets List';
    PreviewMode = PrintLayout;


    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
            DataItemTableView = SORTING("FA Class Code");
            RequestFilterFields = "FA Class Code";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Fixed_Asset__FA_Class_Code_; "FA Class Code")
            {
            }
            column(Fixed_Asset__No__; "No.")
            {
            }
            column(Fixed_Asset_Description; Description)
            {
            }

            column(Fixed_Asset__FA_Location_Code_; "FA Location Code")
            {
            }
            column(Fixed_Asset__Serial_No__; "Serial No.")
            {
            }
            column(FA_Subclass_Code; "FA Subclass Code")
            {

            }
            column(FA_Class_Code; "FA Class Code")
            {

            }

            column(Fixed_Asset_List_ReportCaption; Fixed_Asset_List_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Fixed_Asset__No__Caption; FieldCaption("No."))
            {
            }
            column(Fixed_Asset_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Fixed_Asset__FA_Location_Code_Caption; FieldCaption("FA Location Code"))
            {
            }
            column(Fixed_Asset__Serial_No__Caption; FieldCaption("Serial No."))
            {
            }
            column(Fixed_Asset__FA_Class_Code_Caption; FieldCaption("FA Class Code"))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("FA Class Code");
            end;

            trigger OnAfterGetRecord()
            var

            begin
                if FAClass.Get("FA Class Code") then
                    FAClassName := FAClass.Name;
                if FASubClass.Get("FA Subclass Code") then
                    FASubClassName := FASubClass.Name;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        Fixed_Asset_List_ReportCaptionLbl: Label 'Fixed Asset List Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        FAClassName: Text[100];
        FAClass: Record "FA Class";
        FASubClass: REcord "FA Subclass";
        FASubClassName: Text[100];
        FAClassCode: Code[10];
        FASubClassCode: Code[10];

}


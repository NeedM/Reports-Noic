report 50255 "Fixed Asset - Disposal List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Fixed Asset - Disposal List.rdl';
    Caption = 'Fixed Asset - Disporsal List';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;

    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
            RequestFilterFields = "No.", "FA Class Code", "FA Subclass Code", "Budgeted Asset";
            column(MainHeadLineText; MainHeadLineText)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(USERID; UserId)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(DeprBookText; DeprBookText)
            {
            }
            column(Fixed_Asset__TABLECAPTION__________FAFilter; "Fixed Asset".TableCaption + ': ' + FAFilter)
            {
            }
            column(FAFilter; FAFilter)
            {
            }
            column(PrintDetails; PrintDetails)
            {
            }
            column(BudgetReport; BudgetReport)
            {
            }
            column(GroupTotals; Format(GroupTotals))
            {
            }
            column(GroupCodeName; GroupCodeName)
            {
            }
            column(HeadLineText_1_; HeadLineText[1])
            {
            }
            column(HeadLineText_2_; HeadLineText[2])
            {
            }
            column(HeadLineText_3_; HeadLineText[3])
            {
            }
            column(HeadLineText_4_; HeadLineText[4])
            {
            }
            column(HeadLineText_5_; HeadLineText[5])
            {
            }
            column(HeadLineText_6_; HeadLineText[6])
            {
            }
            column(HeadLineText_7_; HeadLineText[7])
            {
            }
            column(HeadLineText_8_; HeadLineText[8])
            {
            }
            column(HeadLineText_9_; HeadLineText[9])
            {
            }
            column(HeadLineText_10_; HeadLineText[10])
            {
            }
            column(FANo; FANo)
            {
            }
            column(FADescription; FADescription)
            {
            }
            column(GroupHeadLine; GroupHeadLine)
            {
            }
            column(Fixed_Asset__No__; "No.")
            {
            }
            column(Fixed_Asset_Description; Description)
            {
            }
            column(StartAmounts_1_; StartAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(NetChangeAmounts_1_; NetChangeAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(DisposalAmounts_1_; DisposalAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalEndingAmounts_1_; TotalEndingAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(StartAmounts_2_; StartAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(NetChangeAmounts_2_; NetChangeAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(DisposalAmounts_2_; DisposalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalEndingAmounts_2_; TotalEndingAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(BookValueAtStartingDate; BookValueAtStartingDate)
            {
                AutoFormatType = 1;
            }
            column(BookValueAtEndingDate; BookValueAtEndingDate)
            {
                AutoFormatType = 1;
            }
            column(FORMAT_Text002__________GroupHeadLine_; Format(Text002 + ': ' + GroupHeadLine))
            {
            }
            column(GroupStartAmounts_1_; GroupStartAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(GroupNetChangeAmounts_1_; GroupNetChangeAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(GroupDisposalAmounts_1_; GroupDisposalAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalEndingAmounts_1__Control48; TotalEndingAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(GroupStartAmounts_2_; GroupStartAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(GroupNetChangeAmounts_2_; GroupNetChangeAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(GroupDisposalAmounts_2_; GroupDisposalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalEndingAmounts_2__Control60; TotalEndingAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(BookValueAtStartingDate_Control63; BookValueAtStartingDate)
            {
                AutoFormatType = 1;
            }
            column(BookValueAtEndingDate_Control66; BookValueAtEndingDate)
            {
                AutoFormatType = 1;
            }
            column(GroupHeadLine_Control15; Format(GroupHeadLine))
            {
            }
            column(TotalStartAmounts_1_; TotalStartAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalNetChangeAmounts_1_; TotalNetChangeAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalDisposalAmounts_1_; TotalDisposalAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalEndingAmounts_1__Control49; TotalEndingAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalStartAmounts_2_; TotalStartAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalNetChangeAmounts_2_; TotalNetChangeAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalDisposalAmounts_2_; TotalDisposalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalEndingAmounts_2__Control61; TotalEndingAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(BookValueAtStartingDate_Control64; BookValueAtStartingDate)
            {
                AutoFormatType = 1;
            }
            column(BookValueAtEndingDate_Control67; BookValueAtEndingDate)
            {
                AutoFormatType = 1;
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Fixed_Asset_FA_Class_Code; "FA Class Code")
            {
            }
            column(Fixed_Asset_FA_Subclass_Code; "FA Subclass Code")
            {
            }
            column(Fixed_Asset_Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Fixed_Asset_Global_Dimension_2_Code; "Global Dimension 2 Code")
            {
            }
            column(Fixed_Asset_FA_Location_Code; "FA Location Code")
            {
            }
            column(Fixed_Asset_Component_of_Main_Asset; "Component of Main Asset")
            {
            }
            column(Fixed_Asset_FA_Posting_Group; "FA Posting Group")
            {
            }

            trigger OnAfterGetRecord()
            begin

                if not FADeprBook.Get("No.", DeprBookCode) then
                    CurrReport.Skip;
                if SkipRecord then
                    CurrReport.Skip;

                if GroupTotals = GroupTotals::"FA Posting Group" then
                    if "FA Posting Group" <> FADeprBook."FA Posting Group" then
                        Error(Text007, FieldCaption("FA Posting Group"), "No.");

                BeforeAmount := 0;
                EndingAmount := 0;
                if BudgetReport then
                    BudgetDepreciation.Calculate(
                      "No.", GetStartingDate(StartingDate), EndingDate, DeprBookCode, BeforeAmount, EndingAmount);

                i := 0;
                while i < NumberOfTypes do begin
                    i := i + 1;
                    case i of
                        1:
                            PostingType := FADeprBook.FieldNo("Acquisition Cost");
                        2:
                            PostingType := FADeprBook.FieldNo(Depreciation);
                        3:
                            PostingType := FADeprBook.FieldNo("Write-Down");
                        4:
                            PostingType := FADeprBook.FieldNo(Appreciation);
                        5:
                            PostingType := FADeprBook.FieldNo("Custom 1");
                        6:
                            PostingType := FADeprBook.FieldNo("Custom 2");
                    end;

                    if StartingDate <= 00000101D then
                        StartAmounts[i] := 0
                    else
                        StartAmounts[i] := FAGenReport.CalcFAPostedAmount("No.", PostingType, Period1, StartingDate,
                          EndingDate, DeprBookCode, BeforeAmount, EndingAmount, false, true);
                    NetChangeAmounts[i] :=
                      FAGenReport.CalcFAPostedAmount(
                        "No.", PostingType, Period2, StartingDate, EndingDate,
                        DeprBookCode, BeforeAmount, EndingAmount, false, true);
                    if GetPeriodDisposal then
                        DisposalAmounts[i] := -(StartAmounts[i] + NetChangeAmounts[i])
                    else
                        DisposalAmounts[i] := 0;
                    if i >= 3 then
                        AddPostingType(i - 3);
                end;
                //// two added below
                if DisposalAmounts[1] = 0 then
                    CurrReport.Skip;

                for j := 1 to NumberOfTypes do
                    TotalEndingAmounts[j] := StartAmounts[j] + NetChangeAmounts[j] + DisposalAmounts[j];

                BookValueAtEndingDate := 0;
                BookValueAtStartingDate := 0;
                for j := 1 to NumberOfTypes do begin
                    BookValueAtEndingDate := BookValueAtEndingDate + TotalEndingAmounts[j];
                    BookValueAtStartingDate := BookValueAtStartingDate + StartAmounts[j];
                end;

                if IsServiceTier then begin
                    MakeGroupHeadLine;
                    UpdateTotals;
                    CreateGroupTotals;
                end;
            end;

            trigger OnPostDataItem()
            begin
                if IsServiceTier then
                    CreateTotals;
            end;

            trigger OnPreDataItem()
            begin
                case GroupTotals of
                    GroupTotals::"FA Class":
                        SetCurrentKey("FA Class Code");
                    GroupTotals::"FA Subclass":
                        SetCurrentKey("FA Subclass Code");
                    GroupTotals::"FA Location":
                        SetCurrentKey("FA Location Code");
                    GroupTotals::"Main Asset":
                        SetCurrentKey("Component of Main Asset");
                    GroupTotals::"Global Dimension 1":
                        SetCurrentKey("Global Dimension 1 Code");
                    GroupTotals::"Global Dimension 2":
                        SetCurrentKey("Global Dimension 2 Code");
                    GroupTotals::"FA Posting Group":
                        SetCurrentKey("FA Posting Group");
                end;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(DeprBookCode; DeprBookCode)
                    {
                        Caption = 'Depreciation Book';
                        TableRelation = "Depreciation Book";
                    }
                    field(StartingDate; StartingDate)
                    {
                        Caption = 'Starting Date';
                    }
                    field(EndingDate; EndingDate)
                    {
                        Caption = 'Ending Date';
                    }
                    field(GroupTotals; GroupTotals)
                    {
                        Caption = 'Group Totals';
                        OptionCaption = ' ,FA Class,FA Subclass,FA Location,Main Asset,Global Dimension 1,Global Dimension 2,FA Posting Group';
                    }
                    field(PrintDetails; PrintDetails)
                    {
                        Caption = 'Print per Fixed Asset';
                    }
                    field(BudgetReport; BudgetReport)
                    {
                        Caption = 'Budget Report';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            if DeprBookCode = '' then begin
                FASetup.Get;
                DeprBookCode := FASetup."Default Depr. Book";
            end;
        end;
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        NumberOfTypes := 6;
        DeprBook.Get(DeprBookCode);
        if GroupTotals = GroupTotals::"FA Posting Group" then
            FAGenReport.SetFAPostingGroup("Fixed Asset", DeprBook.Code);
        FAGenReport.AppendFAPostingFilter("Fixed Asset", StartingDate, EndingDate);
        FAFilter := "Fixed Asset".GetFilters;
        MainHeadLineText := Text000;
        if BudgetReport then
            MainHeadLineText := StrSubstNo('%1 %2', MainHeadLineText, Text001);
        DeprBookText := StrSubstNo('%1%2 %3', DeprBook.TableCaption, ':', DeprBookCode);
        MakeGroupTotalText;
        FAGenReport.ValidateDates(StartingDate, EndingDate);
        MakeDateText;
        MakeHeadLine;
        if PrintDetails then begin
            FANo := "Fixed Asset".FieldCaption("No.");
            FADescription := "Fixed Asset".FieldCaption(Description);
        end;
        Period1 := Period1::"Before Starting Date";
        Period2 := Period2::"Net Change";
    end;

    var
        Text000: Label 'Fixed Asset - Book Value 01';
        Text001: Label '(Budget Report)';
        Text002: Label 'Group Total';
        Text003: Label 'Group Totals';
        Text004: Label 'in Period';
        Text005: Label 'Disposal';
        Text006: Label 'Addition';
        Text007: Label '%1 has been modified in fixed asset %2';
        FASetup: Record "FA Setup";
        DeprBook: Record "Depreciation Book";
        FADeprBook: Record "FA Depreciation Book";
        FA: Record "Fixed Asset";
        FAPostingTypeSetup: Record "FA Posting Type Setup";
        FAGenReport: Codeunit "FA General Report";
        BudgetDepreciation: Codeunit "Budget Depreciation";
        DeprBookCode: Code[10];
        FAFilter: Text[250];
        MainHeadLineText: Text[100];
        DeprBookText: Text[50];
        GroupCodeName: Text[50];
        GroupHeadLine: Text[50];
        FANo: Text[50];
        FADescription: Text[50];
        GroupTotals: Option " ","FA Class","FA Subclass","FA Location","Main Asset","Global Dimension 1","Global Dimension 2","FA Posting Group";
        GroupTotalsText: Text[50];
        HeadLineText: array[10] of Text[50];
        StartAmounts: array[6] of Decimal;
        NetChangeAmounts: array[6] of Decimal;
        DisposalAmounts: array[6] of Decimal;
        GroupStartAmounts: array[6] of Decimal;
        GroupNetChangeAmounts: array[6] of Decimal;
        GroupDisposalAmounts: array[6] of Decimal;
        TotalStartAmounts: array[6] of Decimal;
        TotalNetChangeAmounts: array[6] of Decimal;
        TotalDisposalAmounts: array[6] of Decimal;
        TotalEndingAmounts: array[6] of Decimal;
        BookValueAtStartingDate: Decimal;
        BookValueAtEndingDate: Decimal;
        i: Integer;
        j: Integer;
        NumberOfTypes: Integer;
        PostingType: Integer;
        Period1: Option "Before Starting Date","Net Change","at Ending Date";
        Period2: Option "Before Starting Date","Net Change","at Ending Date";
        StartingDate: Date;
        EndingDate: Date;
        PrintDetails: Boolean;
        BudgetReport: Boolean;
        BeforeAmount: Decimal;
        EndingAmount: Decimal;
        AcquisitionDate: Date;
        DisposalDate: Date;
        StartText: Text[30];
        EndText: Text[30];
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        TotalCaptionLbl: Label 'Total';

    local procedure AddPostingType(PostingType: Option "Write-Down",Appreciation,"Custom 1","Custom 2")
    var
        i: Integer;
        j: Integer;
    begin
        i := PostingType + 3;
        with FAPostingTypeSetup do begin
            case PostingType of
                PostingType::"Write-Down":
                    Get(DeprBookCode, "FA Posting Type"::"Write-Down");
                PostingType::Appreciation:
                    Get(DeprBookCode, "FA Posting Type"::Appreciation);
                PostingType::"Custom 1":
                    Get(DeprBookCode, "FA Posting Type"::"Custom 1");
                PostingType::"Custom 2":
                    Get(DeprBookCode, "FA Posting Type"::"Custom 2");
            end;
            if "Depreciation Type" then
                j := 2
            else
                if "Acquisition Type" then
                    j := 1;
        end;
        if j > 0 then begin
            StartAmounts[j] := StartAmounts[j] + StartAmounts[i];
            StartAmounts[i] := 0;
            NetChangeAmounts[j] := NetChangeAmounts[j] + NetChangeAmounts[i];
            NetChangeAmounts[i] := 0;
            DisposalAmounts[j] := DisposalAmounts[j] + DisposalAmounts[i];
            DisposalAmounts[i] := 0;
        end;
    end;

    local procedure SkipRecord(): Boolean
    begin
        AcquisitionDate := FADeprBook."Acquisition Date";
        DisposalDate := FADeprBook."Disposal Date";
        exit(
          "Fixed Asset".Inactive or
          (AcquisitionDate = 0D) or
          (AcquisitionDate > EndingDate) and (EndingDate > 0D) or
          (DisposalDate > 0D) and (DisposalDate < StartingDate))
    end;

    local procedure GetPeriodDisposal(): Boolean
    begin
        if DisposalDate > 0D then
            if (EndingDate = 0D) or (DisposalDate <= EndingDate) then
                exit(true);
        exit(false);
    end;

    local procedure MakeGroupTotalText()
    begin
        case GroupTotals of
            GroupTotals::"FA Class":
                GroupCodeName := Format("Fixed Asset".FieldCaption("FA Class Code"));
            GroupTotals::"FA Subclass":
                GroupCodeName := Format("Fixed Asset".FieldCaption("FA Subclass Code"));
            GroupTotals::"FA Location":
                GroupCodeName := Format("Fixed Asset".FieldCaption("FA Location Code"));
            GroupTotals::"Main Asset":
                GroupCodeName := Format("Fixed Asset".FieldCaption("Main Asset/Component"));
            GroupTotals::"Global Dimension 1":
                GroupCodeName := Format("Fixed Asset".FieldCaption("Global Dimension 1 Code"));
            GroupTotals::"Global Dimension 2":
                GroupCodeName := Format("Fixed Asset".FieldCaption("Global Dimension 2 Code"));
            GroupTotals::"FA Posting Group":
                GroupCodeName := Format("Fixed Asset".FieldCaption("FA Posting Group"));
        end;
        if GroupCodeName <> '' then
            GroupCodeName := Format(StrSubstNo('%1%2 %3', Text003, ':', GroupCodeName));
    end;

    local procedure MakeDateText()
    begin
        StartText := StrSubstNo('%1', StartingDate - 1);
        EndText := StrSubstNo('%1', EndingDate);
    end;

    local procedure MakeHeadLine()
    var
        InPeriodText: Text[30];
        DisposalText: Text[30];
    begin
        InPeriodText := Text004;
        DisposalText := Text005;
        HeadLineText[1] := StrSubstNo('%1 %2', FADeprBook.FieldCaption("Acquisition Cost"), StartText);
        HeadLineText[2] := StrSubstNo('%1 %2', Text006, InPeriodText);
        HeadLineText[3] := StrSubstNo('%1 %2', DisposalText, InPeriodText);
        HeadLineText[4] := StrSubstNo('%1 %2', FADeprBook.FieldCaption("Acquisition Cost"), EndText);
        HeadLineText[5] := StrSubstNo('%1 %2', FADeprBook.FieldCaption(Depreciation), StartText);
        HeadLineText[6] := StrSubstNo('%1 %2', FADeprBook.FieldCaption(Depreciation), InPeriodText);
        HeadLineText[7] := StrSubstNo(
          '%1 %2 %3', DisposalText, FADeprBook.FieldCaption(Depreciation), InPeriodText);
        HeadLineText[8] := StrSubstNo('%1 %2', FADeprBook.FieldCaption(Depreciation), EndText);
        HeadLineText[9] := StrSubstNo('%1 %2', FADeprBook.FieldCaption("Book Value"), StartText);
        HeadLineText[10] := StrSubstNo('%1 %2', FADeprBook.FieldCaption("Book Value"), EndText);
    end;

    local procedure MakeGroupHeadLine()
    begin
        for j := 1 to NumberOfTypes do begin
            GroupStartAmounts[j] := 0;
            GroupNetChangeAmounts[j] := 0;
            GroupDisposalAmounts[j] := 0;
        end;
        with "Fixed Asset" do begin
            case GroupTotals of
                GroupTotals::"FA Class":
                    GroupHeadLine := Format("FA Class Code");
                GroupTotals::"FA Subclass":
                    GroupHeadLine := Format("FA Subclass Code");
                GroupTotals::"FA Location":
                    GroupHeadLine := Format("FA Location Code");
                GroupTotals::"Main Asset":
                    begin
                        FA."Main Asset/Component" := FA."Main Asset/Component"::"Main Asset";
                        GroupHeadLine :=
                          Format(StrSubstNo('%1 %2', Format(FA."Main Asset/Component"), "Component of Main Asset"));
                        if "Component of Main Asset" = '' then
                            GroupHeadLine := Format(StrSubstNo('%1 %2', GroupHeadLine, '*****'));
                    end;
                GroupTotals::"Global Dimension 1":
                    GroupHeadLine := Format("Global Dimension 1 Code");
                GroupTotals::"Global Dimension 2":
                    GroupHeadLine := Format("Global Dimension 2 Code");
                GroupTotals::"FA Posting Group":
                    GroupHeadLine := Format("FA Posting Group");
            end;
        end;
        if GroupHeadLine = '' then
            GroupHeadLine := Format('*****');
    end;

    local procedure UpdateTotals()
    begin

        for j := 1 to NumberOfTypes do begin
            GroupStartAmounts[j] := GroupStartAmounts[j] + StartAmounts[j];
            GroupNetChangeAmounts[j] := GroupNetChangeAmounts[j] + NetChangeAmounts[j];
            GroupDisposalAmounts[j] := GroupDisposalAmounts[j] + DisposalAmounts[j];
            TotalStartAmounts[j] := TotalStartAmounts[j] + StartAmounts[j];
            TotalNetChangeAmounts[j] := TotalNetChangeAmounts[j] + NetChangeAmounts[j];
            TotalDisposalAmounts[j] := TotalDisposalAmounts[j] + DisposalAmounts[j];
        end;
    end;

    local procedure CreateGroupTotals()
    begin

        for j := 1 to NumberOfTypes do
            TotalEndingAmounts[j] :=
              GroupStartAmounts[j] + GroupNetChangeAmounts[j] + GroupDisposalAmounts[j];
        BookValueAtEndingDate := 0;
        BookValueAtStartingDate := 0;
        for j := 1 to NumberOfTypes do begin
            BookValueAtEndingDate := BookValueAtEndingDate + TotalEndingAmounts[j];
            BookValueAtStartingDate := BookValueAtStartingDate + GroupStartAmounts[j];
        end;
    end;

    local procedure CreateTotals()
    begin

        for j := 1 to NumberOfTypes do
            TotalEndingAmounts[j] :=
              TotalStartAmounts[j] + TotalNetChangeAmounts[j] + TotalDisposalAmounts[j];
        BookValueAtEndingDate := 0;
        BookValueAtStartingDate := 0;
        for j := 1 to NumberOfTypes do begin
            BookValueAtEndingDate := BookValueAtEndingDate + TotalEndingAmounts[j];
            BookValueAtStartingDate := BookValueAtStartingDate + TotalStartAmounts[j];
        end;
    end;

    local procedure GetStartingDate(StartingDate: Date): Date
    begin
        if StartingDate <= 00000101D then
            exit(0D)
        else
            exit(StartingDate - 1);
    end;
}


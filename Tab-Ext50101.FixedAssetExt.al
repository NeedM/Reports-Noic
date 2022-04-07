tableextension 50101 "Fixed Asset Ext" extends "Fixed Asset"
{
    fields
    {
        field(50021; "Noic Asset No."; Code[20])
        {
            Caption = 'Noic Asset No.';
            DataClassification = ToBeClassified;
        }
        field(50022; "FA Acquisition Date"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("FA Ledger Entry"."FA Posting Date" WHERE("FA No." = FIELD("No."), "FA Posting Type" = CONST("Acquisition Cost")));
            Caption = 'FA Acquisition Date';

        }
        field(50023; "FA Acquisition Cost"; Decimal)
        {
            Caption = 'FA Acquisition Cost';
            fieldclass = FlowField;
            CalcFormula = Lookup("FA Ledger Entry".Amount WHERE("FA No." = FIELD("No."), "FA Posting Type" = CONST("Acquisition Cost")));
        }
        field(50024; Disposed; Boolean)
        {
            Caption = 'Disposed';
            FieldClass = FlowField;
            CalcFormula = Exist("FA Depreciation Book" WHERE("Disposal Date" = FILTER(<> ''), "FA No." = FIELD("No.")));
        }
        field(50025; "Disposal Date"; Date)
        {
            Caption = 'Disposal Value';
            FieldClass = flowfield;
            CalcFormula = Lookup("FA Ledger Entry"."FA Posting Date" WHERE("FA No." = FIELD("No."), "FA Posting Category" = CONST(Disposal), "FA Posting Type" = CONST("Acquisition Cost")));
        }
        field(50026; "Disposal Value"; Decimal)
        {
            Caption = 'Disposal Value';
            FieldClass = FlowField;
            CalcFormula = Lookup("FA Ledger Entry"."Amount (LCY)" WHERE("FA No." = FIELD("No."), "FA Posting Type" = CONST("Proceeds on Disposal")));
        }
        field(50027; "Accumulated Dep on Disposal"; decimal)
        {
            Caption = 'Accumulated Dep on Disposal';
            FieldClass = flowfield;
            CalcFormula = Lookup("FA Ledger Entry".Amount WHERE("FA No." = FIELD("No."), "FA Posting Category" = CONST(Disposal), "FA Posting Type" = CONST(Depreciation)));
        }
    }
}

query 50100 ItemQuery
{
    Caption = 'ItemQuery';
    QueryType = Normal;

    elements
    {
        dataitem(Item; Item)
        {

            column(Inventory; Inventory)
            {
            }
            column(No; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(InventoryPostingGroup; "Inventory Posting Group")
            {
            }
            column(UnitPrice; "Unit Price")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}

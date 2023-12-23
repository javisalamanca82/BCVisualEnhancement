/// <summary>
/// Page Tenant Media Factbox (ID 50002).
/// </summary>
page 50002 "Tenant Media Factbox"
{
    Caption = 'Tenant Media Factbox';
    PageType = CardPart;
    SourceTable = "Tenant Media";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            field(Content1; Rec.Content)
            {
                ToolTip = 'Specifies the picture of the media.';
            }
        }
    }
}
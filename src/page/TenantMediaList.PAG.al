/// <summary>
/// Page Tenant Media Factbox (ID 50001).
/// </summary>
page 50000 "Tenant Media List"
{
    ApplicationArea = All;
    Caption = 'Tenant Media List';
    PageType = List;
    SourceTable = "Tenant Media";
    UsageCategory = Lists;
    CardPageId = "Tenant Media Card";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies a unique identifier for this media.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; TenantMediaTools.GetUserName(Rec.SystemCreatedBy))
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field(Content1; Rec.Content)
                {
                    ToolTip = 'Specifies the picture of the media.';
                }
            }
        }

        area(FactBoxes)
        {
            part(Content2; "Tenant Media Factbox")
            {
                SubPageLink = ID = field(ID);
            }
        }
    }

    var
        TenantMediaTools: Codeunit "Tenant Media Tools";
}
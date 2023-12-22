/// <summary>
/// Page Tenant Media Card (ID 50001).
/// </summary>
page 50001 "Tenant Media Card"
{
    Caption = 'Tenant Media Card';
    PageType = Card;
    SourceTable = "Tenant Media";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                Editable = false;

                field("Company Name"; Rec."Company Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies which company this media is created in.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the media.';
                }
                field("File Name"; Rec."File Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the file.';
                }
                field(Content1; Rec.Content)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the picture of the media.';
                }
            }
            group(Audit)
            {
                Caption = 'Audit';
                Editable = false;

                field("Creating User"; Rec."Creating User")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the user who created the media.';
                }
                field("Expiration Date"; Rec."Expiration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Expiration Date field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; TenantMediaTools.GetUserName(Rec.SystemCreatedBy))
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; TenantMediaTools.GetUserName(Rec.SystemModifiedBy))
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
            }
        }
    }

    var
        TenantMediaTools: Codeunit "Tenant Media Tools";
}

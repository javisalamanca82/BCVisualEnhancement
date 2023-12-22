/// <summary>
/// Table Tenant Media Comment (ID 50000).
/// </summary>
table 50000 "Tenant Media Comment"
{
    Caption = 'Tenant Media Comment';
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID; Guid)
        {
            Caption = 'ID';
            TableRelation = "Tenant Media".ID;
        }
        field(2; Comment; Text[2048])
        {
            Caption = 'Comment';
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}

/// <summary>
/// Codeunit Tenant Media Tools (ID 50000).
/// </summary>
codeunit 50000 "Tenant Media Tools"
{
    /// <summary>
    /// GetUserName.
    /// </summary>
    /// <param name="UserGuid">Guid.</param>
    /// <returns>Return value of type Code[50].</returns>
    procedure GetUserName(UserGuid: Guid): Code[50]
    var
        User: Record User;
    begin
        if User.Get(UserGuid) then
            exit(User."User Name");
        exit('');
    end;

    /// <summary>
    /// SetComment.
    /// </summary>
    /// <param name="RecordGuid">Guid.</param>
    /// <param name="NewComment">Text.</param>
    procedure SetComment(RecordGuid: Guid; NewComment: Text)
    var
        TenantMediaComment: Record "Tenant Media Comment";
        NewRecord: Boolean;
    begin
        if StrLen(NewComment) > MaxStrLen(TenantMediaComment.Comment) then
            Error(CommentLenghtErr, MaxStrLen(TenantMediaComment.Comment));

        NewRecord := not TenantMediaComment.Get(RecordGuid);

        case true of
            NewRecord and (NewComment = ''):
                exit;
            NewRecord and (NewComment <> ''):
                begin
                    TenantMediaComment.Init();
                    TenantMediaComment.ID := RecordGuid;
                    TenantMediaComment.Comment := NewComment;
                    TenantMediaComment.Insert();
                end;
            not NewRecord and (NewComment = ''):
                TenantMediaComment.Delete();
            not NewRecord and (NewComment <> ''):
                begin
                    TenantMediaComment.Comment := NewComment;
                    TenantMediaComment.Modify();
                end;
        end;



    end;

    var
        CommentLenghtErr: Label 'The lenght of the comment cannot be greater than %1';
}

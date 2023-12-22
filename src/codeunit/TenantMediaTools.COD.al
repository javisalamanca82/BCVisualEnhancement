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
}

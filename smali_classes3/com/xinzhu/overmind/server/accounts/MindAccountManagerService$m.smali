.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;

.field final synthetic val$toAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

.field final synthetic val$userFrom:I


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "accounts",
            "response",
            "accountType",
            "expectActivityLaunch",
            "stripAuthTokenFromResult",
            "accountName",
            "authDetailsRequired",
            "val$account",
            "val$response",
            "val$toAccounts",
            "val$userFrom"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iput-object p9, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$account:Landroid/accounts/Account;

    iput-object p10, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$response:Landroid/accounts/IAccountManagerResponse;

    iput-object p11, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$toAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    iput p12, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$userFrom:I

    invoke-direct/range {p0 .. p8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "booleanResult"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$response:Landroid/accounts/IAccountManagerResponse;

    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$toAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    iget v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$userFrom:I

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onResult(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAccountCredentialsForClone, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$account:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$loginOptions:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
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
            0x0,
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
            "updateLastAuthenticatedTime",
            "val$account",
            "val$authTokenType",
            "val$loginOptions"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iput-object p10, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$account:Landroid/accounts/Account;

    iput-object p11, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$authTokenType:Ljava/lang/String;

    iput-object p12, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$loginOptions:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", updateCredentials, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", loginOptions "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

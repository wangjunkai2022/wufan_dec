.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$statusToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V
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
            "val$statusToken"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iput-object p9, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->val$account:Landroid/accounts/Account;

    iput-object p10, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->val$statusToken:Ljava/lang/String;

    invoke-direct/range {p0 .. p8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    const-string v2, "null bundle"

    invoke-static {p1, v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    const-string v3, "MAccountManagerService"

    .line 3
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " calling onResult() on response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, -0x1

    const-string v3, "errorCode"

    .line 5
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 7
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errorMessage"

    .line 8
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v1, v0, v2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_3
    const-string v2, "booleanResult"

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 11
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    const-string v2, "no result in response"

    invoke-static {p1, v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    .line 12
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 14
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-static {p1, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$3000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->val$statusToken:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V

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

    const-string p1, ", isCredentialsUpdateSuggested, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

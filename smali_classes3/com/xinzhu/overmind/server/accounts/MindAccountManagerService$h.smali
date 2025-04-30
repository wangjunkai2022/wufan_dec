.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$callback:Landroid/os/RemoteCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$account",
            "val$uid",
            "val$packageName",
            "val$callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$account:Landroid/accounts/Account;

    iput p3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$uid:I

    iput-object p4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    return-void
.end method

.method private handleAuthenticatorResponse(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessGranted"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$account:Landroid/accounts/Account;

    iget v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$uid:I

    const-string v3, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-static {v0, v1, v3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$3100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object v1

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$uid:I

    .line 2
    invoke-static {v3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->j(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object v3

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$3200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$callback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "booleanResult"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMessage"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->handleAuthenticatorResponse(Z)V

    return-void
.end method

.method public onRequestContinued()V
    .locals 0

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->handleAuthenticatorResponse(Z)V

    return-void
.end method

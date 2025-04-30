.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$callerPkgSigDigest:[B

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3
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
            0x1010,
            0x1010,
            0x1010,
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
            "val$loginOptions",
            "val$account",
            "val$authTokenType",
            "val$notifyOnAuthFailure",
            "val$permissionGranted",
            "val$callerUid",
            "val$customTokens",
            "val$callerPkg",
            "val$callerPkgSigDigest",
            "val$accounts"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-object v2, p9

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$loginOptions:Landroid/os/Bundle;

    move-object v2, p10

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    move-object v2, p11

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    move v2, p12

    iput-boolean v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$notifyOnAuthFailure:Z

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$permissionGranted:Z

    move/from16 v2, p14

    iput v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerUid:I

    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$customTokens:Z

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerPkg:Ljava/lang/String;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerPkgSigDigest:[B

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$accounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    invoke-direct/range {p0 .. p8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_6

    const-string v0, "authTokenLabelKey"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "intent"

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    const/4 v4, 0x0

    iget v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerUid:I

    .line 3
    invoke-static {p0}, Lcom/xinzhu/haunted/android/accounts/b;->b(Ljava/lang/Object;)Lcom/xinzhu/haunted/android/accounts/b;

    move-result-object p1

    iget-object p1, p1, Lcom/xinzhu/haunted/android/accounts/b;->a:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Landroid/accounts/AccountAuthenticatorResponse;

    iget-object v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    const/4 v8, 0x1

    .line 4
    invoke-static/range {v2 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->onResult(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v0, "authtoken"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x5

    if-eqz v8, :cond_4

    const-string v2, "authAccount"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "accountType"

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$customTokens:Z

    if-nez v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2600(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const-wide/16 v2, 0x0

    const-string v4, "android.accounts.expiry"

    .line 15
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 16
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$customTokens:Z

    if-eqz v2, :cond_4

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v9, v2

    if-lez v4, :cond_4

    .line 18
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerPkgSigDigest:[B

    iget-object v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2700(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "the type and name should not be empty"

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    return-void

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Intent;

    if-eqz v6, :cond_6

    .line 21
    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$notifyOnAuthFailure:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$customTokens:Z

    if-nez v1, :cond_6

    .line 22
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 23
    invoke-virtual {p0, v1, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "invalid intent in bundle returned"

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    return-void

    .line 25
    :cond_5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    const-string v0, "authFailedMessage"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$accounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 27
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v8

    const-string v7, "android"

    .line 28
    invoke-static/range {v2 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2800(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 29
    :cond_6
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$permissionGranted:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAuthToken, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", loginOptions "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notifyOnAuthFailure "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

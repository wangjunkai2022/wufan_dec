.class abstract Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "y"
.end annotation


# instance fields
.field private final mIsPasswordForwardingAllowed:Z

.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# direct methods
.method public constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "accounts",
            "response",
            "accountType",
            "expectActivityLaunch",
            "accountName",
            "authDetailsRequired",
            "updateLastAuthenticationTime",
            "isPasswordForwardingAllowed"
        }
    .end annotation

    move-object v10, p0

    move-object v1, p1

    .line 1
    iput-object v1, v10, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    move/from16 v0, p9

    .line 3
    iput-boolean v0, v10, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;->mIsPasswordForwardingAllowed:Z

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    const-string v0, "intent"

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v3

    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "invalid intent in bundle returned"

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 6
    :cond_1
    iget-boolean v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mExpectActivityLaunch:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x2

    const-string v4, "MAccountManagerService"

    if-nez p1, :cond_5

    .line 10
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calling onError() on response "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    const-string v2, "null bundle returned"

    invoke-static {p1, v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_5
    const/4 v5, -0x1

    const-string v6, "errorCode"

    .line 13
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_6

    if-nez v2, :cond_6

    .line 14
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errorMessage"

    .line 15
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v1, v0, v2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    .line 17
    :cond_6
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;->mIsPasswordForwardingAllowed:Z

    if-nez v2, :cond_7

    const-string v2, "password"

    .line 18
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    const-string v2, "authtoken"

    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 20
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v4, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v2, "accountSessionBundle"

    .line 24
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v5, "accountType"

    .line 25
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 27
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    const-string v6, "Account type in session bundle doesn\'t match request."

    .line 28
    invoke-static {v4, v6}, Lcom/xinzhu/overmind/utils/m;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_a
    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/c;->e()Lcom/xinzhu/overmind/server/accounts/c;

    move-result-object v5

    .line 31
    invoke-virtual {v5, v3}, Lcom/xinzhu/overmind/server/accounts/c;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 32
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v2, 0x3

    .line 33
    invoke-static {v4, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "Failed to encrypt session bundle!"

    .line 34
    invoke-static {v4, v2, p1}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_b
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    const-string v2, "failed to encrypt session bundle"

    invoke-static {p1, v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    .line 36
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-static {v1, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$3000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

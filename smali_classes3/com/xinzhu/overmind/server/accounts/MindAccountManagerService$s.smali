.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "s"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallingUid:I

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field private final mIncludeManagedNotVisible:Z

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# direct methods
.method public constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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
            "type",
            "features",
            "callingUid",
            "packageName",
            "includeManagedNotVisible"
        }
    .end annotation

    move-object v9, p0

    move-object v1, p1

    .line 1
    iput-object v1, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    .line 4
    iput-object v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    move/from16 v0, p6

    .line 6
    iput v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCallingUid:I

    move-object v0, p5

    .line 7
    iput-object v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mFeatures:[Ljava/lang/String;

    move-object/from16 v0, p7

    .line 8
    iput-object v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mPackageName:Ljava/lang/String;

    move/from16 v0, p8

    .line 9
    iput-boolean v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mIncludeManagedNotVisible:Z

    return-void
.end method


# virtual methods
.method public checkAccount()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->sendResult()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "MAccountManagerService"

    .line 4
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    const-string v1, "remote exception"

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 2
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

    if-nez p1, :cond_0

    const/4 p1, 0x5

    const-string v0, "null bundle"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "booleanResult"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 6
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->checkAccount()V

    return-void
.end method

.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    iget v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCallingUid:I

    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mPackageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mIncludeManagedNotVisible:Z

    invoke-virtual/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 4
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->checkAccount()V

    return-void
.end method

.method public sendResult()V
    .locals 7

    const-string v0, "MAccountManagerService"

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Landroid/accounts/Account;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 3
    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " calling onResult() on response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "accounts"

    .line 7
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 8
    invoke-interface {v1, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "failure while notifying response"

    .line 10
    invoke-static {v0, v2, v1}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
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

    const-string p1, ", getAccountsByTypeAndFeatures, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mFeatures:[Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, ","

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

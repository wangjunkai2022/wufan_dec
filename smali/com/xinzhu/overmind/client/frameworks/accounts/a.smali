.class public Lcom/xinzhu/overmind/client/frameworks/accounts/a;
.super Lcom/xinzhu/overmind/server/accounts/e$b;
.source "MindAccountManager.java"


# static fields
.field private static sAccountManager:Lcom/xinzhu/overmind/client/frameworks/accounts/a;


# instance fields
.field private mService:Lcom/xinzhu/overmind/server/accounts/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->sAccountManager:Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/e$b;-><init>()V

    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/client/frameworks/accounts/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->sAccountManager:Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    return-object v0
.end method

.method private getService()Lcom/xinzhu/overmind/server/accounts/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->mService:Lcom/xinzhu/overmind/server/accounts/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->mService:Lcom/xinzhu/overmind/server/accounts/e;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "account_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/e$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->mService:Lcom/xinzhu/overmind/server/accounts/e;

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "authTokenType",
            "requiredFeatures",
            "expectActivityLaunch",
            "options"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xinzhu/overmind/server/accounts/e;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "authTokenType",
            "requiredFeatures",
            "expectActivityLaunch",
            "options",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/xinzhu/overmind/server/accounts/e;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "password",
            "extras"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "password",
            "extras",
            "visibility"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/e;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentUserId",
            "userId",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->addSharedAccountsFromParentUser(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->clearPassword(Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "options",
            "expectActivityLaunch",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/e;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "userFrom",
            "userTo"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/e;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "userHandle"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "expectActivityLaunch"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "sessionBundle",
            "expectActivityLaunch",
            "appInfo",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/e;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "features",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "packageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "accountType"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountType",
            "userId",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "features",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "packageName",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "uid",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "authTokenType",
            "notifyOnAuthFailure",
            "expectActivityLaunch",
            "options",
            "uid"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/xinzhu/overmind/server/accounts/e;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "authTokenType"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "key"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "userHandle"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "features",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/e;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountType",
            "authToken"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "statusToken"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->onAccountAccessed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountTypes",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "expectActivityLaunch",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/e;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountToRename",
            "newName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountToRename",
            "newName",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "packageName",
            "newVisibility"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "authToken"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "password"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "key",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/e;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/e;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "authTokenType",
            "requiredFeatures",
            "expectActivityLaunch",
            "options"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xinzhu/overmind/server/accounts/e;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "authTokenType",
            "expectActivityLaunch",
            "options"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/e;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountTypes",
            "opPackageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/e;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "uid",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/e;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "authTokenType",
            "expectActivityLaunch",
            "options"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getService()Lcom/xinzhu/overmind/server/accounts/e;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/e;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.class abstract Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "MindAccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "x"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# direct methods
.method public constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
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
            "accountType",
            "expectActivityLaunch",
            "stripAuthTokenFromResult",
            "accountName",
            "authDetailsRequired"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 2
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
            "stripAuthTokenFromResult",
            "accountName",
            "authDetailsRequired",
            "updateLastAuthenticatedTime"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 3
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    .line 5
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumRequestContinued:I

    .line 6
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumErrors:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz p4, :cond_1

    .line 8
    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 9
    iput-boolean p6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mStripAuthTokenFromResult:Z

    .line 10
    iput-object p3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 11
    iput-object p4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mExpectActivityLaunch:Z

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mCreationTime:J

    .line 14
    iput-object p7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountName:Ljava/lang/String;

    .line 15
    iput-boolean p8, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthDetailsRequired:Z

    .line 16
    iput-boolean p9, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mUpdateLastAuthenticatedTime:Z

    .line 17
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p2

    monitor-enter p2

    .line 18
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 20
    :try_start_1
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    iput-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 22
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->binderDied()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authenticatorType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$1100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Lcom/xinzhu/overmind/server/accounts/d;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/d;->d(Landroid/accounts/AuthenticatorDescription;I)Lcom/xinzhu/overmind/server/pm/l$d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "MAccountManagerService"

    if-nez v0, :cond_1

    .line 4
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is no authenticator for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bailing out"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 6
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.accounts.AccountAuthenticator"

    .line 7
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v4, v0, Lcom/xinzhu/overmind/server/pm/l$d;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performing bindService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xinzhu/overmind/server/pm/l$d;->c:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 13
    invoke-static {v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v6

    .line 14
    invoke-virtual {v4, p1, p0, v5, v6}, Lcom/xinzhu/overmind/server/am/f;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 15
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    nop

    .line 16
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/l$d;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-static {v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->cancelTimeout()V

    .line 9
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->unbind()V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 4
    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v1

    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/xinzhu/overmind/server/am/f;->unbindService(Landroid/os/IBinder;I)V

    .line 6
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    const-string v0, "MAccountManagerService"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "bind failure"

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public binderDied()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->close()V

    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v0, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method protected checkKeyIntent(ILandroid/content/Intent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authUid",
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0xc4

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 7
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v4

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v2, p2, v5, v3, v4}, Lcom/xinzhu/overmind/server/pm/h;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 10
    :cond_1
    :try_start_1
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 11
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x10

    .line 12
    invoke-virtual {v2, v3, p1, v4}, Lcom/xinzhu/overmind/server/pm/h;->hasSignatureCapability(III)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 14
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s)."

    const-string v4, "MAccountManagerService"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    aput-object p1, v6, v2

    const/4 p1, 0x2

    .line 15
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    aput-object p2, v6, p1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/m;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    throw p1
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->close()V

    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 5
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

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumErrors:I

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "MAccountManagerService"

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " calling onError() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Session.onError: caught RemoteException while responding"

    .line 7
    invoke-static {v2, p2, p1}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Session.onError: already closed"

    .line 9
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestContinued()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumRequestContinued:I

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "errorCode"

    .line 1
    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    const-string v1, "accountType"

    const-string v3, "authAccount"

    if-eqz p1, :cond_6

    const-string v4, "booleanResult"

    const/4 v5, 0x0

    .line 2
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 5
    :goto_0
    iget-boolean v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mUpdateLastAuthenticatedTime:Z

    if-eqz v7, :cond_1

    if-nez v4, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 6
    iget-boolean v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthDetailsRequired:Z

    if-eqz v4, :cond_6

    .line 7
    :cond_3
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$600(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 8
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    new-instance v5, Landroid/accounts/Account;

    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountName:Ljava/lang/String;

    iget-object v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$700(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;)Z

    .line 9
    :cond_4
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthDetailsRequired:Z

    if-eqz v2, :cond_6

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_5

    .line 10
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Landroid/accounts/Account;

    iget-object v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountName:Ljava/lang/String;

    iget-object v8, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    if-eqz v2, :cond_5

    .line 11
    iget-wide v5, v2, Lcom/xinzhu/overmind/server/accounts/MindAccount;->c:J

    :cond_5
    const-string v2, "lastAuthenticatedTime"

    .line 12
    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const/4 v2, 0x5

    const-string v4, "intent"

    if-eqz p1, :cond_8

    .line 13
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    if-eqz v5, :cond_9

    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v6

    iget v6, v6, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 15
    invoke-virtual {p0, v6, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string p1, "invalid intent in bundle returned"

    .line 16
    invoke-virtual {p0, v2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    return-void

    :cond_7
    const-string v6, "target"

    .line 17
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    :cond_9
    :goto_2
    const-string v6, "authtoken"

    if-eqz p1, :cond_a

    .line 18
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 19
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 22
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    invoke-static {v1, v3, v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object v3

    new-instance v7, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    iget-object v8, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 24
    invoke-static {v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 25
    invoke-static {v1, v3, v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$1000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 26
    :cond_a
    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mExpectActivityLaunch:Z

    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    .line 27
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 28
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    goto :goto_3

    .line 29
    :cond_b
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_11

    const/4 v3, 0x2

    const-string v4, "MAccountManagerService"

    if-nez p1, :cond_d

    .line 30
    :try_start_0
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " calling onError() on response "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string p1, "null bundle returned"

    .line 32
    invoke-interface {v1, v2, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_4

    .line 33
    :cond_d
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mStripAuthTokenFromResult:Z

    if-eqz v2, :cond_e

    .line 34
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    :cond_e
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " calling onResult() on response "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v2, -0x1

    .line 37
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_10

    if-nez v5, :cond_10

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "errorMessage"

    .line 39
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-interface {v1, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_4

    .line 41
    :cond_10
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 42
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "failure while notifying response"

    .line 43
    invoke-static {v4, v0, p1}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_4
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    const-string p2, "remote exception"

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "disconnected"

    .line 3
    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    const-string v1, "MAccountManagerService"

    .line 4
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Session.onServiceDisconnected: caught RemoteException while responding"

    .line 5
    invoke-static {v1, v0, p1}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onTimedOut()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "timeout"

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    const-string v2, "MAccountManagerService"

    .line 3
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Session.onTimedOut: caught RemoteException while responding"

    .line 4
    invoke-static {v2, v1, v0}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumRequestContinued:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mCreationTime:J

    sub-long/2addr p1, v1

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

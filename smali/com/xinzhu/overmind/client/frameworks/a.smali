.class public Lcom/xinzhu/overmind/client/frameworks/a;
.super Ljava/lang/Object;
.source "MindActivityManager.java"


# static fields
.field private static b:Lcom/xinzhu/overmind/client/frameworks/a;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/am/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/frameworks/a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/a;->b:Lcom/xinzhu/overmind/client/frameworks/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/xinzhu/overmind/client/frameworks/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/a;->b:Lcom/xinzhu/overmind/client/frameworks/a;

    return-object v0
.end method

.method private i()Lcom/xinzhu/overmind/server/am/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/a;->a:Lcom/xinzhu/overmind/server/am/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/a;->a:Lcom/xinzhu/overmind/server/am/d;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "activity_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/am/d$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/a;->a:Lcom/xinzhu/overmind/server/am/d;

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/d;->stopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public B(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentSender"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->unregisterPendingIntent(Landroid/os/IBinder;)V
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

.method public a(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerInfo"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

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

.method public b(Landroid/os/IBinder;)Lcom/xinzhu/overmind/entity/PendingIntentRecord;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentSender"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->findPendingIntent(Landroid/os/IBinder;)Lcom/xinzhu/overmind/entity/PendingIntentRecord;

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

.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "service",
            "binder",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/am/d;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

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

.method public c(I)Lcom/xinzhu/overmind/server/ProcessRecord;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->findProcessRecordByPid(I)Lcom/xinzhu/overmind/server/ProcessRecord;

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

.method public e(Landroid/os/IBinder;)Landroid/content/ComponentName;
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

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

.method public f(Landroid/os/IBinder;)Ljava/lang/String;
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

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

.method public g(Landroid/os/IBinder;)Ljava/lang/String;
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

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

.method public h(Landroid/os/IBinder;)I
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public j(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->getTaskInfo(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;

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

.method public k(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/ClientConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/d;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/ClientConfig;

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

.method public l(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "token",
            "activityRecord"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/d;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
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

.method public m(Landroid/os/IBinder;)V
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->onActivityDestroyed(Landroid/os/IBinder;)V
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

.method public n(Landroid/os/IBinder;)V
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->onActivityResumed(Landroid/os/IBinder;)V
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

.method public o(Landroid/os/IBinder;)V
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->onFinishActivity(Landroid/os/IBinder;)V
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

.method public p(Landroid/os/IBinder;)V
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
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->onFinishActivityAffinity(Landroid/os/IBinder;)V
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

.method public q(Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proxyIntent",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/d;->onServiceDestroy(Landroid/content/Intent;I)V
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

.method public r(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proxyIntent",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/d;->onServiceUnbind(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;

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

.method public s(Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proxyIntent",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/d;->onStartCommand(Landroid/content/Intent;I)V
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

.method public startActivity(Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/d;->startActivity(Landroid/content/Intent;I)V
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

.method public startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/d;->startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

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

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/d;->stopService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

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

.method public t(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/d;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

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

.method public u(Lcom/xinzhu/overmind/entity/PendingIntentRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/am/d;->registerPendingIntent(Lcom/xinzhu/overmind/entity/PendingIntentRecord;)V
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

.method public unbindService(Landroid/os/IBinder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "binder",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/d;->unbindService(Landroid/os/IBinder;I)V
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

.method public v(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/d;->restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
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

.method public w(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/d;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

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

.method public x(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
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
            "userId",
            "callingPackage",
            "intent",
            "resolvedType",
            "resultTo",
            "options"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xinzhu/overmind/server/am/d;->startActivities(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public y(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "userId",
            "callingPackage",
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/xinzhu/overmind/server/am/d;->startActivityAms(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public z(Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/a;->i()Lcom/xinzhu/overmind/server/am/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/d;->startActivityFromExistTask(Landroid/content/Intent;I)I
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

.class public Lcom/xinzhu/overmind/server/d;
.super Ljava/lang/Object;
.source "MindProcessManager.java"


# static fields
.field public static final e:Ljava/lang/String; = "MindProcessManager"

.field public static f:Lcom/xinzhu/overmind/server/d;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/d;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/d;->f:Lcom/xinzhu/overmind/server/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/os/IBinder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "app",
            "client",
            "pid"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/xinzhu/overmind/client/c$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/client/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->kill()V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lcom/xinzhu/overmind/server/d$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/xinzhu/overmind/server/d$a;-><init>(Lcom/xinzhu/overmind/server/d;Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5
    :goto_0
    iput-object v0, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    .line 6
    iput p3, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 7
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/c;->getActivityThread()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xinzhu/haunted/android/app/p$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    iput-object p2, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->appThread:Landroid/os/IInterface;

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/c;->getActivityThread()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xinzhu/haunted/android/app/j;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    iput-object p2, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->appThread:Landroid/os/IInterface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 10
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 11
    :goto_1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public static d()Lcom/xinzhu/overmind/server/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/d;->f:Lcom/xinzhu/overmind/server/d;

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "processName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->getRunningAppProcessesContainPlugin()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static f(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "pid"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->getRunningAppProcessesContainPlugin()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "processName = null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private h()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    .line 1
    iget-object v2, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 2
    iget v3, v3, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private i(Lcom/xinzhu/overmind/server/ProcessRecord;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.xinzhu.overmind.initprocess.clientconfig"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.xinzhu.overmind.initprocess"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/xinzhu/overmind/utils/wrappers/ContentProviderWrapper;->acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.xinzhu.overmind.initprocess.client"

    .line 6
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/helpers/b;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.xinzhu.overmind.initprocess.pid"

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/xinzhu/overmind/server/d;->a(Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/os/IBinder;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private m(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stubProcessName"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method private o()V
    .locals 0

    return-void
.end method


# virtual methods
.method public b(I)Lcom/xinzhu/overmind/server/ProcessRecord;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lcom/xinzhu/overmind/server/ProcessRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;III)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/ProcessRecord;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/ProcessRecord;
    .locals 2
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/h;->getAppId(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-static {p3, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->h(II)I

    move-result p1

    .line 4
    iget-object p3, p0, Lcom/xinzhu/overmind/server/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/ProcessRecord;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callingPid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    .line 4
    :cond_0
    iget p1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xinzhu/overmind/server/pm/h;->getAppId(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object v3, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 6
    iget v5, v4, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    invoke-static {v5}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 7
    iget-object v5, p0, Lcom/xinzhu/overmind/server/d;->a:Ljava/util/Map;

    iget v6, v4, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v5, v4, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v4}, Lcom/xinzhu/overmind/server/ProcessRecord;->kill()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 11
    iget-object p1, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public k(Ljava/lang/String;I)V
    .locals 3
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/h;->getAppId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->h(II)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/xinzhu/overmind/server/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 6
    iget-boolean v2, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    if-eqz v2, :cond_1

    .line 7
    iget v1, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    invoke-static {v1}, Lcom/xinzhu/overmind/plugin/b;->l(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/ProcessRecord;->kill()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/xinzhu/overmind/server/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public l(Lcom/xinzhu/overmind/server/ProcessRecord;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->kill()V

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/d;->a:Ljava/util/Map;

    iget v2, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v2

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 7
    :try_start_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/xinzhu/overmind/server/d;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/d;->m(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 9
    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/server/d;->p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;
    .locals 9
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
            "packageName",
            "processName",
            "userId",
            "vpid",
            "callingUid",
            "callingPid"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/d;->o()V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object p6

    const/4 v0, 0x0

    invoke-virtual {p6, p1, v0, p3}, Lcom/xinzhu/overmind/server/pm/h;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const/4 p6, 0x0

    if-nez v2, :cond_0

    return-object p6

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/pm/h;->getAppId(Ljava/lang/String;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->h(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/d;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move-object v7, v1

    .line 6
    iget-object v8, p0, Lcom/xinzhu/overmind/server/d;->c:Ljava/lang/Object;

    monitor-enter v8

    const/4 v1, -0x1

    if-ne p4, v1, :cond_4

    .line 7
    :try_start_0
    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xinzhu/overmind/server/ProcessRecord;

    if-eqz p4, :cond_3

    .line 8
    iget-object v3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 10
    :cond_2
    iget-object v3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    if-eqz v3, :cond_3

    .line 11
    monitor-exit v8

    return-object p4

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/d;->h()I

    move-result p4

    const-string v3, "MindProcessManager"

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init vUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", vPid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_0
    move v5, p4

    if-eq v5, v1, :cond_6

    .line 14
    new-instance p4, Lcom/xinzhu/overmind/server/ProcessRecord;

    const/4 v4, 0x0

    move-object v1, p4

    move-object v3, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;III)V

    .line 15
    iput v0, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->uid:I

    .line 16
    iput v0, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 17
    iput p3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 18
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result p3

    iput p3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->baseVUid:I

    .line 19
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xinzhu/overmind/server/pm/h;->getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->k()Z

    move-result p1

    iput-boolean p1, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 20
    invoke-interface {v7, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/xinzhu/overmind/server/d;->a:Ljava/util/Map;

    iget p3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-direct {p0, p4}, Lcom/xinzhu/overmind/server/d;->i(Lcom/xinzhu/overmind/server/ProcessRecord;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    invoke-interface {v7, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    iget-boolean p3, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    invoke-static {p2, p3}, Lcom/xinzhu/overmind/client/f;->d(IZ)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/server/d;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p4, Lcom/xinzhu/overmind/server/ProcessRecord;->pid:I

    .line 26
    iget-object p2, p0, Lcom/xinzhu/overmind/server/d;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p6, p4

    .line 27
    :goto_1
    monitor-exit v8

    return-object p6

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No processes available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

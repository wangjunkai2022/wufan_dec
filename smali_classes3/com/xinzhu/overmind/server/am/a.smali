.class public Lcom/xinzhu/overmind/server/am/a;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/am/a$b;,
        Lcom/xinzhu/overmind/server/am/a$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "ActiveServices"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/xinzhu/overmind/server/am/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xinzhu/overmind/server/am/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/am/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    return-object p0
.end method

.method private b(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lcom/xinzhu/overmind/server/ProcessRecord;I)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetIntent",
            "serviceInfo",
            "processRecord",
            "startId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    iget-boolean v2, p3, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget v3, p3, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    invoke-static {v3}, Lcom/xinzhu/overmind/client/f;->m(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget p3, p3, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ServiceInfo;II)V

    return-object v0
.end method

.method private c(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/am/a$c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->e(Lcom/xinzhu/overmind/server/am/a$c;)Lcom/xinzhu/overmind/server/am/a$b;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/am/a$c;

    return-object p1
.end method

.method private e(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->d(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/am/a$c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/a$c;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private j(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2
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
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "intent",
            "binder",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/xinzhu/overmind/server/am/a;->j(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p3

    if-nez p3, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v0

    iget-object v1, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v4, -0x1

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move v3, p4

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/xinzhu/overmind/server/d;->p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 6
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->e(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    move-result-object v1

    if-eqz p2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/a$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v2, Lcom/xinzhu/overmind/server/am/a$b;

    invoke-direct {v2}, Lcom/xinzhu/overmind/server/am/a$b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    new-instance v4, Lcom/xinzhu/overmind/server/am/a$a;

    invoke-direct {v4, p0, p2}, Lcom/xinzhu/overmind/server/am/a$a;-><init>(Lcom/xinzhu/overmind/server/am/a;Landroid/os/IBinder;)V

    invoke-interface {p2, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 11
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-static {v2, p2}, Lcom/xinzhu/overmind/server/am/a$b;->a(Lcom/xinzhu/overmind/server/am/a$b;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 13
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/server/am/a$b;->c(Lcom/xinzhu/overmind/server/am/a$b;Landroid/content/Intent;)Landroid/content/Intent;

    .line 14
    iget-object v4, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez v3, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/a$c;->i()I

    .line 16
    :cond_2
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/am/a$c;->f(Lcom/xinzhu/overmind/server/am/a$c;Lcom/xinzhu/overmind/server/am/a$b;)Lcom/xinzhu/overmind/server/am/a$b;

    .line 17
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-static {v1}, Lcom/xinzhu/overmind/server/am/a$c;->d(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/xinzhu/overmind/server/am/a;->b(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lcom/xinzhu/overmind/server/ProcessRecord;I)Landroid/content/Intent;

    move-result-object p1

    .line 19
    invoke-static {v1, p1}, Lcom/xinzhu/overmind/server/am/a$c;->b(Lcom/xinzhu/overmind/server/am/a$c;Landroid/content/Intent;)Landroid/content/Intent;

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to create "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroid/content/Intent;I)V
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

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    new-instance v0, Landroid/content/Intent$FilterComparison;

    iget-object p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->d(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 4
    :cond_1
    new-instance p2, Lcom/xinzhu/overmind/entity/UnbindRecord;

    invoke-direct {p2}, Lcom/xinzhu/overmind/entity/UnbindRecord;-><init>()V

    .line 5
    invoke-virtual {p2, v0}, Lcom/xinzhu/overmind/entity/UnbindRecord;->f(Landroid/content/ComponentName;)V

    .line 6
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->c(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xinzhu/overmind/entity/UnbindRecord;->e(I)V

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->d(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/entity/UnbindRecord;->g(I)V

    return-object p2
.end method

.method public h(Landroid/content/Intent;I)V
    .locals 0
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

    return-void
.end method

.method public i(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 3
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
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->j(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Lcom/xinzhu/overmind/server/d;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    .line 3
    :cond_1
    :try_start_0
    iget-object p2, p2, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    invoke-interface {p2, p1}, Lcom/xinzhu/overmind/client/c;->peekService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
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
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->j(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xinzhu/overmind/server/d;->p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->e(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/am/a$c;->h()I

    move-result v1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/xinzhu/overmind/server/am/a;->b(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Lcom/xinzhu/overmind/server/ProcessRecord;I)Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/server/am/a$c;->b(Lcom/xinzhu/overmind/server/am/a$c;Landroid/content/Intent;)Landroid/content/Intent;

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/a;->a:Ljava/util/Map;

    monitor-enter p2

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/a;->d(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 3
    monitor-exit p2

    return-object p3

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->c(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    monitor-exit p2

    return-object p3

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->d(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/server/am/a$c;->a(Lcom/xinzhu/overmind/server/am/a$c;)Landroid/content/Intent;

    move-result-object p1

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xinzhu/overmind/server/am/a$b;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/xinzhu/overmind/server/am/a$b;->b(Lcom/xinzhu/overmind/server/am/a$b;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/a;->e(Landroid/content/Intent;)Lcom/xinzhu/overmind/server/am/a$c;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0}, Lcom/xinzhu/overmind/server/am/a$c;->f(Lcom/xinzhu/overmind/server/am/a$c;Lcom/xinzhu/overmind/server/am/a$b;)Lcom/xinzhu/overmind/server/am/a$b;

    .line 4
    invoke-static {p2}, Lcom/xinzhu/overmind/server/am/a$c;->c(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 5
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

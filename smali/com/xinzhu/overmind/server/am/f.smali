.class public Lcom/xinzhu/overmind/server/am/f;
.super Lcom/xinzhu/overmind/server/am/d$b;
.source "MindActivityManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sService:Lcom/xinzhu/overmind/server/am/f;


# instance fields
.field private final mPendingIntentRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xinzhu/overmind/entity/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSpace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/am/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/server/am/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/server/am/f;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/am/f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/f;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/am/f;->sService:Lcom/xinzhu/overmind/server/am/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/d$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mUserSpace:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mPendingIntentRecords:Ljava/util/Map;

    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/am/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/am/f;->sService:Lcom/xinzhu/overmind/server/am/f;

    return-object v0
.end method

.method private getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mUserSpace:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/f;->mUserSpace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/am/i;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Lcom/xinzhu/overmind/server/am/i;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/am/i;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/am/f;->mUserSpace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xinzhu/overmind/server/d;->g(I)I

    move-result v4

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/4 v5, -0x1

    .line 6
    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/server/d;->p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/client/c;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/am/a;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findPendingIntent(Landroid/os/IBinder;)Lcom/xinzhu/overmind/entity/PendingIntentRecord;
    .locals 3
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mPendingIntentRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/entity/PendingIntentRecord;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/xinzhu/overmind/server/am/f;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try findPendingIntent result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " realIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->e:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findProcessRecordByPid(I)Lcom/xinzhu/overmind/server/ProcessRecord;
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
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object p1

    return-object p1
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->j(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p1

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->k(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/am/c;->l(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/am/c;->m(Landroid/os/IBinder;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTaskInfo(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;
    .locals 5
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
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 4
    iget-object v2, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/am/c;->g(I)Lcom/xinzhu/overmind/server/am/h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v3, v0, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 8
    monitor-exit v2

    return-object v1

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/am/b;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 10
    new-instance v3, Lcom/xinzhu/overmind/server/am/MindTaskInfo;

    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/h;->d:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v3, p1, v0, v4, v1}, Lcom/xinzhu/overmind/server/am/MindTaskInfo;-><init>(ILandroid/content/Intent;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    monitor-exit v2

    return-object v3

    .line 11
    :cond_3
    :goto_0
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/ClientConfig;
    .locals 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/4 v4, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xinzhu/overmind/server/d;->p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/ProcessRecord;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p3, Lcom/xinzhu/overmind/server/am/b;

    .line 4
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/c;->s(Lcom/xinzhu/overmind/server/ProcessRecord;ILandroid/os/IBinder;Lcom/xinzhu/overmind/server/am/b;)V

    .line 7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityDestroyed(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->t(ILandroid/os/IBinder;)V

    .line 6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->u(ILandroid/os/IBinder;)V

    .line 6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFinishActivity(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->v(ILandroid/os/IBinder;)V

    .line 6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFinishActivityAffinity(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    iget v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Lcom/xinzhu/overmind/server/am/c;->w(ILandroid/os/IBinder;)V

    .line 6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .locals 2
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

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/a;->f(Landroid/content/Intent;I)V

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceUnbind(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;
    .locals 2
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

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/a;->g(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStartCommand(Landroid/content/Intent;I)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/a;->h(Landroid/content/Intent;I)V

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->i(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerPendingIntent(Lcom/xinzhu/overmind/entity/PendingIntentRecord;)V
    .locals 2
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mPendingIntentRecords:Ljava/util/Map;

    iget-object v1, p1, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->d:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/d;->n(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 8
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/server/d;->p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    invoke-interface {v0}, Lcom/xinzhu/overmind/client/c;->bindApplication()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    return-object p1
.end method

.method public startActivities(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 11
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
            "packageName",
            "intent",
            "resolvedType",
            "resultTo",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    iget v6, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/xinzhu/overmind/server/am/c;->A(ILjava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 14
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

    move-object v1, p0

    move/from16 v0, p2

    .line 1
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v3

    .line 3
    iget-object v13, v2, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v13

    .line 4
    :try_start_0
    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    const/4 v4, 0x0

    iget v5, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v3, p2

    move-object v6, p1

    invoke-virtual/range {v2 .. v12}, Lcom/xinzhu/overmind/server/am/c;->E(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 5
    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startActivityAms(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 14
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
            "packageName",
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, v0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    iget v6, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v3 .. v13}, Lcom/xinzhu/overmind/server/am/c;->E(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startActivityFromExistTask(Landroid/content/Intent;I)I
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object p2

    .line 2
    iget-object v0, p2, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p2, p2, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/server/am/c;->B(Landroid/content/Intent;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
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
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopPackage(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/d;->k(Ljava/lang/String;I)V

    return-void
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
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
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/am/a;->stopService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/am/f;->getOrCreateSpaceLocked(I)Lcom/xinzhu/overmind/server/am/i;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/am/a;->unbindService(Landroid/os/IBinder;I)V

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterPendingIntent(Landroid/os/IBinder;)V
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/f;->mPendingIntentRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

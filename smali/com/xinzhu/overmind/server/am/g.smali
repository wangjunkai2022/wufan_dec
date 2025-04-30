.class public Lcom/xinzhu/overmind/server/am/g;
.super Lcom/xinzhu/overmind/server/am/e$b;
.source "MindJobManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# static fields
.field private static sService:Lcom/xinzhu/overmind/server/am/g;


# instance fields
.field private mJobRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/entity/JobRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/am/g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/g;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/am/g;->sService:Lcom/xinzhu/overmind/server/am/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/e$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/g;->mJobRecords:Ljava/util/Map;

    return-void
.end method

.method private formatKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processName",
            "jobId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static get()Lcom/xinzhu/overmind/server/am/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/am/g;->sService:Lcom/xinzhu/overmind/server/am/g;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "processName",
            "jobId",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return p2
.end method

.method public cancelAll(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/g;->mJobRecords:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/g;->mJobRecords:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/entity/JobRecord;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public queryJobRecord(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/JobRecord;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "processName",
            "jobId",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/xinzhu/overmind/server/am/g;->mJobRecords:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/g;->formatKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/entity/JobRecord;

    return-object p1
.end method

.method public schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/xinzhu/overmind/server/pm/h;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p2}, Lcom/xinzhu/overmind/server/d;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v6, -0x1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/xinzhu/overmind/server/d;->p(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create Process "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/xinzhu/overmind/server/am/g;->scheduleJob(Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/app/job/JobInfo;Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method

.method public scheduleJob(Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/app/job/JobInfo;Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "processRecord",
            "info",
            "serviceInfo"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/JobRecord;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/JobRecord;-><init>()V

    .line 2
    iput-object p2, v0, Lcom/xinzhu/overmind/entity/JobRecord;->a:Landroid/app/job/JobInfo;

    .line 3
    iput-object p3, v0, Lcom/xinzhu/overmind/entity/JobRecord;->b:Landroid/content/pm/ServiceInfo;

    .line 4
    iget-object p3, p0, Lcom/xinzhu/overmind/server/am/g;->mJobRecords:Ljava/util/Map;

    iget-object v1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/xinzhu/overmind/server/am/g;->formatKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p3, Lcom/xinzhu/haunted/android/app/job/b;

    invoke-direct {p3, p2}, Lcom/xinzhu/haunted/android/app/job/b;-><init>(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/ComponentName;

    iget-boolean v1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget p1, p1, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    invoke-static {p1}, Lcom/xinzhu/overmind/client/f;->k(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/xinzhu/haunted/android/app/job/b;->f(Landroid/content/ComponentName;)Z

    return-object p2
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

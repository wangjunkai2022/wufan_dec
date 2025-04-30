.class public Lcom/xinzhu/overmind/server/a;
.super Ljava/lang/Object;
.source "ClientJobServiceManager.java"


# static fields
.field private static b:Lcom/xinzhu/overmind/server/a;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/entity/JobRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/a;->b:Lcom/xinzhu/overmind/server/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/xinzhu/overmind/server/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/a;->b:Lcom/xinzhu/overmind/server/a;

    return-object v0
.end method


# virtual methods
.method b(I)Landroid/app/Service;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jobId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/entity/JobRecord;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/xinzhu/overmind/entity/JobRecord;->c:Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindJobManager()Lcom/xinzhu/overmind/client/frameworks/d;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/xinzhu/overmind/client/frameworks/d;->e(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/JobRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v2

    iget-object v3, v1, Lcom/xinzhu/overmind/entity/JobRecord;->b:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3}, Lcom/xinzhu/overmind/client/e;->createJobService(Landroid/content/pm/ServiceInfo;)Landroid/app/Service;

    move-result-object v2

    iput-object v2, v1, Lcom/xinzhu/overmind/entity/JobRecord;->c:Landroid/app/Service;

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, v1, Lcom/xinzhu/overmind/entity/JobRecord;->c:Landroid/app/Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    .line 10
    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/entity/JobRecord;

    .line 2
    iget-object v1, v1, Lcom/xinzhu/overmind/entity/JobRecord;->c:Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/entity/JobRecord;

    .line 2
    iget-object v1, v1, Lcom/xinzhu/overmind/entity/JobRecord;->c:Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/app/Service;->onLowMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Landroid/app/job/JobParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/a;->b(I)Landroid/app/Service;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/app/job/JobService;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/app/job/JobService;

    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroid/app/job/JobParameters;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/a;->b(I)Landroid/app/Service;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/app/job/JobService;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Landroid/app/job/JobService;

    invoke-virtual {v1, p1}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/entity/JobRecord;

    .line 2
    iget-object v1, v1, Lcom/xinzhu/overmind/entity/JobRecord;->c:Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Landroid/app/Service;->onTrimMemory(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

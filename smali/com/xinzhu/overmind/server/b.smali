.class public Lcom/xinzhu/overmind/server/b;
.super Ljava/lang/Object;
.source "ClientServiceManager.java"


# static fields
.field public static final b:Ljava/lang/String; = "ClientServiceManager"

.field private static c:Lcom/xinzhu/overmind/server/b;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/xinzhu/overmind/client/service/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/b;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/b;->c:Lcom/xinzhu/overmind/server/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/client/service/a;

    return-object p1
.end method

.method public static b()Lcom/xinzhu/overmind/server/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/b;->c:Lcom/xinzhu/overmind/server/b;

    return-object v0
.end method

.method private c(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/app/Service;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "serviceInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/client/e;->createService(Landroid/content/pm/ServiceInfo;)Landroid/app/Service;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/service/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/service/a;-><init>()V

    .line 6
    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/client/service/a;->m(Landroid/app/Service;)V

    .line 7
    iget-object v1, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method


# virtual methods
.method public d(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proxyIntent"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 3
    iget-object p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/b;->c(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/app/Service;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Lcom/xinzhu/overmind/client/service/a;->j(Landroid/content/Intent;)I

    .line 8
    invoke-virtual {v2, v0}, Lcom/xinzhu/overmind/client/service/a;->i(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/xinzhu/overmind/client/service/a;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/client/service/a;->l(Z)V

    .line 12
    :cond_1
    invoke-virtual {v2, v0}, Lcom/xinzhu/overmind/client/service/a;->e(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 14
    invoke-virtual {v2, v0, p1}, Lcom/xinzhu/overmind/client/service/a;->b(Landroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public e(Landroid/content/res/Configuration;)V
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/client/service/a;

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/client/service/a;

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/client/service/a;

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Service;->onLowMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Landroid/content/Intent;II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxyIntent",
            "flags",
            "startId"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    move-result-object p3

    .line 2
    iget-object v0, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v2, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/xinzhu/overmind/server/b;->c(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/app/Service;

    move-result-object v0

    .line 4
    iget-object v2, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5
    iget-object v2, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    move-result-object v2

    .line 6
    iget v3, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mStartId:I

    invoke-virtual {v2, v3}, Lcom/xinzhu/overmind/client/service/a;->n(I)V

    .line 7
    :try_start_0
    iget-object v2, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    iget v3, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mStartId:I

    invoke-virtual {v0, v2, p2, v3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p2

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v0

    iget p3, p3, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mUserId:I

    invoke-virtual {v0, p1, p3}, Lcom/xinzhu/overmind/client/frameworks/a;->s(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public i(I)V
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/client/service/a;

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Service;->onTrimMemory(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Landroid/content/Intent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proxyIntent"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/xinzhu/overmind/client/frameworks/a;->r(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v4, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v4, v5}, Lcom/xinzhu/overmind/server/b;->c(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/app/Service;

    move-result-object v4

    .line 5
    iget-object v0, v0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    move-result-object v0

    .line 7
    invoke-virtual {v3}, Lcom/xinzhu/overmind/entity/UnbindRecord;->d()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/service/a;->c(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9
    :cond_3
    invoke-virtual {v4, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v4}, Landroid/app/Service;->onDestroy()V

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/xinzhu/overmind/client/frameworks/a;->q(Landroid/content/Intent;I)V

    .line 12
    iget-object p1, p0, Lcom/xinzhu/overmind/server/b;->a:Ljava/util/Map;

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    invoke-virtual {v0, v5}, Lcom/xinzhu/overmind/client/service/a;->l(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return v2
.end method

.method public k(Landroid/content/Intent;)Landroid/os/IBinder;
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
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/service/a;->e(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public stopService(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopService\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/b;->a(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/service/a;->d(Landroid/content/Intent;)I

    move-result p1

    if-gtz p1, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->h()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/service/a;->g()Landroid/app/Service;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

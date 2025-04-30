.class public Lcom/efs/sdk/base/core/config/GlobalEnvStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field public configRefreshDelayMills:J

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Boolean;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:J

.field private k:J

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

.field public mAppContext:Landroid/content/Context;

.field private n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/observer/IEfsReporterObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->d:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->e:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->f:Ljava/lang/Boolean;

    .line 6
    iput-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->g:Z

    .line 7
    iput-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->i:Z

    const-wide/16 v0, 0x1388

    .line 8
    iput-wide v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->configRefreshDelayMills:J

    const-wide/16 v0, 0x2710

    .line 9
    iput-wide v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->j:J

    .line 10
    iput-wide v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->k:J

    .line 11
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->l:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConfigObserver(Lcom/efs/sdk/base/observer/IEfsReporterObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPublicParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->l:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    iput-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->l:Ljava/util/Map;

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCallback(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEfsReporterObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/observer/IEfsReporterObserver;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->o:Ljava/util/List;

    return-object v0
.end method

.method public getLogEncryptAction()Lcom/efs/sdk/base/processor/action/ILogEncryptAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    return-object v0
.end method

.method public getLogSendDelayMills()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->j:J

    return-wide v0
.end method

.method public getLogSendIntervalMills()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->k:J

    return-wide v0
.end method

.method public getPublicParamMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->e:Z

    return v0
.end method

.method public isEnableSendLog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->d:Z

    return v0
.end method

.method public isEnableWaStat()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->c:Z

    return v0
.end method

.method public isIntl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->i:Z

    return v0
.end method

.method public isPrintLogDetail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->g:Z

    return v0
.end method

.method public registerCallback(ILandroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->a:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->e:Z

    return-void
.end method

.method public setEnableSendLog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->d:Z

    return-void
.end method

.method public setEnableWaStat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->c:Z

    return-void
.end method

.method public setIsIntl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->i:Z

    return-void
.end method

.method public setLogEncryptAction(Lcom/efs/sdk/base/processor/action/ILogEncryptAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    return-void
.end method

.method public setPrintLogDetail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->g:Z

    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->b:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->h:Ljava/lang/String;

    return-void
.end method

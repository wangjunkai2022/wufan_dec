.class public Lcom/efs/sdk/base/EfsReporter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/EfsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;
    }
.end annotation


# static fields
.field private static sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/efs/sdk/base/EfsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseAppContext:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/efs/sdk/base/EfsReporter$Builder;->sUseAppContext:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/efs/sdk/base/EfsReporter$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "efs.reporter.builder"

    .line 3
    iput-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->TAG:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->checkContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 8
    iput-object p1, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0, p2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setAppid(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {p1, p3}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setSecret(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EfsReporter init, secret is empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EfsReporter init, appid is empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    const-string v0, "efs.base"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 1
    sget-boolean v2, Lcom/efs/sdk/base/EfsReporter$Builder;->sUseAppContext:Z

    if-eqz v2, :cond_1

    instance-of v2, p0, Landroid/app/Application;

    if-nez v2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    instance-of v2, p0, Landroid/app/Application;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Can not get Application context from given context!"

    .line 4
    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/core/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const-string p0, "context can not be null!"

    .line 6
    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/core/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    throw v1
.end method

.method private checkParam(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/efs/sdk/base/EfsReporter;

    .line 2
    invoke-static {p1}, Lcom/efs/sdk/base/EfsReporter;->access$100(Lcom/efs/sdk/base/EfsReporter;)Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "efs-core: duplicate init, but "

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "secret is different"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isIntl()Z

    move-result v0

    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isIntl()Z

    move-result v2

    if-ne v0, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid is different"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "efs.reporter.builder"

    .line 11
    invoke-static {v2, v0, v1}, Lcom/efs/sdk/base/core/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getPublicParamMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getPublicParamMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getPublicParamMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->addPublicParams(Ljava/util/Map;)V

    :cond_3
    return-void

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "intl setting is different"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "application context is different"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addEfsReporterObserver(Lcom/efs/sdk/base/observer/IEfsReporterObserver;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->addConfigObserver(Lcom/efs/sdk/base/observer/IEfsReporterObserver;)V

    return-object p0
.end method

.method public build()Lcom/efs/sdk/base/EfsReporter;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getAppid()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    const-class v1, Lcom/efs/sdk/base/EfsReporter;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v3, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Lcom/efs/sdk/base/EfsReporter;

    invoke-direct {v3, p0, v2}, Lcom/efs/sdk/base/EfsReporter;-><init>(Lcom/efs/sdk/base/EfsReporter$Builder;Lcom/efs/sdk/base/EfsReporter$1;)V

    .line 6
    sget-object v2, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v1

    return-object v3

    .line 8
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    const-string v1, "efs.reporter.builder"

    const-string v3, "efs-core: duplicate init"

    .line 9
    invoke-static {v1, v3, v2}, Lcom/efs/sdk/base/core/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/EfsReporter$Builder;->checkParam(Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/base/EfsReporter;

    return-object v0
.end method

.method public configRefreshAction(Lcom/efs/sdk/base/IConfigRefreshAction;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1
    .param p1    # Lcom/efs/sdk/base/IConfigRefreshAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object v0

    .line 2
    iput-object p1, v0, Lcom/efs/sdk/base/core/config/a/c;->b:Lcom/efs/sdk/base/IConfigRefreshAction;

    return-object p0
.end method

.method public configRefreshDelayMills(J)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    iput-wide p1, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->configRefreshDelayMills:J

    return-object p0
.end method

.method public debug(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setDebug(Z)V

    return-object p0
.end method

.method public efsDirRootName(Ljava/lang/String;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/efs/sdk/base/core/util/a;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public enableSendLog(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setEnableSendLog(Z)V

    return-object p0
.end method

.method public enableWaStat(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setEnableWaStat(Z)V

    return-object p0
.end method

.method public getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    return-object v0
.end method

.method public intl(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setIsIntl(Z)V

    return-object p0
.end method

.method public logEncryptAction(Lcom/efs/sdk/base/processor/action/ILogEncryptAction;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setLogEncryptAction(Lcom/efs/sdk/base/processor/action/ILogEncryptAction;)V

    return-object p0
.end method

.method public maxConcurrentUploadCnt(I)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/core/c/d;->a()Lcom/efs/sdk/base/core/c/d;

    move-result-object v0

    .line 2
    iput p1, v0, Lcom/efs/sdk/base/core/c/d;->a:I

    return-object p0
.end method

.method public printLogDetail(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setPrintLogDetail(Z)V

    return-object p0
.end method

.method public publicParams(Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1
    .param p1    # Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;->getRecordHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;->getRecordHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-interface {p1}, Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;->getRecordHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->addPublicParams(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public publicParams(Ljava/util/Map;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/efs/sdk/base/EfsReporter$Builder;"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->addPublicParams(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->setUid(Ljava/lang/String;)V

    return-object p0
.end method

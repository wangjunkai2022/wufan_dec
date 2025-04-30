.class public Lcom/bytedance/pangle/GlobalParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static mInstance:Lcom/bytedance/pangle/GlobalParam;


# instance fields
.field private hasInit:Z

.field private mCheckMatchHostAbi:Z

.field private mCheckPermission:Z

.field private mCloseDefaultReport:Z

.field private mDebug:Z

.field private mDownloadDir:Ljava/io/File;

.field private mDownloaderProvider:Lcom/bytedance/pangle/download/IDownloaderProvider;

.field private mFastDex2oat:Z

.field private mHostUrl:Ljava/lang/String;

.field private mInstallThreads:I

.field private mLogger:Lcom/bytedance/pangle/log/IZeusLogger;

.field private mReporter:Lcom/bytedance/pangle/log/IZeusReporter;

.field private mRequestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unInstallPluginWhenHostChange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->hasInit:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->mDebug:Z

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->mCloseDefaultReport:Z

    const/4 v1, 0x4

    .line 5
    iput v1, p0, Lcom/bytedance/pangle/GlobalParam;->mInstallThreads:I

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->mCheckMatchHostAbi:Z

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->mRequestHeader:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->unInstallPluginWhenHostChange:Ljava/util/Map;

    return-void
.end method

.method private ensureInit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->hasInit:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static getInstance()Lcom/bytedance/pangle/GlobalParam;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/pangle/GlobalParam;->mInstance:Lcom/bytedance/pangle/GlobalParam;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/pangle/GlobalParam;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/pangle/GlobalParam;->mInstance:Lcom/bytedance/pangle/GlobalParam;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/pangle/GlobalParam;

    invoke-direct {v1}, Lcom/bytedance/pangle/GlobalParam;-><init>()V

    sput-object v1, Lcom/bytedance/pangle/GlobalParam;->mInstance:Lcom/bytedance/pangle/GlobalParam;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/GlobalParam;->mInstance:Lcom/bytedance/pangle/GlobalParam;

    return-object v0
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->mRequestHeader:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkMatchHostAbi()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->mCheckMatchHostAbi:Z

    return v0
.end method

.method public checkPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->mCheckPermission:Z

    return v0
.end method

.method public getDownloadDir()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->mDownloadDir:Ljava/io/File;

    return-object v0
.end method

.method public getDownloaderProvider()Lcom/bytedance/pangle/download/IDownloaderProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->mDownloaderProvider:Lcom/bytedance/pangle/download/IDownloaderProvider;

    return-object v0
.end method

.method public getHostUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->mHostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallThreads()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/pangle/GlobalParam;->mInstallThreads:I

    return v0
.end method

.method public getLogger()Lcom/bytedance/pangle/log/IZeusLogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->mLogger:Lcom/bytedance/pangle/log/IZeusLogger;

    return-object v0
.end method

.method public getReporter()Lcom/bytedance/pangle/log/IZeusReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->mReporter:Lcom/bytedance/pangle/log/IZeusReporter;

    return-object v0
.end method

.method public getRequestHeader()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->mRequestHeader:Ljava/util/Map;

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->hasInit:Z

    return-void
.end method

.method public isCloseDefaultReport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->mCloseDefaultReport:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->mDebug:Z

    return v0
.end method

.method public isFastDex2oat()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/GlobalParam;->mFastDex2oat:Z

    return v0
.end method

.method public setCheckMatchHostAbi(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/pangle/GlobalParam;->mCheckMatchHostAbi:Z

    return-void
.end method

.method public setCheckPermission(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/pangle/GlobalParam;->mCheckPermission:Z

    return-void
.end method

.method public setCloseDefaultReport(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/pangle/GlobalParam;->mCloseDefaultReport:Z

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/pangle/GlobalParam;->mDebug:Z

    return-void
.end method

.method public setDownloadDir(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/GlobalParam;->mDownloadDir:Ljava/io/File;

    return-void
.end method

.method public setDownloaderProvider(Lcom/bytedance/pangle/download/IDownloaderProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/GlobalParam;->mDownloaderProvider:Lcom/bytedance/pangle/download/IDownloaderProvider;

    return-void
.end method

.method public setFastDex2oat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/pangle/GlobalParam;->mFastDex2oat:Z

    return-void
.end method

.method public setHostUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/GlobalParam;->mHostUrl:Ljava/lang/String;

    return-void
.end method

.method public setInstallThreads(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iput p1, p0, Lcom/bytedance/pangle/GlobalParam;->mInstallThreads:I

    return-void
.end method

.method public setLogger(Lcom/bytedance/pangle/log/IZeusLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/GlobalParam;->mLogger:Lcom/bytedance/pangle/log/IZeusLogger;

    return-void
.end method

.method public setReporter(Lcom/bytedance/pangle/log/IZeusReporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/GlobalParam;->mReporter:Lcom/bytedance/pangle/log/IZeusReporter;

    return-void
.end method

.method public setUnInstallPluginWhenHostChange(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/GlobalParam;->ensureInit()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->unInstallPluginWhenHostChange:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unInstallPluginWhenHostChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/GlobalParam;->unInstallPluginWhenHostChange:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

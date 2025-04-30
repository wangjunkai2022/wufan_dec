.class public Lcom/efs/sdk/base/core/controller/ControllerCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;


# instance fields
.field private a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private volatile f:Z

.field private g:Lcom/efs/sdk/base/core/controller/a/a;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a:I

    .line 3
    iput v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->b:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->c:I

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->d:I

    const/4 v1, 0x3

    .line 6
    iput v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->e:I

    .line 7
    iput-boolean v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->f:Z

    .line 8
    invoke-virtual {p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p1

    sput-object p1, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 9
    new-instance p1, Landroid/os/Handler;

    sget-object v1, Lcom/efs/sdk/base/core/util/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->i:Landroid/os/Handler;

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->g:Lcom/efs/sdk/base/core/controller/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/efs/sdk/base/core/controller/a/a;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/controller/a/a;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->g:Lcom/efs/sdk/base/core/controller/a/a;

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    iget-object v1, v1, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->g:Lcom/efs/sdk/base/core/controller/a/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "efs.base"

    const-string v2, "register network change receiver error"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/core/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iget v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 6

    .line 9
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getCallback(I)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    .line 11
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "log_type"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->generateString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "log_data"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLinkKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "link_key"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLinkId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "link_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 16
    invoke-static {v4, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 18
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 20
    invoke-virtual {v4}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;

    invoke-direct {v0, p0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;-><init>(Lcom/efs/sdk/base/core/controller/ControllerCenter;Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    invoke-static {v0}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "2G/3G"

    .line 1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a()V

    goto/16 :goto_5

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_a

    .line 4
    instance-of v0, p1, Lcom/efs/sdk/base/protocol/ILogProtocol;

    if-eqz v0, :cond_a

    .line 5
    check-cast p1, Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 6
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    goto/16 :goto_5

    .line 7
    :cond_2
    invoke-static {}, Lcom/efs/sdk/base/core/config/b$a;->a()Lcom/efs/sdk/base/core/config/b;

    move-result-object p1

    .line 8
    new-instance v1, Lcom/efs/sdk/base/core/config/a;

    invoke-direct {v1}, Lcom/efs/sdk/base/core/config/a;-><init>()V

    iput-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    .line 9
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getAppid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appid"

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/efs/sdk/base/core/util/e;->a()I

    move-result v1

    .line 11
    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "pid"

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    invoke-static {v1}, Lcom/efs/sdk/base/core/util/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ps"

    invoke-virtual {v3, v4, v1}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/efs/sdk/base/core/util/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string/jumbo v4, "wid"

    invoke-virtual {v3, v4, v1}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "uid"

    if-eqz v3, :cond_3

    .line 16
    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    invoke-virtual {v3, v4, v1}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :goto_0
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->b()J

    move-result-wide v3

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "stime"

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/efs/sdk/base/core/util/PackageUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg"

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/efs/sdk/base/core/util/PackageUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ver"

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/efs/sdk/base/core/util/PackageUtil;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vcode"

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string v3, "sdk_ver"

    const-string v4, "1.3.6.umeng"

    invoke-virtual {v1, v3, v4}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    .line 24
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "brand"

    .line 25
    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    .line 27
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v4, "unknown"

    goto :goto_1

    :cond_4
    const-string v4, " "

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_"

    .line 28
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, "model"

    .line 29
    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string v4, "build_model"

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 33
    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "dsp_w"

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "dsp_h"

    invoke-virtual {v3, v4, v1}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string v3, "fr"

    const-string v4, "android"

    invoke-virtual {v1, v3, v4}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    .line 37
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "rom"

    .line 38
    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    .line 40
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sdk"

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lang"

    .line 44
    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    .line 46
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tzone"

    .line 47
    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v1, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "net"

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 49
    :try_start_0
    iget-object v3, p1, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "Wi-Fi"

    .line 50
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "um_access"

    if-eqz v4, :cond_5

    .line 51
    :try_start_1
    iget-object v0, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v0, v5, v4}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_5
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 53
    iget-object v4, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    invoke-virtual {v4, v5, v0}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 54
    :cond_6
    iget-object v0, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string v4, "unknow"

    invoke-virtual {v0, v5, v4}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const-string v0, ""

    .line 55
    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 56
    iget-object v0, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string v4, "um_access_subtype"

    aget-object v3, v3, v2

    invoke-virtual {v0, v4, v3}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_7
    iget-object v0, p1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string v3, "um_network_type"

    iget-object p1, p1, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkTypeUmeng(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    :goto_3
    invoke-static {}, Lcom/efs/sdk/base/core/c/f$a;->a()Lcom/efs/sdk/base/core/c/f;

    .line 60
    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/a/c;->b()V

    .line 61
    invoke-direct {p0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a()V

    .line 62
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    move-result-object p1

    .line 63
    sget-object v0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 64
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isIntl()Z

    move-result v0

    .line 65
    iget-object v3, p1, Lcom/efs/sdk/base/core/f/f;->a:Lcom/efs/sdk/base/core/f/c;

    if-eqz v0, :cond_8

    const-string v0, "https://errlogos.umeng.com/api/crashsdk/logcollect"

    .line 66
    iput-object v0, v3, Lcom/efs/sdk/base/core/f/c;->a:Ljava/lang/String;

    const-string v0, "4ea4e41a3993"

    .line 67
    iput-object v0, v3, Lcom/efs/sdk/base/core/f/c;->b:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string v0, "https://errlog.umeng.com/api/crashsdk/logcollect"

    .line 68
    iput-object v0, v3, Lcom/efs/sdk/base/core/f/c;->a:Ljava/lang/String;

    const-string v0, "28ef1713347d"

    .line 69
    iput-object v0, v3, Lcom/efs/sdk/base/core/f/c;->b:Ljava/lang/String;

    .line 70
    :goto_4
    iput-object p0, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 71
    iget-object v0, p1, Lcom/efs/sdk/base/core/f/f;->c:Lcom/efs/sdk/base/core/f/d;

    .line 72
    iput-object p0, v0, Lcom/efs/sdk/base/core/f/a;->a:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 73
    iget-object p1, p1, Lcom/efs/sdk/base/core/f/f;->d:Lcom/efs/sdk/base/core/f/g;

    .line 74
    iput-object p0, p1, Lcom/efs/sdk/base/core/f/a;->a:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 75
    iput-boolean v2, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->f:Z

    .line 76
    invoke-static {}, Lcom/efs/sdk/base/core/c/d;->a()Lcom/efs/sdk/base/core/c/d;

    move-result-object p1

    sget-object v0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getLogSendDelayMills()J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    move-result-object p1

    .line 78
    iget-object v0, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isEnableWaStat()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 79
    :cond_9
    new-instance v0, Lcom/efs/sdk/base/core/f/b;

    iget-object v1, p1, Lcom/efs/sdk/base/core/f/f;->a:Lcom/efs/sdk/base/core/f/c;

    iget-object v1, v1, Lcom/efs/sdk/base/core/f/c;->c:Ljava/lang/String;

    const-string v3, "efs_core"

    const-string v4, "pvuv"

    invoke-direct {v0, v3, v4, v1}, Lcom/efs/sdk/base/core/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_a
    :goto_5
    return v2
.end method

.method public send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->f:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    return-void
.end method

.method public sendSyncImmediately(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/efs/sdk/base/core/d/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/efs/sdk/base/core/d/b;-><init>(Ljava/lang/String;B)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/d/b;->b(I)V

    .line 3
    iput-object p5, v0, Lcom/efs/sdk/base/core/d/b;->d:Ljava/io/File;

    .line 4
    invoke-virtual {v0, p3}, Lcom/efs/sdk/base/core/d/b;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/efs/sdk/base/core/d/b;->a(I)V

    .line 6
    iget-object p1, v0, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iput-boolean p4, p1, Lcom/efs/sdk/base/core/d/c;->b:Z

    .line 7
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/d/b;->c()V

    .line 8
    invoke-static {}, Lcom/efs/sdk/base/core/e/d$a;->a()Lcom/efs/sdk/base/core/e/d;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/efs/sdk/base/core/e/d;->a:Lcom/efs/sdk/base/core/e/a;

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/e/a;->a(Lcom/efs/sdk/base/core/d/b;)V

    .line 10
    iget-object p1, v0, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-object p1, p1, Lcom/efs/sdk/base/core/d/c;->c:Lcom/efs/sdk/base/http/HttpResponse;

    return-object p1
.end method

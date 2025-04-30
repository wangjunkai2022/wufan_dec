.class public Lcom/bytedance/sdk/openadsdk/downloadnew/d;
.super Ljava/lang/Object;
.source "TTDownloadVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/d$a;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/d$d;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/d$b;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/d$c;
    }
.end annotation


# static fields
.field public static volatile a:Ljava/lang/String;

.field public static b:Z

.field public static c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:Landroid/content/Context;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/ss/android/download/api/download/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->b:Z

    .line 3
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$6;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$6;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->g:Lcom/ss/android/download/api/download/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/g;
    .locals 1

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .locals 2

    const-string v0, "download_exp_switch_temp"

    const v1, 0x3dffffff    # 0.12499999f

    .line 32
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 33
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$5;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$5;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadSetting(Lcom/ss/android/socialbase/downloader/depend/aa;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object p0

    .line 35
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadExpSwitch(I)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object p0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->httpService(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ss/android/download/api/model/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->b(Lcom/ss/android/download/api/model/c;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 1

    .line 21
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->f:Ljava/util/Map;

    .line 25
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    const-class v1, Lcom/bytedance/sdk/openadsdk/downloadnew/d;

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object p0

    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->b:Z

    invoke-interface {p0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->initPath(Z)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    sput-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a:Ljava/lang/String;

    .line 11
    :cond_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->b(Landroid/content/Context;)Z

    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    sput-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z
    .locals 2

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a/a;->a()Lcom/ss/android/downloadlib/addownload/a/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/d$7;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$7;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/app/Activity;ZLcom/ss/android/downloadlib/addownload/a/a$a;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)Z
    .locals 7

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->e()Lcom/ss/android/downloadad/api/b;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/downloadad/api/b;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z
    .locals 8

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->e()Lcom/ss/android/downloadad/api/b;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/downloadad/api/b;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/appdownloader/d;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/ss/android/downloadlib/b/j;->a(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Z
    .locals 10

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;

    if-eqz v4, :cond_1

    .line 31
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;->onEventLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static b(Lcom/ss/android/download/api/model/c;)Lorg/json/JSONObject;
    .locals 4

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "category"

    .line 31
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tag"

    .line 32
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    .line 33
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isAd"

    .line 34
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "adId"

    .line 35
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "logExtra"

    .line 36
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extValue"

    .line 37
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "extJson"

    .line 38
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->h()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "paramsJson"

    .line 39
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventSource"

    .line 40
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "extraObject"

    .line 41
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->l()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickTrackUrl"

    .line 42
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isV3"

    .line 43
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "V3EventName"

    .line 44
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "V3EventParams"

    .line 45
    invoke-virtual {p0}, Lcom/ss/android/download/api/model/c;->o()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static b()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->g()V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->clearAllData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/download/api/a;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 9
    :cond_2
    new-instance v0, Lcom/ss/android/download/api/model/a$a;

    invoke-direct {v0}, Lcom/ss/android/download/api/model/a$a;-><init>()V

    const-string v3, "143"

    .line 10
    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/a$a;->b(Ljava/lang/String;)Lcom/ss/android/download/api/model/a$a;

    move-result-object v0

    const-string v3, "open_news"

    .line 11
    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/a$a;->a(Ljava/lang/String;)Lcom/ss/android/download/api/model/a$a;

    move-result-object v0

    const-string v3, "4.6.0.2"

    .line 12
    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/a$a;->c(Ljava/lang/String;)Lcom/ss/android/download/api/model/a$a;

    move-result-object v0

    const/16 v3, 0x11fa

    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/a$a;->d(Ljava/lang/String;)Lcom/ss/android/download/api/model/a$a;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/ss/android/download/api/model/a$a;->a()Lcom/ss/android/download/api/model/a;

    move-result-object v0

    .line 15
    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/d$c;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$c;-><init>()V

    invoke-interface {v2, v3}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/download/api/config/h;)Lcom/ss/android/download/api/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/d$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$a;-><init>()V

    .line 16
    invoke-interface {v2, v3}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/download/api/config/f;)Lcom/ss/android/download/api/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/d$d;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$d;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-interface {v2, v3}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/download/api/config/k;)Lcom/ss/android/download/api/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/d$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$b;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/d$1;)V

    .line 18
    invoke-interface {v2, v3}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/download/api/config/g;)Lcom/ss/android/download/api/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/d$3;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$3;-><init>()V

    .line 19
    invoke-interface {v2, v3}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/download/api/config/i;)Lcom/ss/android/download/api/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/d$2;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$2;-><init>()V

    .line 20
    invoke-interface {v2, v3}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/download/api/config/b;)Lcom/ss/android/download/api/a;

    move-result-object v2

    .line 21
    invoke-interface {v2, v0}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/download/api/model/a;)Lcom/ss/android/download/api/a;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/d$1;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$1;-><init>()V

    .line 22
    invoke-interface {v0, v2}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/download/api/config/p;)Lcom/ss/android/download/api/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TTFileProvider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/ss/android/download/api/a;->a(Ljava/lang/String;)Lcom/ss/android/download/api/a;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->getDownloadSettings()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/download/api/a;->a(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)Lcom/ss/android/download/api/a;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/ss/android/download/api/a;->a()V

    .line 26
    invoke-static {}, Lcom/ss/android/downloadlib/g/a;->a()V

    .line 27
    invoke-static {p0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->d()Lcom/ss/android/downloadad/api/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ss/android/downloadad/api/a;->a(I)V

    .line 28
    invoke-static {p0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object p0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->g:Lcom/ss/android/download/api/download/a/a;

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/download/api/download/a/a;)V

    .line 29
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$4;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/depend/ad;)V

    return v1
.end method

.method public static c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->f:Ljava/util/Map;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/a/b;->g()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->checkAutoControl(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    return-object v0
.end method

.method private static e()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    const-class v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/b;->a(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    :cond_1
    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

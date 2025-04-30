.class public Lcom/ss/android/socialbase/downloader/network/a/b;
.super Ljava/lang/Object;
.source "DownloadPreconnecter.java"


# static fields
.field static a:J

.field static b:J

.field private static final c:Landroid/os/HandlerThread;

.field private static final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Downloader-preconnecter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/a/b;->c:Landroid/os/HandlerThread;

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/b;->b()V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/network/a/b;->d:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/ss/android/socialbase/downloader/network/a/b$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/network/a/b$1;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a()Landroid/os/Looper;
    .locals 1

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/network/a/b;->b(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/j;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/a/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/socialbase/downloader/network/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/network/a/b$2;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v1, p2

    const-wide/16 v4, 0x0

    move-object v0, p3

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "preconnect_connection_outdate_time"

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/a/b;->a:J

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "preconnect_head_info_outdate_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/a/b;->b:J

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "preconnect_max_cache_size"

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/network/a/a;->a(I)V

    return-void
.end method

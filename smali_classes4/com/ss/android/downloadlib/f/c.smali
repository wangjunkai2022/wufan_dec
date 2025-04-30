.class public Lcom/ss/android/downloadlib/f/c;
.super Ljava/lang/Object;
.source "BeforeAppInstallInterceptorManager.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/j;


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/f/c;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/appdownloader/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f/c;->b:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/ss/android/downloadlib/f/b;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/f/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/f/c;->b:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/f/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/f/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/f/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/ss/android/downloadlib/f/c;->a:Lcom/ss/android/downloadlib/f/c;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/ss/android/downloadlib/f/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/f/c;->a:Lcom/ss/android/downloadlib/f/c;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/ss/android/downloadlib/f/c;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/f/c;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/f/c;->a:Lcom/ss/android/downloadlib/f/c;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/f/c;->a:Lcom/ss/android/downloadlib/f/c;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/f/c;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/f/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/ss/android/downloadlib/f/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p2, v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f/c;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/c/j;

    .line 13
    new-instance v1, Lcom/ss/android/downloadlib/f/c$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ss/android/downloadlib/f/c$1;-><init>(Lcom/ss/android/downloadlib/f/c;ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V

    invoke-interface {v0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/c/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V

    return-void

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p3}, Lcom/ss/android/socialbase/appdownloader/c/i;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ss/android/downloadlib/f/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/f/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 10
    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/c/i;->a()V

    :cond_2
    return-void
.end method

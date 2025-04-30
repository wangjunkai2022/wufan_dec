.class public Lcom/ss/android/downloadlib/addownload/d/f;
.super Ljava/lang/Object;
.source "PauseInterceptorManager.java"


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/d/f;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/downloadlib/addownload/d/d;",
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

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/e;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/g;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/b;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/d/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d/f;->a:Lcom/ss/android/downloadlib/addownload/d/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/addownload/d/f;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/addownload/d/f;->a:Lcom/ss/android/downloadlib/addownload/d/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/f;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/f;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/d/f;->a:Lcom/ss/android/downloadlib/addownload/d/f;

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
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d/f;->a:Lcom/ss/android/downloadlib/addownload/d/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/api/a/b;ILcom/ss/android/downloadlib/addownload/d/c;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_optimise_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/addownload/d/d;

    if-nez v2, :cond_4

    .line 13
    instance-of v3, v1, Lcom/ss/android/downloadlib/addownload/d/g;

    if-nez v3, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    invoke-interface {v1, p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/d/d;->a(Lcom/ss/android/downloadad/api/a/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 15
    :cond_5
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/api/a/b;)V

    return-void

    .line 16
    :cond_6
    :goto_1
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/api/a/b;)V

    return-void

    .line 17
    :cond_7
    :goto_2
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/api/a/b;)V

    return-void
.end method

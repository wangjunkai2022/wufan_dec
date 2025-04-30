.class public Lcom/ss/android/downloadlib/c;
.super Ljava/lang/Object;
.source "BaseDownloadMonitorListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/h;


# static fields
.field private static a:Ljava/lang/String; = "c"


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/c;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2
    .param p1    # Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/e;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/c/b;

    invoke-direct {v1, p1}, Lcom/ss/android/downloadlib/addownload/c/b;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/a/b;)V
    .locals 14

    .line 33
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/g/l;->a(Ljava/io/File;J)J

    move-result-wide v6

    .line 34
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/l;->a(Ljava/io/File;)J

    move-result-wide v3

    const-wide/16 v8, 0xa

    .line 35
    div-long/2addr v3, v8

    const-wide/32 v8, 0x1f400000

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 36
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v8

    long-to-double v3, v3

    long-to-double v10, v8

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    .line 37
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v3

    cmp-long v0, v6, v1

    if-lez v0, :cond_0

    cmp-long v0, v8, v1

    if-lez v0, :cond_0

    long-to-double v0, v6

    cmpg-double v2, v0, v10

    if-gez v2, :cond_0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v10, v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d;->b()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d;->a(I)V

    .line 40
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/c$3;

    move-object v3, v1

    move-object v4, p0

    move-object/from16 v5, p2

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/ss/android/downloadlib/c$3;-><init>(Lcom/ss/android/downloadlib/c;Lcom/ss/android/downloadad/api/a/b;JJDLcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    if-eqz p2, :cond_1

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/g/f;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    .line 3
    invoke-static {v1, p1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_failed"

    invoke-static {v2, v1}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-ne p3, v0, :cond_9

    const/4 p3, 0x0

    if-eqz p2, :cond_8

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p3

    const-string v0, "toast_without_network"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 7
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p3

    const/16 v3, 0x419

    if-ne p3, v3, :cond_3

    .line 8
    iget-object p3, p0, Lcom/ss/android/downloadlib/c;->b:Landroid/os/Handler;

    new-instance v3, Lcom/ss/android/downloadlib/c$1;

    invoke-direct {v3, p0}, Lcom/ss/android/downloadlib/c$1;-><init>(Lcom/ss/android/downloadlib/c;)V

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_3
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/f;->h(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 10
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->l()Lcom/ss/android/download/api/config/m;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 11
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->l()Lcom/ss/android/download/api/config/m;

    move-result-object p3

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->b()J

    move-result-wide v3

    invoke-interface {p3, v3, v4}, Lcom/ss/android/download/api/config/m;->a(J)V

    .line 12
    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p3

    const-string v3, "download_failed_for_space"

    invoke-virtual {p3, v3, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    .line 13
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->Q()Z

    move-result p3

    if-nez p3, :cond_5

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p3

    const-string v3, "download_can_restart"

    invoke-virtual {p3, v3, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 16
    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->l()Lcom/ss/android/download/api/config/m;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->l()Lcom/ss/android/download/api/config/m;

    move-result-object p3

    invoke-interface {p3}, Lcom/ss/android/download/api/config/m;->d()Z

    move-result p3

    if-nez p3, :cond_7

    .line 17
    :cond_6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p3

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->b()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 18
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadModel;->isShowToast()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "show_no_enough_space_toast"

    .line 20
    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/ss/android/downloadlib/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/downloadlib/c$2;

    invoke-direct {v2, p0, v1, p3}, Lcom/ss/android/downloadlib/c$2;-><init>(Lcom/ss/android/downloadlib/c;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/download/api/download/DownloadModel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "exception_msg_length"

    const/16 v1, 0x1f4

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    .line 23
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ss/android/downloadlib/g/l;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 24
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1, p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    move-object p3, v0

    .line 25
    :cond_8
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/downloadlib/d/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 26
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, p1, p2, v0}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const/4 p2, -0x3

    if-ne p3, p2, :cond_a

    .line 27
    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/a/b;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_a
    const/16 p2, 0x7d1

    if-ne p3, p2, :cond_b

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p3

    invoke-virtual {p3, p1, v1, p2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/a/b;I)V

    goto :goto_1

    :cond_b
    const/16 p2, 0xb

    if-ne p3, p2, :cond_c

    .line 29
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p2

    const/16 p3, 0x7d0

    invoke-virtual {p2, p1, v1, p3}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/a/b;I)V

    .line 30
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->S()Z

    move-result p2

    if-nez p2, :cond_c

    .line 31
    invoke-direct {p0, p1, v1}, Lcom/ss/android/downloadlib/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 32
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->s()Lcom/ss/android/download/api/b/a;

    move-result-object p2

    const-string p3, "onAppDownloadMonitorSend"

    invoke-interface {p2, p1, p3}, Lcom/ss/android/download/api/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_c
    :goto_1
    return-void
.end method

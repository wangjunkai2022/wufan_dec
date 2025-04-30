.class public Lcom/ss/android/downloadlib/c/h;
.super Ljava/lang/Object;
.source "NotificationPusher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/c/h$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/c/h$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/c/h;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/c/h;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/c/h$a;->a()Lcom/ss/android/downloadlib/c/h;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/ss/android/downloadad/api/a/b;Lorg/json/JSONObject;)V
    .locals 9

    .line 8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/d;->a()Z

    move-result v0

    const-string v1, "error_code"

    if-nez v0, :cond_0

    const/16 p1, 0x3ec

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0x3ed

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 14
    :cond_2
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/e/a;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v8

    move-object v2, v1

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/ss/android/socialbase/appdownloader/e/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 16
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    .line 17
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    .line 19
    invoke-virtual {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 20
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    const-string v0, "download_notification_show"

    invoke-virtual {p1, v0, p3, p2}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/c/h;ILcom/ss/android/downloadad/api/a/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/c/h;->a(ILcom/ss/android/downloadad/api/a/b;Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lcom/ss/android/downloadad/api/a/b;J)V
    .locals 5
    .param p1    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/c/h;->a(I)V

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/c/h$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/c/h$1;-><init>(Lcom/ss/android/downloadlib/c/h;ILcom/ss/android/downloadad/api/a/b;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private c(Lcom/ss/android/downloadad/api/a/b;J)V
    .locals 5
    .param p1    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/c/h;->a(I)V

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/c/h$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/c/h$2;-><init>(Lcom/ss/android/downloadlib/c/h;ILcom/ss/android/downloadad/api/a/b;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 21
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/c;->a()Lcom/ss/android/socialbase/appdownloader/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/c;->a()Lcom/ss/android/socialbase/appdownloader/e/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ss/android/downloadad/api/a/b;)V
    .locals 2

    const-wide/16 v0, 0x5

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/c/h;->b(Lcom/ss/android/downloadad/api/a/b;J)V

    return-void
.end method

.method public a(Lcom/ss/android/downloadad/api/a/b;J)V
    .locals 5
    .param p1    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    .line 5
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/c/h;->a(I)V

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/c/h$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/c/h$3;-><init>(Lcom/ss/android/downloadlib/c/h;ILcom/ss/android/downloadad/api/a/b;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b(Lcom/ss/android/downloadad/api/a/b;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "noti_continue_delay_secs"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/c/h;->b(Lcom/ss/android/downloadad/api/a/b;J)V

    return-void
.end method

.method public c(Lcom/ss/android/downloadad/api/a/b;)V
    .locals 2
    .param p1    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, 0x5

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/c/h;->c(Lcom/ss/android/downloadad/api/a/b;J)V

    return-void
.end method

.method public d(Lcom/ss/android/downloadad/api/a/b;)V
    .locals 3
    .param p1    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "noti_install_delay_secs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/c/h;->c(Lcom/ss/android/downloadad/api/a/b;J)V

    return-void
.end method

.method public e(Lcom/ss/android/downloadad/api/a/b;)V
    .locals 2
    .param p1    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/c/h;->a(Lcom/ss/android/downloadad/api/a/b;J)V

    return-void
.end method

.method public f(Lcom/ss/android/downloadad/api/a/b;)V
    .locals 3
    .param p1    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "noti_open_delay_secs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/c/h;->a(Lcom/ss/android/downloadad/api/a/b;J)V

    return-void
.end method

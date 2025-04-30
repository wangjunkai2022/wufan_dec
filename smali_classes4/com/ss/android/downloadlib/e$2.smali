.class Lcom/ss/android/downloadlib/e$2;
.super Ljava/lang/Object;
.source "DownloadConfigureImpl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/e;->a(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)Lcom/ss/android/download/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/e$2;->a:Lcom/ss/android/downloadlib/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->r()Lcom/ss/android/download/api/config/t;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "ad_notification_jump_url"

    invoke-virtual {p1, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ss/android/download/api/config/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "notification_opt_2"

    .line 2
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadNotificationEventListener(I)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v0, v1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/depend/z;)V

    :cond_0
    return v2

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/e$2;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v3, "disable_delete_dialog"

    .line 8
    invoke-virtual {v0, v3, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadad/api/a/b;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/i;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    .line 4
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    const/4 p1, 0x1

    return p1
.end method

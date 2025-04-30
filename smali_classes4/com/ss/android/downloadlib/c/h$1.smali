.class Lcom/ss/android/downloadlib/c/h$1;
.super Ljava/lang/Object;
.source "NotificationPusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/c/h;->b(Lcom/ss/android/downloadad/api/a/b;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ss/android/downloadad/api/a/b;

.field final synthetic c:Lcom/ss/android/downloadlib/c/h;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/c/h;ILcom/ss/android/downloadad/api/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/c/h$1;->c:Lcom/ss/android/downloadlib/c/h;

    iput p2, p0, Lcom/ss/android/downloadlib/c/h$1;->a:I

    iput-object p3, p0, Lcom/ss/android/downloadlib/c/h$1;->b:Lcom/ss/android/downloadad/api/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/c/h$1;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ttdownloader_type"

    invoke-static {v1, v3, v2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/f;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    if-eqz v0, :cond_1

    const/4 v2, -0x2

    .line 5
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/h$1;->c:Lcom/ss/android/downloadlib/c/h;

    iget v2, p0, Lcom/ss/android/downloadlib/c/h$1;->a:I

    iget-object v3, p0, Lcom/ss/android/downloadlib/c/h$1;->b:Lcom/ss/android/downloadad/api/a/b;

    invoke-static {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/c/h;->a(Lcom/ss/android/downloadlib/c/h;ILcom/ss/android/downloadad/api/a/b;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x3e9

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "error_code"

    invoke-static {v1, v2, v0}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/c/h$1;->b:Lcom/ss/android/downloadad/api/a/b;

    const-string v3, "download_notification_try_show"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

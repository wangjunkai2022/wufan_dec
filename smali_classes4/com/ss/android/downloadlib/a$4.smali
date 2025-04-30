.class Lcom/ss/android/downloadlib/a$4;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Lcom/ss/android/downloadlib/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/ss/android/downloadlib/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$4;->c:Lcom/ss/android/downloadlib/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a$4;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p3, p0, Lcom/ss/android/downloadlib/a$4;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 9

    if-nez p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$4;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v2, "backup"

    if-eqz v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/ss/android/downloadlib/a$4;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$4;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$4;->b:Lorg/json/JSONObject;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$4;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    if-eqz p1, :cond_2

    const-string v2, "installer_delay_success"

    goto :goto_1

    :cond_2
    const-string v2, "installer_delay_failed"

    :goto_1
    iget-object v3, p0, Lcom/ss/android/downloadlib/a$4;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    goto :goto_2

    .line 8
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    const-string v1, "ah nativeModel=null"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/e/c;->b(Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_4

    .line 9
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->t()Lcom/ss/android/download/api/config/r;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/ss/android/download/api/config/r;->a(Landroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.class Lcom/github/snowdream/android/app/downloader/b$a;
.super Landroid/os/Handler;
.source "CommonDownloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/downloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/b;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    invoke-static {v0}, Lcom/github/snowdream/android/app/downloader/b;->a(Lcom/github/snowdream/android/app/downloader/b;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    iget-object v1, v1, Lcom/github/snowdream/android/app/downloader/b;->a:Lcom/github/snowdream/android/app/downloader/b$b;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    iget-object v2, v2, Lcom/github/snowdream/android/app/downloader/b;->a:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 6
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/github/snowdream/android/app/downloader/b$b;->onStart(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 8
    invoke-interface {v2, v1}, Lcom/github/snowdream/android/app/downloader/b$b;->onError(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 10
    invoke-interface {v2, v1}, Lcom/github/snowdream/android/app/downloader/b$b;->onStop(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/github/snowdream/android/app/downloader/b$b;->onFinish(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    if-ne v3, v1, :cond_5

    const-string v1, "url"

    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v2, v1, v3, v4}, Lcom/github/snowdream/android/app/downloader/b$b;->updateSize(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-ne v3, v1, :cond_6

    .line 15
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 16
    aget-object v1, p1, v1

    .line 17
    aget-object v3, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 18
    aget-object p1, p1, v5

    .line 19
    invoke-interface {v2, v1, v3, p1}, Lcom/github/snowdream/android/app/downloader/b$b;->onProgress(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

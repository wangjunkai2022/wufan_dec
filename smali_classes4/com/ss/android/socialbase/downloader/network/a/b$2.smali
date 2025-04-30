.class final Lcom/ss/android/socialbase/downloader/network/a/b$2;
.super Ljava/lang/Object;
.source "DownloadPreconnecter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/network/a/b;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/network/j;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->b:Lcom/ss/android/socialbase/downloader/network/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->b:Lcom/ss/android/socialbase/downloader/network/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/j;->a(Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {v2, v3, v1, v1}, Lcom/ss/android/socialbase/downloader/network/a/b;->a(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/network/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/ss/android/socialbase/downloader/network/a/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/a/c;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_4

    .line 7
    new-instance v4, Lcom/ss/android/socialbase/downloader/network/a/c;

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/network/a/c;-><init>(Ljava/lang/String;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/network/a/c;->a()V

    .line 9
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/network/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/network/a/a;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/a/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_2

    .line 11
    :cond_4
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/a/c;->i()Ljava/util/Map;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->b:Lcom/ss/android/socialbase/downloader/network/j;

    if-eqz v2, :cond_5

    .line 13
    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/network/j;->a(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :cond_5
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/a/c;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 15
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_2
    :goto_3
    return-void

    .line 16
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/a/c;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 17
    :catchall_3
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

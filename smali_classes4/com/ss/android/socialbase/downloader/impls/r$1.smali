.class Lcom/ss/android/socialbase/downloader/impls/r$1;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/r;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/r;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$1;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$1;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$1;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$1;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->b(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/r$1$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/impls/r$1$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/r$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

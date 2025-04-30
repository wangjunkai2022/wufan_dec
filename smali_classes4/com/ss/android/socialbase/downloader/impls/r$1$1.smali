.class Lcom/ss/android/socialbase/downloader/impls/r$1$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RetryScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/r$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/r$1;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/r$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/r$1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string p1, "RetryScheduler"

    const-string v0, "network onAvailable: "

    .line 1
    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/r$1;

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/impls/r$1;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;IZ)V

    return-void
.end method

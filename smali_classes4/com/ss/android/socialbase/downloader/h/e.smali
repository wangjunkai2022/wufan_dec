.class public final Lcom/ss/android/socialbase/downloader/h/e;
.super Ljava/lang/Object;
.source "DownloadWatchDog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/h/e$b;,
        Lcom/ss/android/socialbase/downloader/h/e$a;
    }
.end annotation


# instance fields
.field private volatile a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/h/e$a;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/e;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/h/e$a;->a()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/h/e$b;J)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/e;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroid/os/Message;->what:I

    .line 5
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/e;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/h/e;->a:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ss/android/socialbase/downloader/h/e$b;

    .line 3
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/h/e$b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/h/e;->a(Lcom/ss/android/socialbase/downloader/h/e$b;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

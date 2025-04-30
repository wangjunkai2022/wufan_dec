.class Lcom/ss/android/socialbase/downloader/h/c$2;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/h/c;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/h/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c$2;->b:Lcom/ss/android/socialbase/downloader/h/c;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c$2;->b:Lcom/ss/android/socialbase/downloader/h/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c$2;->b:Lcom/ss/android/socialbase/downloader/h/c;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/h/c;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

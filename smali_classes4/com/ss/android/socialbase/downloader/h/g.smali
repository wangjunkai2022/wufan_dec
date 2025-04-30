.class public Lcom/ss/android/socialbase/downloader/h/g;
.super Ljava/lang/Object;
.source "ThreadWithHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/h/g$b;,
        Lcom/ss/android/socialbase/downloader/h/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/ss/android/socialbase/downloader/h/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ss/android/socialbase/downloader/h/g$a;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->b:Ljava/util/Queue;

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/h/g$a;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/h/g$a;-><init>(Lcom/ss/android/socialbase/downloader/h/g;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->c:Lcom/ss/android/socialbase/downloader/h/g$a;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/h/g;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/g;->d:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/h/g;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/h/g;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/h/g;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/h/g;->b:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/h/g;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/h/g;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->c:Lcom/ss/android/socialbase/downloader/h/g$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/h/g;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/g;->d:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/g;->b:Ljava/util/Queue;

    new-instance v2, Lcom/ss/android/socialbase/downloader/h/g$b;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/h/g$b;-><init>(Lcom/ss/android/socialbase/downloader/h/g;Ljava/lang/Runnable;J)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->c:Lcom/ss/android/socialbase/downloader/h/g$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

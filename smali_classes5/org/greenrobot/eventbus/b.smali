.class final Lorg/greenrobot/eventbus/b;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/greenrobot/eventbus/h;

.field private final b:Lorg/greenrobot/eventbus/c;

.field private volatile c:Z


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/eventbus/b;->b:Lorg/greenrobot/eventbus/c;

    .line 3
    new-instance p1, Lorg/greenrobot/eventbus/h;

    invoke-direct {p1}, Lorg/greenrobot/eventbus/h;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/b;->a:Lorg/greenrobot/eventbus/h;

    return-void
.end method


# virtual methods
.method public a(Lorg/greenrobot/eventbus/l;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/greenrobot/eventbus/g;->a(Lorg/greenrobot/eventbus/l;Ljava/lang/Object;)Lorg/greenrobot/eventbus/g;

    move-result-object p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p2, p0, Lorg/greenrobot/eventbus/b;->a:Lorg/greenrobot/eventbus/h;

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/h;->a(Lorg/greenrobot/eventbus/g;)V

    .line 4
    iget-boolean p1, p0, Lorg/greenrobot/eventbus/b;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/b;->c:Z

    .line 6
    iget-object p1, p0, Lorg/greenrobot/eventbus/b;->b:Lorg/greenrobot/eventbus/c;

    invoke-virtual {p1}, Lorg/greenrobot/eventbus/c;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 3

    :goto_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/b;->a:Lorg/greenrobot/eventbus/h;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/h;->c(I)Lorg/greenrobot/eventbus/g;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lorg/greenrobot/eventbus/b;->a:Lorg/greenrobot/eventbus/h;

    invoke-virtual {v1}, Lorg/greenrobot/eventbus/h;->b()Lorg/greenrobot/eventbus/g;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/b;->c:Z

    .line 5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/b;->c:Z

    return-void

    .line 7
    :cond_0
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 8
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/greenrobot/eventbus/b;->b:Lorg/greenrobot/eventbus/c;

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->k(Lorg/greenrobot/eventbus/g;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 9
    :catch_0
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was interruppted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 10
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/b;->c:Z

    return-void

    :goto_2
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/b;->c:Z

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

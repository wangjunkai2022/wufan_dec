.class public Lk3/a;
.super Lorg/jboss/netty/channel/w;
.source "ChannelRunnableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final l:Ljava/lang/Runnable;

.field private m:Z


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/e;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/w;-><init>(Lorg/jboss/netty/channel/e;Z)V

    .line 2
    iput-object p2, p0, Lk3/a;->l:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lk3/a;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/jboss/netty/channel/w;->cancel()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk3/a;->m:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lk3/a;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    invoke-virtual {p0}, Lorg/jboss/netty/channel/w;->setSuccess()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/w;->setFailure(Ljava/lang/Throwable;)Z

    :goto_0
    return-void

    .line 8
    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

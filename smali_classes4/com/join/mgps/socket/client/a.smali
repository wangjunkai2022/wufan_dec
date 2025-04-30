.class public Lcom/join/mgps/socket/client/a;
.super Ljava/lang/Object;
.source "ClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/client/a$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "a"


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/util/concurrent/ExecutorService;

.field c:Lcom/join/mgps/socket/c;

.field d:Lcom/join/mgps/socket/d;

.field e:Ljava/net/Socket;

.field f:Lcom/join/mgps/socket/client/a$b;

.field g:Ljava/util/concurrent/Future;

.field h:Lcom/join/mgps/socket/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/socket/client/a;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/socket/client/a;->f:Lcom/join/mgps/socket/client/a$b;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/socket/client/a;->g:Ljava/util/concurrent/Future;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/socket/client/a;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/socket/client/a;->e:Ljava/net/Socket;

    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/client/a;->a(Ljava/net/Socket;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/socket/b;->d()Lcom/join/mgps/socket/b;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/socket/client/a;->h:Lcom/join/mgps/socket/b;

    return-void
.end method


# virtual methods
.method a(Ljava/net/Socket;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/socket/c;

    iget-object v1, p0, Lcom/join/mgps/socket/client/a;->a:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/socket/c;-><init>(Ljava/net/Socket;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/socket/client/a;->c:Lcom/join/mgps/socket/c;

    .line 3
    new-instance v0, Lcom/join/mgps/socket/d;

    iget-object v1, p0, Lcom/join/mgps/socket/client/a;->a:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/socket/d;-><init>(Ljava/net/Socket;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/socket/client/a;->d:Lcom/join/mgps/socket/d;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/socket/client/a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->c:Lcom/join/mgps/socket/c;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/socket/client/a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->d:Lcom/join/mgps/socket/d;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/socket/client/a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/socket/client/a$a;-><init>(Lcom/join/mgps/socket/client/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->c:Lcom/join/mgps/socket/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/c;->h(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->c:Lcom/join/mgps/socket/c;

    invoke-virtual {v0}, Lcom/join/mgps/socket/c;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->d:Lcom/join/mgps/socket/d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/d;->g(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->d:Lcom/join/mgps/socket/d;

    invoke-virtual {v0}, Lcom/join/mgps/socket/d;->a()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->e:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/socket/client/a$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/socket/client/a$b;-><init>(Lcom/join/mgps/socket/client/a;)V

    iput-object v0, p0, Lcom/join/mgps/socket/client/a;->f:Lcom/join/mgps/socket/client/a$b;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/socket/client/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/socket/client/a;->g:Ljava/util/concurrent/Future;

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->g:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->f:Lcom/join/mgps/socket/client/a$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->f:Lcom/join/mgps/socket/client/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/client/a$b;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/client/a;->g:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

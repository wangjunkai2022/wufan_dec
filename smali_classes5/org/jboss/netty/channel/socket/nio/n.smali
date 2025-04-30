.class public Lorg/jboss/netty/channel/socket/nio/n;
.super Ljava/lang/Object;
.source "NioClientSocketChannelFactory.java"

# interfaces
.implements Lk3/b;


# static fields
.field private static final e:I = 0x1


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/h<",
            "Lorg/jboss/netty/channel/socket/nio/k;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lorg/jboss/netty/channel/socket/nio/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/y<",
            "Lorg/jboss/netty/channel/socket/nio/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/jboss/netty/channel/socket/nio/o;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Lorg/jboss/netty/channel/socket/nio/y<",
            "Lorg/jboss/netty/channel/socket/nio/t;",
            ">;)V"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/jboss/netty/util/c;

    invoke-direct {v0}, Lorg/jboss/netty/util/c;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/y;Lorg/jboss/netty/util/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/y;Lorg/jboss/netty/util/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Lorg/jboss/netty/channel/socket/nio/y<",
            "Lorg/jboss/netty/channel/socket/nio/t;",
            ">;",
            "Lorg/jboss/netty/util/g;",
            ")V"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p4, v1}, Lorg/jboss/netty/channel/socket/nio/l;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/g;Lorg/jboss/netty/util/d;)V

    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Lorg/jboss/netty/channel/socket/nio/h;Lorg/jboss/netty/channel/socket/nio/y;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 3
    sget v0, Lorg/jboss/netty/channel/socket/nio/v;->a:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;II)V
    .locals 1

    .line 5
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/u;

    invoke-direct {v0, p2, p4}, Lorg/jboss/netty/channel/socket/nio/u;-><init>(Ljava/util/concurrent/Executor;I)V

    invoke-direct {p0, p1, p3, v0}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/y;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/h;Lorg/jboss/netty/channel/socket/nio/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/h<",
            "Lorg/jboss/netty/channel/socket/nio/k;",
            ">;",
            "Lorg/jboss/netty/channel/socket/nio/y<",
            "Lorg/jboss/netty/channel/socket/nio/t;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bossPool"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "workerPool"

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/n;->a:Lorg/jboss/netty/channel/socket/nio/h;

    .line 12
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/n;->b:Lorg/jboss/netty/channel/socket/nio/y;

    .line 13
    new-instance p2, Lorg/jboss/netty/channel/socket/nio/o;

    invoke-direct {p2, p1}, Lorg/jboss/netty/channel/socket/nio/o;-><init>(Lorg/jboss/netty/channel/socket/nio/h;)V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/n;->c:Lorg/jboss/netty/channel/socket/nio/o;

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->a:Lorg/jboss/netty/channel/socket/nio/h;

    instance-of v1, v0, Lorg/jboss/netty/util/b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/jboss/netty/util/b;

    invoke-interface {v0}, Lorg/jboss/netty/util/b;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->b:Lorg/jboss/netty/channel/socket/nio/y;

    instance-of v1, v0, Lorg/jboss/netty/util/b;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lorg/jboss/netty/util/b;

    invoke-interface {v0}, Lorg/jboss/netty/util/b;->b()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/n;)Lk3/d;
    .locals 3

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/m;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/n;->c:Lorg/jboss/netty/channel/socket/nio/o;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/n;->b:Lorg/jboss/netty/channel/socket/nio/y;

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/y;->e()Lk3/f;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/t;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/jboss/netty/channel/socket/nio/m;-><init>(Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/t;)V

    return-object v0
.end method

.method public bridge synthetic a(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/n;->a(Lorg/jboss/netty/channel/n;)Lk3/d;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/n;->shutdown()V

    .line 2
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/n;->c()V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->a:Lorg/jboss/netty/channel/socket/nio/h;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/q;->shutdown()V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->b:Lorg/jboss/netty/channel/socket/nio/y;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/q;->shutdown()V

    .line 3
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->d:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/n;->c()V

    :cond_0
    return-void
.end method

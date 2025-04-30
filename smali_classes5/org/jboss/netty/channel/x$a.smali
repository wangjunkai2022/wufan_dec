.class final Lorg/jboss/netty/channel/x$a;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field volatile a:Lorg/jboss/netty/channel/x$a;

.field volatile b:Lorg/jboss/netty/channel/x$a;

.field private final c:Ljava/lang/String;

.field private final d:Lorg/jboss/netty/channel/ChannelHandler;

.field private final e:Z

.field private final f:Z

.field private volatile g:Ljava/lang/Object;

.field final synthetic h:Lorg/jboss/netty/channel/x;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "name"

    .line 2
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "handler"

    .line 3
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    instance-of p1, p5, Lorg/jboss/netty/channel/r;

    iput-boolean p1, p0, Lorg/jboss/netty/channel/x$a;->e:Z

    .line 5
    instance-of v0, p5, Lorg/jboss/netty/channel/g;

    iput-boolean v0, p0, Lorg/jboss/netty/channel/x$a;->f:Z

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handler must be either "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lorg/jboss/netty/channel/r;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " or "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lorg/jboss/netty/channel/g;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 8
    iput-object p3, p0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 9
    iput-object p4, p0, Lorg/jboss/netty/channel/x$a;->c:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lorg/jboss/netty/channel/x$a;->d:Lorg/jboss/netty/channel/ChannelHandler;

    return-void
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/x;->o(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/x;->E(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/x$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public c(Lorg/jboss/netty/channel/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/x;->n(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/x;->m()Lorg/jboss/netty/channel/p;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/channel/p;->a(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/channel/x;->A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/x;->D(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V

    :goto_0
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/x$a;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/x$a;->f:Z

    return v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x$a;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->d:Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    return-object v0
.end method

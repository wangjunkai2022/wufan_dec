.class public Lorg/jboss/netty/channel/v;
.super Ljava/lang/Object;
.source "DefaultChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/f;


# instance fields
.field private volatile a:Lorg/jboss/netty/buffer/f;

.field private volatile b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/jboss/netty/buffer/n;->g()Lorg/jboss/netty/buffer/f;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/v;->a:Lorg/jboss/netty/buffer/f;

    const/16 v0, 0x2710

    .line 3
    iput v0, p0, Lorg/jboss/netty/channel/v;->b:I

    return-void
.end method


# virtual methods
.method public b()Lorg/jboss/netty/channel/o;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "pipelineFactory"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lorg/jboss/netty/channel/o;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/v;->h(Lorg/jboss/netty/channel/o;)V

    goto :goto_0

    :cond_0
    const-string v0, "connectTimeoutMillis"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/v;->setConnectTimeoutMillis(I)V

    goto :goto_0

    :cond_1
    const-string v0, "bufferFactory"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    check-cast p2, Lorg/jboss/netty/buffer/f;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/v;->d(Lorg/jboss/netty/buffer/f;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lorg/jboss/netty/buffer/f;)V
    .locals 1

    const-string v0, "bufferFactory"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/channel/v;->a:Lorg/jboss/netty/buffer/f;

    return-void
.end method

.method public g()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/v;->a:Lorg/jboss/netty/buffer/f;

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/v;->b:I

    return v0
.end method

.method public h(Lorg/jboss/netty/channel/o;)V
    .locals 0

    return-void
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lorg/jboss/netty/channel/v;->b:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/channel/v;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

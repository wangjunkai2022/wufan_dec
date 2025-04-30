.class Lorg/jboss/netty/channel/socket/nio/i;
.super Lk3/c;
.source "DefaultNioSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/s;


# static fields
.field private static final i:Lorg/jboss/netty/channel/k0;


# instance fields
.field private volatile d:I

.field private volatile e:I

.field private volatile f:Lorg/jboss/netty/channel/j0;

.field private volatile g:Lorg/jboss/netty/channel/k0;

.field private volatile h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/d;

    invoke-direct {v0}, Lorg/jboss/netty/channel/d;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/i;->i:Lorg/jboss/netty/channel/k0;

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk3/c;-><init>(Ljava/net/Socket;)V

    const/high16 p1, 0x10000

    .line 2
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->d:I

    const p1, 0x8000

    .line 3
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:I

    .line 4
    sget-object p1, Lorg/jboss/netty/channel/socket/nio/i;->i:Lorg/jboss/netty/channel/k0;

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->g:Lorg/jboss/netty/channel/k0;

    const/16 p1, 0x10

    .line 5
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->h:I

    return-void
.end method

.method private j(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->d:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferHighWaterMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferLowWaterMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/k0;)V
    .locals 1

    const-string v0, "predictorFactory"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->g:Lorg/jboss/netty/channel/k0;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lk3/c;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "writeBufferHighWaterMark"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->j(I)V

    goto :goto_0

    :cond_1
    const-string v0, "writeBufferLowWaterMark"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->k(I)V

    goto :goto_0

    :cond_2
    const-string v0, "writeSpinCount"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->setWriteSpinCount(I)V

    goto :goto_0

    :cond_3
    const-string v0, "receiveBufferSizePredictorFactory"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    check-cast p2, Lorg/jboss/netty/channel/k0;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/nio/i;->a(Lorg/jboss/netty/channel/k0;)V

    goto :goto_0

    :cond_4
    const-string v0, "receiveBufferSizePredictor"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    check-cast p2, Lorg/jboss/netty/channel/j0;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/nio/i;->i(Lorg/jboss/netty/channel/j0;)V

    :goto_0
    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public e()Lorg/jboss/netty/channel/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->g:Lorg/jboss/netty/channel/k0;

    return-object v0
.end method

.method public f()Lorg/jboss/netty/channel/j0;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->f:Lorg/jboss/netty/channel/j0;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->e()Lorg/jboss/netty/channel/k0;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/k0;->a()Lorg/jboss/netty/channel/j0;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->f:Lorg/jboss/netty/channel/j0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create a new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lorg/jboss/netty/channel/j0;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getWriteBufferHighWaterMark()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->d:I

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:I

    return v0
.end method

.method public getWriteSpinCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->h:I

    return v0
.end method

.method public i(Lorg/jboss/netty/channel/j0;)V
    .locals 1

    const-string v0, "predictor"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->f:Lorg/jboss/netty/channel/j0;

    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 1
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
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/v;->setOptions(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferHighWaterMark()I

    move-result p1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferLowWaterMark()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferHighWaterMark()I

    move-result p1

    ushr-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->k(I)V

    :cond_0
    return-void
.end method

.method public setWriteBufferHighWaterMark(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferLowWaterMark()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->j(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferLowWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteBufferLowWaterMark(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferHighWaterMark()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->k(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferHighWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriteSpinCount(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->h:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeSpinCount must be a positive integer."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class final Lorg/jboss/netty/channel/socket/nio/x;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/util/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/x$a;,
        Lorg/jboss/netty/channel/socket/nio/x$b;,
        Lorg/jboss/netty/channel/socket/nio/x$c;,
        Lorg/jboss/netty/channel/socket/nio/x$d;,
        Lorg/jboss/netty/channel/socket/nio/x$h;,
        Lorg/jboss/netty/channel/socket/nio/x$g;,
        Lorg/jboss/netty/channel/socket/nio/x$f;,
        Lorg/jboss/netty/channel/socket/nio/x$e;
    }
.end annotation


# static fields
.field private static final c:Lorg/jboss/netty/channel/socket/nio/x$g;

.field private static final d:I = 0x10000

.field private static final e:I = 0x4

.field private static final f:I = 0xf


# instance fields
.field private a:Lorg/jboss/netty/channel/socket/nio/x$f;

.field private b:Lorg/jboss/netty/channel/socket/nio/x$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$a;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/x$a;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/x;->c:Lorg/jboss/netty/channel/socket/nio/x$g;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$e;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/x$e;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    return-void
.end method

.method static synthetic c(Lorg/jboss/netty/channel/socket/nio/x;)Lorg/jboss/netty/channel/socket/nio/x$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    return-object p0
.end method

.method static synthetic d(Lorg/jboss/netty/channel/socket/nio/x;)Lorg/jboss/netty/channel/socket/nio/x$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    return-object p0
.end method

.method static synthetic e(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$f;)Lorg/jboss/netty/channel/socket/nio/x$f;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    return-object p1
.end method

.method private g(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/channel/socket/nio/x$g;
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lorg/jboss/netty/channel/socket/nio/x;->c:Lorg/jboss/netty/channel/socket/nio/x$g;

    return-object p1

    .line 3
    :cond_0
    instance-of v1, p1, Lorg/jboss/netty/buffer/i;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/buffer/i;

    invoke-virtual {v1}, Lorg/jboss/netty/buffer/i;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$c;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->F0()[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/x$c;-><init>([Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 5
    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$h;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->c0()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/x$h;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 7
    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v1

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_3

    .line 8
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$h;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->c0()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/x$h;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 9
    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 10
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 12
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    .line 13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    invoke-static {v3}, Lorg/jboss/netty/channel/socket/nio/x;->i(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    iget v2, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 17
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/x$d;

    invoke-direct {v2, p0, v1, v0}, Lorg/jboss/netty/channel/socket/nio/x$d;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_4
    if-le v0, v3, :cond_5

    .line 18
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/x;->j()Lorg/jboss/netty/channel/socket/nio/x$e;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 19
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 21
    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/x;->i(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 23
    iget v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 24
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/x$d;

    invoke-direct {v2, p0, v1, v3}, Lorg/jboss/netty/channel/socket/nio/x$d;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 25
    :cond_5
    iget v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    .line 26
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/x;->k()Lorg/jboss/netty/channel/socket/nio/x$e;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 27
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/x$d;

    iget-object v0, v1, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    invoke-direct {v2, p0, v1, v0}, Lorg/jboss/netty/channel/socket/nio/x$d;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Ljava/nio/ByteBuffer;)V

    .line 28
    :goto_0
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/x$h;->a:Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 30
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lorg/jboss/netty/buffer/e;->w0(ILjava/nio/ByteBuffer;)V

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object v2
.end method

.method private h(Lorg/jboss/netty/channel/g0;)Lorg/jboss/netty/channel/socket/nio/x$g;
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/g0;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    sget-object p1, Lorg/jboss/netty/channel/socket/nio/x;->c:Lorg/jboss/netty/channel/socket/nio/x$g;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$b;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/x$b;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/g0;)V

    return-object v0
.end method

.method private static i(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 p0, v0, 0x4

    return p0
.end method

.method private j()Lorg/jboss/netty/channel/socket/nio/x$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 2
    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/x;->k()Lorg/jboss/netty/channel/socket/nio/x$e;

    move-result-object v0

    return-object v0
.end method

.method private k()Lorg/jboss/netty/channel/socket/nio/x$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 3
    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/x$f;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    if-eqz v1, :cond_1

    .line 4
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    return-object v1

    :cond_1
    if-nez v0, :cond_0

    .line 5
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    .line 6
    :cond_2
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/x$e;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/x$e;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x;->b:Lorg/jboss/netty/channel/socket/nio/x$e;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lorg/jboss/netty/util/internal/a;->a(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method f(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/x$g;
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/jboss/netty/buffer/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/jboss/netty/buffer/e;

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/x;->g(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/channel/socket/nio/x$g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/channel/g0;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/jboss/netty/channel/g0;

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/x;->h(Lorg/jboss/netty/channel/g0;)Lorg/jboss/netty/channel/socket/nio/x$g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

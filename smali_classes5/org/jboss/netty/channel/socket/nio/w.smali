.class final Lorg/jboss/netty/channel/socket/nio/w;
.super Ljava/lang/Object;
.source "SocketReceiveBufferAllocator.java"

# interfaces
.implements Lorg/jboss/netty/util/b;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x50

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/w;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->c:I

    .line 4
    iput p2, p0, Lorg/jboss/netty/channel/socket/nio/w;->d:I

    return-void
.end method

.method private d(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:I

    .line 3
    invoke-static {v0}, Lorg/jboss/netty/util/internal/a;->a(Ljava/nio/ByteBuffer;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/w;->e(I)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private static e(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0xa

    and-int/lit16 p0, p0, 0x3ff

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 p0, v0, 0xa

    return p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lorg/jboss/netty/util/internal/a;->a(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method c(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/w;->d(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/w;->d(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->d:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    if-le v0, p1, :cond_3

    .line 6
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:I

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->c:I

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/w;->d(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:I

    .line 10
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    :goto_0
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/ByteBuffer;

    return-object p1
.end method

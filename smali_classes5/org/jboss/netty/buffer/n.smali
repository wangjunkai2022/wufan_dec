.class public Lorg/jboss/netty/buffer/n;
.super Lorg/jboss/netty/buffer/b;
.source "HeapChannelBufferFactory.java"


# static fields
.field private static final b:Lorg/jboss/netty/buffer/n;

.field private static final c:Lorg/jboss/netty/buffer/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/n;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/n;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/n;->b:Lorg/jboss/netty/buffer/n;

    .line 2
    new-instance v0, Lorg/jboss/netty/buffer/n;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/n;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/n;->c:Lorg/jboss/netty/buffer/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/b;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public static g()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/n;->b:Lorg/jboss/netty/buffer/n;

    return-object v0
.end method

.method public static h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lorg/jboss/netty/buffer/n;->b:Lorg/jboss/netty/buffer/n;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    .line 4
    sget-object p0, Lorg/jboss/netty/buffer/n;->c:Lorg/jboss/netty/buffer/n;

    return-object p0

    :cond_1
    const-string v0, "endianness"

    .line 5
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should not reach here"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lorg/jboss/netty/buffer/h;->b0(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/buffer/h;->Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/n;->f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 5
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->A0(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/h;->b(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1
.end method

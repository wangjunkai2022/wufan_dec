.class public abstract Lorg/jboss/netty/buffer/b;
.super Ljava/lang/Object;
.source "AbstractChannelBufferFactory.java"

# interfaces
.implements Lorg/jboss/netty/buffer/f;


# instance fields
.field private final a:Ljava/nio/ByteOrder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/b;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultOrder"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/jboss/netty/buffer/b;->a:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public a(I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/b;->d()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/f;->f(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/b;->a:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public e([BII)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/b;->d()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/f;->b(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1
.end method

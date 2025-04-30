.class final Lorg/jboss/netty/channel/socket/nio/x$f;
.super Ljava/lang/ref/SoftReference;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lorg/jboss/netty/channel/socket/nio/x$e;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lorg/jboss/netty/channel/socket/nio/x$f;

.field final synthetic b:Lorg/jboss/netty/channel/socket/nio/x;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Lorg/jboss/netty/channel/socket/nio/x$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x$f;->b:Lorg/jboss/netty/channel/socket/nio/x;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/x$f;->a:Lorg/jboss/netty/channel/socket/nio/x$f;

    return-void
.end method

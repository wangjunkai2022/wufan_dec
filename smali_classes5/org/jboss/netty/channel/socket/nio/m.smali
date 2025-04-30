.class final Lorg/jboss/netty/channel/socket/nio/m;
.super Lorg/jboss/netty/channel/socket/nio/r;
.source "NioClientSocketChannel.java"


# instance fields
.field volatile I:Lorg/jboss/netty/channel/j;

.field volatile J:Z

.field K:J

.field volatile n0:Lorg/jboss/netty/util/f;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/t;)V
    .locals 7

    .line 1
    invoke-static {}, Lorg/jboss/netty/channel/socket/nio/m;->Q0()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/socket/nio/r;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/t;)V

    .line 2
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->x(Lorg/jboss/netty/channel/e;)V

    return-void
.end method

.method private static Q0()Ljava/nio/channels/SocketChannel;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 2
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    :try_start_2
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    const-string v3, "Failed to enter non-blocking mode."

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6
    :goto_1
    throw v1

    :catch_2
    move-exception v0

    .line 7
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to open a socket."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

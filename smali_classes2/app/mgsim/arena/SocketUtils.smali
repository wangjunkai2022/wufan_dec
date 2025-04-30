.class public Lapp/mgsim/arena/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeInputStream(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeOutStream(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeSocket(Ljava/net/Socket;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/net/Socket;->shutdownInput()V

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->shutdownOutput()V

    .line 4
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static createBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;
    .locals 1

    .line 1
    new-instance v0, Lapp/mgsim/arena/SocketError;

    invoke-direct {v0, p0, p1}, Lapp/mgsim/arena/SocketError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/SocketError;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lapp/mgsim/arena/SocketError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

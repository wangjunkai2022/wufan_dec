.class public Lcom/join/mgps/aidl/WifiServerThread$b;
.super Ljava/lang/Object;
.source "WifiServerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/aidl/WifiServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/BufferedReader;

.field private c:Ljava/io/BufferedOutputStream;

.field d:Ljava/io/DataInputStream;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/join/mgps/aidl/Client;

.field private h:Ljava/lang/Object;

.field final synthetic i:Lcom/join/mgps/aidl/WifiServerThread;


# direct methods
.method public constructor <init>(Lcom/join/mgps/aidl/WifiServerThread;Ljava/net/Socket;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->b:Ljava/io/BufferedReader;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->e:Ljava/util/List;

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->f:Z

    .line 6
    iput-object p2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    .line 7
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object p2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    .line 8
    new-instance p1, Ljava/io/DataInputStream;

    iget-object p2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$500(Lcom/join/mgps/aidl/WifiServerThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x232a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public e([B)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "gbk"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server send="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {p1}, Lcom/join/mgps/aidl/WifiServerThread;->access$500(Lcom/join/mgps/aidl/WifiServerThread;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x232a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$102(Lcom/join/mgps/aidl/WifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$300(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/aidl/Client;

    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->g:Lcom/join/mgps/aidl/Client;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/join/mgps/aidl/WifiServerThread;->access$402(Lcom/join/mgps/aidl/WifiServerThread;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send =wifiap_single_acknowledge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/WifiServerThread;->access$400(Lcom/join/mgps/aidl/WifiServerThread;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiap_single_acknowledge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/WifiServerThread;->access$400(Lcom/join/mgps/aidl/WifiServerThread;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v2

    goto :goto_1

    .line 12
    :cond_1
    new-array v3, v2, [B

    .line 13
    iget-object v4, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->d:Ljava/io/DataInputStream;

    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->read([B)I

    .line 14
    new-instance v4, Ljava/lang/String;

    const-string v5, "gbk"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 15
    iget-object v5, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v5}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server receive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->g:Lcom/join/mgps/aidl/Client;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/join/mgps/aidl/Client;->setLastResponseTime(J)V

    .line 17
    iget-boolean v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->f:Z

    if-nez v2, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v6}, Lcom/join/mgps/aidl/WifiServerThread;->access$400(Lcom/join/mgps/aidl/WifiServerThread;)I

    move-result v6

    add-int/2addr v6, v5

    if-ne v2, v6, :cond_2

    .line 18
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 19
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/WifiServerThread;->access$300(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/aidl/Client;

    sget-object v3, Lcom/join/mgps/aidl/Client$ClientStatus;->BOUND:Lcom/join/mgps/aidl/Client$ClientStatus;

    invoke-virtual {v2, v3}, Lcom/join/mgps/aidl/Client;->setStatus(Lcom/join/mgps/aidl/Client$ClientStatus;)V

    const/16 v2, 0x2329

    .line 20
    iput v2, v0, Landroid/os/Message;->what:I

    .line 21
    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->i:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/WifiServerThread;->access$500(Lcom/join/mgps/aidl/WifiServerThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    iput-boolean v5, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->f:Z

    .line 23
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->g:Lcom/join/mgps/aidl/Client;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_2

    :cond_2
    const-string v0, "wifiap_single_sync"

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string v0, "signalShutDown"

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/aidl/WifiServerThread$b;->a()V

    goto/16 :goto_0

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$b;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method

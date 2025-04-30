.class public Lcom/join/mgps/helper/WifiClientThread;
.super Ljava/lang/Object;
.source "WifiClientThread.java"


# static fields
.field public static final SERVERPORT:I = 0x2001


# instance fields
.field private IP:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private bufferedOutputStream:Ljava/io/BufferedOutputStream;

.field private checking:Z

.field public context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public in:Ljava/io/InputStream;

.field private ind:Ljava/io/DataInputStream;

.field private mHandler:Landroid/os/Handler;

.field public socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/helper/WifiClientThread;->checking:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->datas:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/helper/WifiClientThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/DataInputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiClientThread;->ind:Ljava/io/DataInputStream;

    return-object p0
.end method

.method static synthetic access$002(Lcom/join/mgps/helper/WifiClientThread;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->ind:Ljava/io/DataInputStream;

    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/helper/WifiClientThread;Ljava/io/BufferedOutputStream;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    return-object p1
.end method

.method static synthetic access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiClientThread;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiClientThread;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "signalShutDown"

    const-string v1, "utf8"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/helper/WifiClientThread;->send([B)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 6
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public close(Z)V
    .locals 1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x232a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public disConnect()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->disconnect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public get()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->datas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread;->datas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0
.end method

.method public run(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/helper/WifiClientThread$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/helper/WifiClientThread$a;-><init>(Lcom/join/mgps/helper/WifiClientThread;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public send([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/helper/WifiClientThread;->bufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/helper/WifiClientThread;->checking:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x232a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/helper/WifiClientThread;->close()V

    :goto_0
    return-void

    .line 8
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/helper/WifiClientThread;->checking:Z

    return-void
.end method

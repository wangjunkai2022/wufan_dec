.class public Lcom/join/mgps/aidl/MGWifiServerThread$b;
.super Ljava/lang/Object;
.source "MGWifiServerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/aidl/MGWifiServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/BufferedOutputStream;

.field private c:Ljava/io/DataInputStream;

.field private d:Z

.field final synthetic e:Lcom/join/mgps/aidl/MGWifiServerThread;


# direct methods
.method public constructor <init>(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    .line 5
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object p2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/io/BufferedOutputStream;

    .line 6
    new-instance p1, Ljava/io/DataInputStream;

    iget-object p2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/aidl/MGWifiServerThread$b;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/io/BufferedOutputStream;

    return-object p0
.end method

.method private d([B)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "gbk"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server send="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x232a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$202(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x2331

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x232a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread$b;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$b$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiServerThread$b$b;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread$b;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$600(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    goto :goto_1

    .line 7
    :cond_1
    new-array v1, v0, [B

    .line 8
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 9
    new-instance v2, Ljava/lang/String;

    const-string v3, "gbk"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tbl>>>server receive:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x0

    .line 11
    :try_start_2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v3, Lcom/join/mgps/aidl/FightProtocal;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/aidl/FightProtocal;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 12
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-nez v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v1

    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lcom/join/mgps/aidl/FightProtocalManager;->ackReceivedSignal(Lcom/join/mgps/aidl/FightProtocal;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 15
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x2329

    .line 16
    iput v2, v1, Landroid/os/Message;->what:I

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getOpponent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setBrand(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$600(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d([B)V

    .line 22
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$c;

    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-direct {v0, v1}, Lcom/join/mgps/aidl/MGWifiServerThread$c;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 23
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$b$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiServerThread$b$a;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread$b;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 25
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v1

    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 26
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    iput-boolean v3, v1, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 28
    invoke-static {v0}, Lcom/join/mgps/aidl/FightProtocalManager;->ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->d([B)V

    .line 29
    invoke-virtual {p0, v3}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b(Z)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    goto/16 :goto_0

    .line 31
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v1

    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    if-ne v1, v2, :cond_5

    .line 32
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    iput-boolean v3, v0, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->b(Z)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    goto/16 :goto_0

    .line 36
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v0

    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_SYNC:B

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/join/mgps/aidl/MGWifiServerThread;->lastSyncTime:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

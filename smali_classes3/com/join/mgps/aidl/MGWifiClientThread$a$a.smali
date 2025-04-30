.class Lcom/join/mgps/aidl/MGWifiClientThread$a$a;
.super Ljava/lang/Object;
.source "MGWifiClientThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiClientThread$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/aidl/MGWifiClientThread$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiClientThread$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    const-string v1, "-1"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$100(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$100(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    goto :goto_1

    .line 4
    :cond_2
    new-array v2, v0, [B

    .line 5
    iget-object v3, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v3, v3, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v3}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$100(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/DataInputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 6
    new-instance v3, Ljava/lang/String;

    const-string v4, "gbk"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client Receiver:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$400(Lcom/join/mgps/aidl/MGWifiClientThread;)Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v4, Lcom/join/mgps/aidl/FightProtocal;

    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/aidl/FightProtocal;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v3

    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v4, :cond_4

    .line 10
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    move-result v0

    sget-byte v3, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    if-ne v0, v3, :cond_3

    .line 11
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x2329

    .line 12
    iput v3, v0, Landroid/os/Message;->what:I

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getBrand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getOpponent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread$c;

    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-direct {v0, v2}, Lcom/join/mgps/aidl/MGWifiClientThread$c;-><init>(Lcom/join/mgps/aidl/MGWifiClientThread;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiClientThread$a$a$a;-><init>(Lcom/join/mgps/aidl/MGWifiClientThread$a$a;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-static {v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignalClient(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 22
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v3

    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    const/4 v5, 0x0

    if-ne v3, v4, :cond_5

    .line 23
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iput-boolean v5, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    .line 24
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-static {v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x232a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 28
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v3

    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    if-ne v3, v4, :cond_6

    .line 29
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iput-boolean v5, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    .line 30
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2331

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 32
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v3

    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_STARTGAME:B

    if-ne v3, v4, :cond_7

    .line 33
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start game:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iput-boolean v5, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    .line 35
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x232d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 37
    :cond_7
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v0

    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_SYNC:B

    if-ne v0, v2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->lastSyncTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 39
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x232b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    :try_start_3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_8

    .line 43
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 44
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    return-void

    :catch_2
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.class Lcom/join/mgps/helper/WifiClientThread$a$a;
.super Ljava/lang/Object;
.source "WifiClientThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/WifiClientThread$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/WifiClientThread$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/WifiClientThread$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$000(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/DataInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$000(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/DataInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    goto :goto_1

    .line 5
    :cond_2
    new-array v2, v1, [B

    .line 6
    iget-object v3, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v3, v3, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v3}, Lcom/join/mgps/helper/WifiClientThread;->access$000(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/DataInputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 7
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v2, v2, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v2}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client Receiver:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v4, Lcom/join/mgps/aidl/FightProtocal;

    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/aidl/FightProtocal;

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v3

    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v4, :cond_5

    .line 11
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    move-result v1

    sget-byte v3, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    if-ne v1, v3, :cond_3

    const/16 v1, 0x2329

    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getOpponent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getGameId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v3, v3, Lcom/join/mgps/helper/WifiClientThread$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-static {v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignalClient(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x2332

    .line 19
    iput v1, v0, Landroid/os/Message;->what:I

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiClientThread;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 24
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v0

    sget-byte v3, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    if-ne v0, v3, :cond_6

    .line 25
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-static {v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x232a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 29
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v0

    sget-byte v3, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    if-ne v0, v3, :cond_7

    .line 30
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2331

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 32
    :cond_7
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v0

    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_STARTGAME:B

    if-ne v0, v2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start game:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x232d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 36
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x232b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    :try_start_3
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_8

    .line 39
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->a:Lcom/join/mgps/helper/WifiClientThread$a;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    return-void

    :catch_2
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

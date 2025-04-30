.class public Lcom/join/mgps/helper/WifiServerThread$c;
.super Ljava/lang/Object;
.source "WifiServerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/WifiServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/BufferedOutputStream;

.field private c:Ljava/io/DataInputStream;

.field private d:Z

.field private e:Z

.field final synthetic f:Lcom/join/mgps/helper/WifiServerThread;


# direct methods
.method public constructor <init>(Lcom/join/mgps/helper/WifiServerThread;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->d:Z

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->e:Z

    .line 5
    iput-object p2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

    .line 6
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object p2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/io/BufferedOutputStream;

    .line 7
    new-instance p1, Ljava/io/DataInputStream;

    iget-object p2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/helper/WifiServerThread$c;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/io/BufferedOutputStream;

    return-object p0
.end method

.method private d([B)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server send="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/helper/WifiServerThread;->access$1002(Lcom/join/mgps/helper/WifiServerThread;Z)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {p1}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x232a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/join/mgps/helper/WifiServerThread;->access$302(Lcom/join/mgps/helper/WifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

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
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {p1}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x2331

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {p1}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x232a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/helper/WifiServerThread$c$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/helper/WifiServerThread$c$a;-><init>(Lcom/join/mgps/helper/WifiServerThread$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/io/BufferedOutputStream;

    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->startGame()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$600(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread;->access$700(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/helper/WifiServerThread;->access$800(Lcom/join/mgps/helper/WifiServerThread;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/helper/WifiServerThread$c;->d([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    :goto_1
    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    goto :goto_1

    .line 7
    :cond_1
    new-array v2, v1, [B

    .line 8
    iget-object v3, p0, Lcom/join/mgps/helper/WifiServerThread$c;->c:Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 9
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server receive:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread;->access$900(Lcom/join/mgps/helper/WifiServerThread;)Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/aidl/FightProtocal;

    invoke-virtual {v1, v3, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/aidl/FightProtocal;

    if-nez v1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v2

    sget-byte v3, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    invoke-static {v1}, Lcom/join/mgps/aidl/FightProtocalManager;->ackReceivedSignal(Lcom/join/mgps/aidl/FightProtocal;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iput-boolean v5, p0, Lcom/join/mgps/helper/WifiServerThread$c;->e:Z

    const/16 v2, 0x2329

    .line 14
    iput v2, v0, Landroid/os/Message;->what:I

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getOpponent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    iget-object v2, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v2}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/join/mgps/aidl/FightProtocal;->setBrand(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$800(Lcom/join/mgps/helper/WifiServerThread;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$900(Lcom/join/mgps/helper/WifiServerThread;)Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/helper/WifiServerThread$c;->d([B)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 21
    iput-boolean v4, p0, Lcom/join/mgps/helper/WifiServerThread$c;->e:Z

    goto/16 :goto_0

    .line 22
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v0

    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    if-ne v0, v2, :cond_5

    .line 23
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 24
    iget-boolean v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->e:Z

    if-nez v0, :cond_4

    return-void

    .line 25
    :cond_4
    invoke-static {v1}, Lcom/join/mgps/aidl/FightProtocalManager;->ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/helper/WifiServerThread$c;->d([B)V

    .line 26
    invoke-virtual {p0, v5}, Lcom/join/mgps/helper/WifiServerThread$c;->b(Z)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V

    goto/16 :goto_0

    .line 28
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    move-result v0

    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 30
    iput-boolean v5, p0, Lcom/join/mgps/helper/WifiServerThread$c;->e:Z

    .line 31
    invoke-virtual {p0, v4}, Lcom/join/mgps/helper/WifiServerThread$c;->b(Z)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

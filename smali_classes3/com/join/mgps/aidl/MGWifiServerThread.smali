.class public Lcom/join/mgps/aidl/MGWifiServerThread;
.super Ljava/lang/Object;
.source "MGWifiServerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/aidl/MGWifiServerThread$c;,
        Lcom/join/mgps/aidl/MGWifiServerThread$b;
    }
.end annotation


# static fields
.field private static final SERVERPORT:I = 0x2001


# instance fields
.field private TAG:Ljava/lang/String;

.field private clientMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/aidl/MGWifiServerThread$b;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isDisconnected:Z

.field private isrun:Ljava/lang/Boolean;

.field lastSyncTime:J

.field private mContext:Landroid/content/Context;

.field monitoring:Z

.field private mserverSocket:Ljava/net/ServerSocket;

.field private shutDownPositive:Ljava/lang/Boolean;


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

    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->TAG:Ljava/lang/String;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDownPositive:Ljava/lang/Boolean;

    .line 5
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isDisconnected:Z

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->lastSyncTime:J

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isrun:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$202(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isrun:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDownPositive:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public disConnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getData()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    return-object v0

    :cond_0
    new-array v0, v1, [B

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiServerThread$a;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public send([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server send:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const-string v2, "gbk"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shutDown()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDownPositive:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 5
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->isrun:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 7
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startGame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread;->clientMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.class public Lcom/join/mgps/aidl/WifiServerThread;
.super Ljava/lang/Object;
.source "WifiServerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/aidl/WifiServerThread$b;
    }
.end annotation


# static fields
.field private static final SERVERPORT:I = 0x2001


# instance fields
.field private TAG:Ljava/lang/String;

.field private clientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/aidl/Client;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isrun:Ljava/lang/Boolean;

.field private mserverSocket:Ljava/net/ServerSocket;

.field private single:I


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

    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->TAG:Ljava/lang/String;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/aidl/WifiServerThread;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$002(Lcom/join/mgps/aidl/WifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->isrun:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/aidl/WifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread;->isrun:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/aidl/WifiServerThread;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->single:I

    return p0
.end method

.method static synthetic access$402(Lcom/join/mgps/aidl/WifiServerThread;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/aidl/WifiServerThread;->single:I

    return p1
.end method

.method static synthetic access$500(Lcom/join/mgps/aidl/WifiServerThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/aidl/Client;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/aidl/Client;->getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/aidl/WifiServerThread$b;->a()V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/aidl/Client;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/aidl/Client;->getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/aidl/WifiServerThread$b;->b()[B

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v1, [B

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/aidl/Client;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/aidl/Client;->getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/aidl/WifiServerThread$b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public isShutDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/aidl/WifiServerThread$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/WifiServerThread$a;-><init>(Lcom/join/mgps/aidl/WifiServerThread;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public send(Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public send([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

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
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/aidl/Client;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/aidl/Client;->getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/mgps/aidl/WifiServerThread$b;->e([B)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public shutDown()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const-string v0, "signalShutDown"

    const-string v1, "gbk"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/WifiServerThread;->send([B)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/aidl/WifiServerThread;->close()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 5
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->isrun:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 7
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

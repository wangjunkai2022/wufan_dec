.class public Lapp/mgsim/arena/UDPHelper;
.super Ljava/lang/Object;
.source "UDPHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/mgsim/arena/UDPHelper$UDPSendThread;,
        Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArenaUDP"

.field private static UPD_PORT:I = 0x3012


# instance fields
.field private mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Ljava/net/DatagramSocket;

.field private final mContext:Landroid/content/Context;

.field private mLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private volatile mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 3
    iput-object p1, p0, Lapp/mgsim/arena/UDPHelper;->mContext:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$100(Lapp/mgsim/arena/UDPHelper;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object p0
.end method

.method static synthetic access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/mgsim/arena/UDPHelper;->mClient:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$300(Lapp/mgsim/arena/UDPHelper;BJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lapp/mgsim/arena/UDPHelper;->updateMapForPings(BJ)V

    return-void
.end method

.method static synthetic access$400(Lapp/mgsim/arena/UDPHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lapp/mgsim/arena/UDPHelper;->restartReceiveThread()V

    return-void
.end method

.method static synthetic access$500(Lapp/mgsim/arena/UDPHelper;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lapp/mgsim/arena/UDPHelper;->createBuf(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private createBuf(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private initUDPClient()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    sget v1, Lapp/mgsim/arena/UDPHelper;->UPD_PORT:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mClient:Ljava/net/DatagramSocket;

    const/16 v1, 0x2710

    .line 2
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget v1, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    if-lez v1, :cond_0

    .line 4
    sget v1, Lapp/mgsim/arena/UDPHelper;->UPD_PORT:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lapp/mgsim/arena/UDPHelper;->UPD_PORT:I

    .line 5
    invoke-direct {p0}, Lapp/mgsim/arena/UDPHelper;->initUDPClient()V

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initUDP -->mRetryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--SocketException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    :goto_0
    return-void
.end method

.method private restartReceiveThread()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lapp/mgsim/arena/UDPHelper;->releaseWifiLock()V

    .line 2
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "test udp wifi"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;-><init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/UDPHelper$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateMapForPings(BJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/mgsim/arena/AreaInfo;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 6
    invoke-virtual {v2, p2, p3}, Lapp/mgsim/arena/AreaInfo;->setPingTime(J)V

    .line 7
    iget-object p2, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public getAreaMaps()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initUDPAndStart([Lapp/mgsim/arena/AreaInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 3
    iget-object v4, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v2, "test udp wifi"

    .line 6
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    :cond_1
    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 8
    invoke-direct {p0}, Lapp/mgsim/arena/UDPHelper;->initUDPClient()V

    .line 9
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;-><init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/UDPHelper$1;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 10
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 11
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lapp/mgsim/arena/UDPHelper$UDPSendThread;

    invoke-direct {v4, p0, v2}, Lapp/mgsim/arena/UDPHelper$UDPSendThread;-><init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/AreaInfo;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method printMsg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method releaseWifiLock()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWifiLock mLock  release exception----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mClient:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mClient:Ljava/net/DatagramSocket;

    :cond_0
    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 5
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public updateMaps(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/mgsim/arena/AreaInfo;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getBj()I

    move-result v3

    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setOnLinePeopleCounts(I)V

    .line 7
    iget-object v3, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getSh()I

    move-result v3

    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setOnLinePeopleCounts(I)V

    .line 10
    iget-object v3, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getGz()I

    move-result v3

    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setOnLinePeopleCounts(I)V

    .line 13
    iget-object v3, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

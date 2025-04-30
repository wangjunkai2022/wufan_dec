.class public Lcom/join/mgps/aidl/FightProtocalManager;
.super Ljava/lang/Object;
.source "FightProtocalManager.java"


# static fields
.field public static ackSignal:B

.field static jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    const/4 v0, -0x1

    .line 2
    sput-byte v0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    sput-byte p0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 4
    sget-byte p0, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 5
    sget-object p0, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    invoke-virtual {p0, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ackReceivedSignal(Lcom/join/mgps/aidl/FightProtocal;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    move-result p0

    sget-byte v0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static ackSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    int-to-byte v1, v1

    sput-byte v1, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setGameId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/aidl/FightProtocal;->setGameName(Ljava/lang/String;)V

    .line 5
    sget-byte p0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 6
    sget-byte p0, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B

    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 7
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setBrand(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 9
    sget-object p0, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    invoke-virtual {p0, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ackSignalClient(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    move-result v0

    sput-byte v0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 4
    sget-byte v0, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B

    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 5
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/FightProtocal;->setBrand(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ackSync()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 2
    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_SYNC:B

    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 3
    sget-object v1, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disconnect()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    int-to-byte v1, v1

    sput-byte v1, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 4
    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 5
    sget-object v1, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startGame()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 2
    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_STARTGAME:B

    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 3
    sget-object v1, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

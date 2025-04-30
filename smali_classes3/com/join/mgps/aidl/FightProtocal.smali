.class public Lcom/join/mgps/aidl/FightProtocal;
.super Ljava/lang/Object;
.source "FightProtocal.java"


# static fields
.field public static TYPE_ACK:B = 0x0t

.field public static TYPE_AckDISCONNECT:B = 0x2t

.field public static TYPE_DISCONNECT:B = 0x1t

.field public static TYPE_MISMATCH:B = 0x4t

.field public static TYPE_STARTGAME:B = 0x3t

.field public static TYPE_SYNC:B = 0x5t


# instance fields
.field private brand:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private no:B

.field private opponent:Ljava/lang/String;

.field private type:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/FightProtocal;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/FightProtocal;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/FightProtocal;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/aidl/FightProtocal;->no:B

    return v0
.end method

.method public getOpponent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/FightProtocal;->opponent:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/aidl/FightProtocal;->type:B

    return v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/FightProtocal;->brand:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/FightProtocal;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/FightProtocal;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setNo(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/aidl/FightProtocal;->no:B

    return-void
.end method

.method public setOpponent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/FightProtocal;->opponent:Ljava/lang/String;

    return-void
.end method

.method public setType(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/aidl/FightProtocal;->type:B

    return-void
.end method

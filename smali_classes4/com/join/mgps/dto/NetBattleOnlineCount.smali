.class public Lcom/join/mgps/dto/NetBattleOnlineCount;
.super Ljava/lang/Object;
.source "NetBattleOnlineCount.java"


# instance fields
.field private invite:Ljava/lang/String;

.field private match:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleOnlineCount;->invite:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/NetBattleOnlineCount;->match:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInvite()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleOnlineCount;->invite:Ljava/lang/String;

    return-object v0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleOnlineCount;->match:Ljava/lang/String;

    return-object v0
.end method

.method public setInvite(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleOnlineCount;->invite:Ljava/lang/String;

    return-void
.end method

.method public setMatch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleOnlineCount;->match:Ljava/lang/String;

    return-void
.end method

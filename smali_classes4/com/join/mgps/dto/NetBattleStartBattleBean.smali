.class public Lcom/join/mgps/dto/NetBattleStartBattleBean;
.super Ljava/lang/Object;
.source "NetBattleStartBattleBean.java"


# instance fields
.field private client_ip:Ljava/lang/String;

.field private error_msg:Ljava/lang/String;

.field private remaining_seconds:Ljava/lang/String;

.field private server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

.field private winning_reward_money:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->remaining_seconds:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->error_msg:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->client_ip:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->winning_reward_money:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->remaining_seconds:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->error_msg:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->client_ip:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->winning_reward_money:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->remaining_seconds:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->remaining_seconds:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->error_msg:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->client_ip:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->winning_reward_money:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->remaining_seconds:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->error_msg:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    return-void
.end method


# virtual methods
.method public getClient_ip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->client_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRemaining_seconds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->remaining_seconds:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    return-object v0
.end method

.method public getWinning_reward_money()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->winning_reward_money:Ljava/lang/String;

    return-object v0
.end method

.method public setClient_ip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->client_ip:Ljava/lang/String;

    return-void
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setRemaining_seconds(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->remaining_seconds:Ljava/lang/String;

    return-void
.end method

.method public setServer(Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    return-void
.end method

.method public setWinning_reward_money(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartBattleBean;->winning_reward_money:Ljava/lang/String;

    return-void
.end method

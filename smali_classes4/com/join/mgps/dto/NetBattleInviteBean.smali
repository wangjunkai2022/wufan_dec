.class public Lcom/join/mgps/dto/NetBattleInviteBean;
.super Ljava/lang/Object;
.source "NetBattleInviteBean.java"


# instance fields
.field private client_ip:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

.field private status:Ljava/lang/String;

.field private user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->status:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->error:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    return-void
.end method


# virtual methods
.method public getClient_ip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_info()Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    return-object v0
.end method

.method public setClient_ip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->error:Ljava/lang/String;

    return-void
.end method

.method public setServer(Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUser_info(Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetBattleInviteBean{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", error=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

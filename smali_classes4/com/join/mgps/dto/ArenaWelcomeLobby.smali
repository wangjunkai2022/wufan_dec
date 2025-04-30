.class public Lcom/join/mgps/dto/ArenaWelcomeLobby;
.super Ljava/lang/Object;
.source "ArenaWelcomeLobby.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private close_show_url:Ljava/lang/String;

.field private config:Lcom/join/mgps/dto/ArenaConfig;

.field private error:Ljava/lang/String;

.field private filter_config:Lcom/join/mgps/dto/ArenaFilterConfig;

.field private server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private user:Lcom/join/mgps/dto/ArenaUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClose_show_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->close_show_url:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lcom/join/mgps/dto/ArenaConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->config:Lcom/join/mgps/dto/ArenaConfig;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter_config()Lcom/join/mgps/dto/ArenaFilterConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->filter_config:Lcom/join/mgps/dto/ArenaFilterConfig;

    return-object v0
.end method

.method public getServer()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-object v0
.end method

.method public getUser()Lcom/join/mgps/dto/ArenaUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->user:Lcom/join/mgps/dto/ArenaUser;

    return-object v0
.end method

.method public setClose_show_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->close_show_url:Ljava/lang/String;

    return-void
.end method

.method public setConfig(Lcom/join/mgps/dto/ArenaConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->config:Lcom/join/mgps/dto/ArenaConfig;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->error:Ljava/lang/String;

    return-void
.end method

.method public setFilter_config(Lcom/join/mgps/dto/ArenaFilterConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->filter_config:Lcom/join/mgps/dto/ArenaFilterConfig;

    return-void
.end method

.method public setServer(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    return-void
.end method

.method public setUser(Lcom/join/mgps/dto/ArenaUser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->user:Lcom/join/mgps/dto/ArenaUser;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArenaWelcomeLobby{error=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filter_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->filter_config:Lcom/join/mgps/dto/ArenaFilterConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/join/mgps/dto/ArenaRoleNotice;
.super Ljava/lang/Object;
.source "ArenaRoleNotice.java"


# instance fields
.field private client:Lcom/join/mgps/dto/ArenaNotice;

.field private master:Lcom/join/mgps/dto/ArenaNotice;

.field private spectator:Lcom/join/mgps/dto/ArenaNotice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient()Lcom/join/mgps/dto/ArenaNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->client:Lcom/join/mgps/dto/ArenaNotice;

    return-object v0
.end method

.method public getMaster()Lcom/join/mgps/dto/ArenaNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->master:Lcom/join/mgps/dto/ArenaNotice;

    return-object v0
.end method

.method public getSpectator()Lcom/join/mgps/dto/ArenaNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->spectator:Lcom/join/mgps/dto/ArenaNotice;

    return-object v0
.end method

.method public setClient(Lcom/join/mgps/dto/ArenaNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->client:Lcom/join/mgps/dto/ArenaNotice;

    return-void
.end method

.method public setMaster(Lcom/join/mgps/dto/ArenaNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->master:Lcom/join/mgps/dto/ArenaNotice;

    return-void
.end method

.method public setSpectator(Lcom/join/mgps/dto/ArenaNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->spectator:Lcom/join/mgps/dto/ArenaNotice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArenaRoleNotice{client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->client:Lcom/join/mgps/dto/ArenaNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", master="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->master:Lcom/join/mgps/dto/ArenaNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spectator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaRoleNotice;->spectator:Lcom/join/mgps/dto/ArenaNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

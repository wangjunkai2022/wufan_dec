.class public Lcom/join/mgps/dto/ArenaConfig;
.super Ljava/lang/Object;
.source "ArenaConfig.java"


# instance fields
.field private ping_count:I

.field private role_notice:Lcom/join/mgps/dto/ArenaRoleNotice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPing_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaConfig;->ping_count:I

    return v0
.end method

.method public getRole_notice()Lcom/join/mgps/dto/ArenaRoleNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaConfig;->role_notice:Lcom/join/mgps/dto/ArenaRoleNotice;

    return-object v0
.end method

.method public setPing_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaConfig;->ping_count:I

    return-void
.end method

.method public setRole_notice(Lcom/join/mgps/dto/ArenaRoleNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaConfig;->role_notice:Lcom/join/mgps/dto/ArenaRoleNotice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArenaConfig{ping_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaConfig;->ping_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", role_notice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaConfig;->role_notice:Lcom/join/mgps/dto/ArenaRoleNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/join/mgps/dto/GameTagBean;
.super Ljava/lang/Object;
.source "GameTagBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private forum_id:I

.field private forum_name:Ljava/lang/String;

.field private game_tag_type:I

.field private tag_id:I

.field private tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForum_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameTagBean;->forum_id:I

    return v0
.end method

.method public getForum_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTagBean;->forum_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_tag_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameTagBean;->game_tag_type:I

    return v0
.end method

.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameTagBean;->tag_id:I

    return v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTagBean;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public setForum_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameTagBean;->forum_id:I

    return-void
.end method

.method public setForum_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTagBean;->forum_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_tag_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameTagBean;->game_tag_type:I

    return-void
.end method

.method public setTag_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameTagBean;->tag_id:I

    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTagBean;->tag_name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameTagBean{tag_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/GameTagBean;->tag_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/GameTagBean;->tag_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", forum_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameTagBean;->forum_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", forum_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/GameTagBean;->forum_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/join/mgps/dto/GameTagsBean;
.super Ljava/lang/Object;
.source "GameTagsBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private checked:Z

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private showDelete:Z

.field private tagType:Ljava/lang/Integer;

.field private voteFlag:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/GameTagsBean;->checked:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/dto/GameTagsBean;->showDelete:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/GameTagsBean;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/dto/GameTagsBean;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/join/mgps/dto/GameTagsBean;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/join/mgps/dto/GameTagsBean;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/join/mgps/dto/GameTagsBean;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/join/mgps/dto/GameTagsBean;->tagType:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/join/mgps/dto/GameTagsBean;->tagType:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTagsBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTagsBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTagsBean;->tagType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVoteFlag()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTagsBean;->voteFlag:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/join/mgps/dto/GameTagsBean;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/join/mgps/dto/GameTagsBean;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/join/mgps/dto/GameTagsBean;->tagType:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameTagsBean;->checked:Z

    return v0
.end method

.method public isShowDelete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameTagsBean;->showDelete:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameTagsBean;->checked:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTagsBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTagsBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setShowDelete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameTagsBean;->showDelete:Z

    return-void
.end method

.method public setTagType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTagsBean;->tagType:Ljava/lang/Integer;

    return-void
.end method

.method public setVoteFlag(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTagsBean;->voteFlag:Ljava/lang/Integer;

    return-void
.end method

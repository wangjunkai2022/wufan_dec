.class public Lcom/join/mgps/dto/BannerBean;
.super Ljava/lang/Object;
.source "BannerBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_switch:I

.field private crc_link_type_val:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private jump_type:I

.field private label:Ljava/lang/String;

.field private link_type:I

.field private link_type_val:Ljava/lang/String;

.field private pic_remote:Ljava/lang/String;

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/BannerBean;->pic_remote:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/BannerBean;->link_type:I

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/BannerBean;->jump_type:I

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/BannerBean;->link_type_val:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/BannerBean;->tpl_type:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/BannerBean;->crc_link_type_val:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/BannerBean;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    .line 3
    iget v1, p0, Lcom/join/mgps/dto/BannerBean;->link_type:I

    iget v2, p1, Lcom/join/mgps/dto/BannerBean;->link_type:I

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget v1, p0, Lcom/join/mgps/dto/BannerBean;->jump_type:I

    iget v2, p1, Lcom/join/mgps/dto/BannerBean;->jump_type:I

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 6
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->pic_remote:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/join/mgps/dto/BannerBean;->pic_remote:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 7
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->link_type_val:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/join/mgps/dto/BannerBean;->link_type_val:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 8
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->tpl_type:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/join/mgps/dto/BannerBean;->tpl_type:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 9
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->crc_link_type_val:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/join/mgps/dto/BannerBean;->crc_link_type_val:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 10
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->game_info_tpl_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/join/mgps/dto/BannerBean;->game_info_tpl_type:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v0
.end method

.method public getAd_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BannerBean;->ad_switch:I

    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/BannerBean;->jump_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 3
    iget v1, p0, Lcom/join/mgps/dto/BannerBean;->link_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Lcom/join/mgps/dto/BannerBean;->link_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->sub_title:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BannerBean;->jump_type:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BannerBean;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->pic_remote:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/join/mgps/dto/BannerBean;->link_type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lcom/join/mgps/dto/BannerBean;->jump_type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->link_type_val:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->tpl_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dto/BannerBean;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAd_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BannerBean;->ad_switch:I

    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BannerBean;->jump_type:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->label:Ljava/lang/String;

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BannerBean;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerBean;->tpl_type:Ljava/lang/String;

    return-void
.end method

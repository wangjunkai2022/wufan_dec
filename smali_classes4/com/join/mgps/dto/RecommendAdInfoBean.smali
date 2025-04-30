.class public Lcom/join/mgps/dto/RecommendAdInfoBean;
.super Ljava/lang/Object;
.source "RecommendAdInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private game_info:Lcom/join/mgps/dto/RecommendGameBean;

.field private is_more:I

.field private jump_type:I

.field private link_type:I

.field private link_type_val:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/RecommendGameBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->game_info:Lcom/join/mgps/dto/RecommendGameBean;

    return-object v0
.end method

.method public getIs_more()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->is_more:I

    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/RecommendGameBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->game_info:Lcom/join/mgps/dto/RecommendGameBean;

    return-void
.end method

.method public setIs_more(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->is_more:I

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendAdInfoBean;->tpl_type:Ljava/lang/String;

    return-void
.end method

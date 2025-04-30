.class public Lcom/join/mgps/dto/InformationCommonSubBean;
.super Ljava/lang/Object;
.source "InformationCommonSubBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private game_info:Lcom/join/mgps/dto/GameInfoBean;

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

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/GameInfoBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->link_type:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->link_type_val:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->crc_link_type_val:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->jump_type:I

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->tpl_type:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->game_info:Lcom/join/mgps/dto/GameInfoBean;

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/GameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->game_info:Lcom/join/mgps/dto/GameInfoBean;

    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/GameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->game_info:Lcom/join/mgps/dto/GameInfoBean;

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommonSubBean;->tpl_type:Ljava/lang/String;

    return-void
.end method

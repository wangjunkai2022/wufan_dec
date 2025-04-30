.class public Lcom/join/mgps/dto/CompanySubBean;
.super Ljava/lang/Object;
.source "CompanySubBean.java"


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private game_count:Ljava/lang/String;

.field private game_info:Lcom/join/mgps/dto/AppBean;

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

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type_val:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/CompanySubBean;->crc_link_type_val:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/CompanySubBean;->jump_type:I

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/CompanySubBean;->game_count:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/CompanySubBean;->tpl_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CompanySubBean;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CompanySubBean;->game_count:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/AppBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CompanySubBean;->game_info:Lcom/join/mgps/dto/AppBean;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/CompanySubBean;->jump_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 3
    iget v1, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/join/mgps/dto/CompanySubBean;->game_info:Lcom/join/mgps/dto/AppBean;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/CompanySubBean;->tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/dto/CompanySubBean;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CompanySubBean;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CompanySubBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CompanySubBean;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setGame_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CompanySubBean;->game_count:Ljava/lang/String;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CompanySubBean;->game_info:Lcom/join/mgps/dto/AppBean;

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CompanySubBean;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CompanySubBean;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CompanySubBean;->tpl_type:Ljava/lang/String;

    return-void
.end method

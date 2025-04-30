.class public Lcom/join/mgps/dto/AppBeanMain;
.super Ljava/lang/Object;
.source "AppBeanMain.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private butnShowTypr:I

.field private crc_link_type_val:Ljava/lang/String;

.field private ext1:Ljava/lang/String;

.field private ext2:Ljava/lang/String;

.field private ext3:Ljava/lang/String;

.field private ext4:Ljava/lang/String;

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

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/join/mgps/dto/AppBean;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    .line 9
    iput p7, p0, Lcom/join/mgps/dto/AppBeanMain;->butnShowTypr:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    .line 12
    iput-object p2, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    .line 15
    iput-object p5, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    .line 16
    iput p6, p0, Lcom/join/mgps/dto/AppBeanMain;->butnShowTypr:I

    return-void
.end method


# virtual methods
.method public getButnShowTypr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBeanMain;->butnShowTypr:I

    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getExt3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->ext3:Ljava/lang/String;

    return-object v0
.end method

.method public getExt4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->ext4:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/AppBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 3
    iget v1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v3

    invoke-static {v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 9
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt1(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt2(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt3(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt4(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext1:Ljava/lang/String;

    return-void
.end method

.method public setExt2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext2:Ljava/lang/String;

    return-void
.end method

.method public setExt3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext3:Ljava/lang/String;

    return-void
.end method

.method public setExt4(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext4:Ljava/lang/String;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    return-void
.end method

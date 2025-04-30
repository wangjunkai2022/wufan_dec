.class public Lcom/join/mgps/dto/GameHeadAd$SubInfo;
.super Ljava/lang/Object;
.source "GameHeadAd.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameHeadAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubInfo"
.end annotation


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private game_info:Lcom/join/mgps/dto/AppBean;

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
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/AppBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->game_info:Lcom/join/mgps/dto/AppBean;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->jump_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 3
    iget v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    return-object v0
.end method

.method public getIs_more()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->is_more:I

    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->game_info:Lcom/join/mgps/dto/AppBean;

    return-void
.end method

.method public setIs_more(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->is_more:I

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->tpl_type:Ljava/lang/String;

    return-void
.end method

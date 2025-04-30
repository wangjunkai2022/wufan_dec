.class public Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;
.super Ljava/lang/Object;
.source "SimulatorFastEntryBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SimulatorFastEntryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeGame"
.end annotation


# instance fields
.field private ad_switch:I

.field private big_pic:Ljava/lang/String;

.field private jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

.field private quit_switch:I

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private v_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->ad_switch:I

    return v0
.end method

.method public getBig_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->big_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getJump_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getTpl_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    :cond_1
    return-object v0
.end method

.method public getJp_info()Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    return-object v0
.end method

.method public getQuit_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->quit_switch:I

    return v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getV_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->v_url:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->ad_switch:I

    return-void
.end method

.method public setBig_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->big_pic:Ljava/lang/String;

    return-void
.end method

.method public setJp_info(Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    return-void
.end method

.method public setQuit_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->quit_switch:I

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->title:Ljava/lang/String;

    return-void
.end method

.method public setV_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->v_url:Ljava/lang/String;

    return-void
.end method

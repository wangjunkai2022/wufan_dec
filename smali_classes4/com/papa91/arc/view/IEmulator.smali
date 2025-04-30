.class public interface abstract Lcom/papa91/arc/view/IEmulator;
.super Ljava/lang/Object;
.source "IEmulator.java"


# virtual methods
.method public abstract addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
.end method

.method public abstract cheatInfoEnable(II)V
.end method

.method public abstract checkCheatCodeInfo(Ljava/lang/String;Z)Z
.end method

.method public abstract deleteEditCheatInfo(I)V
.end method

.method public abstract enableEidtCheat(II)V
.end method

.method public abstract getAutoSlotStatus()Z
.end method

.method public abstract getAutoStateMax()I
.end method

.method public abstract getAutoStateTimeCount()I
.end method

.method public abstract getAutoStateTimeGap()I
.end method

.method public abstract getCheatListData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentChar()I
.end method

.method public abstract getCustomCheatTip(Z)Ljava/lang/String;
.end method

.method public abstract getEditCheatListData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGameId()Ljava/lang/String;
.end method

.method public abstract getGateData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/GateBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMenuTypes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/TypeBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModSubfix()Ljava/lang/String;
.end method

.method public abstract getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;
.end method

.method public abstract getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;
.end method

.method public abstract getSpBindImages(I)[I
.end method

.method public abstract getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getVip()I
.end method

.method public abstract getVipData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract goSlotShop()V
.end method

.method public abstract goVipShop(IZ)V
.end method

.method public abstract isSPVisible()Z
.end method

.method public abstract loadAdVideo()V
.end method

.method public abstract loadGateStage(I)V
.end method

.method public abstract loadSlotState(Ljava/lang/String;)V
.end method

.method public abstract modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
.end method

.method public abstract pauseGame()V
.end method

.method public abstract resumeGame()V
.end method

.method public abstract romPath()Ljava/lang/String;
.end method

.method public abstract saveBindsFileData()V
.end method

.method public abstract saveSlotState(Ljava/lang/String;)V
.end method

.method public abstract screenMode(I)V
.end method

.method public abstract setAutoSlotStatus(I)V
.end method

.method public abstract setSPBindData(III)V
.end method

.method public abstract setSPMenuVisible(Z)V
.end method

.method public abstract showAdVideo()V
.end method

.method public abstract showGGCodeButton()Z
.end method

.method public varargs abstract showVip([Ljava/lang/String;)V
.end method

.method public abstract ugcPath()Ljava/lang/String;
.end method

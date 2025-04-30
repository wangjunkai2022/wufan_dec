.class public abstract Lcom/papa91/arc/dialog/SettingDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/papa91/arc/view/IEmulator;


# instance fields
.field protected appContent:Ljava/lang/String;

.field protected emulatorListener:Lcom/papa91/arc/view/IEmulator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;)V

    const-string p1, "http://anv3cjapi.5fun.com"

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingDialog;->appContent:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimAmount(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "http://anv3cjapi.5fun.com"

    .line 6
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingDialog;->appContent:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimAmount(F)V

    return-void
.end method


# virtual methods
.method public addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    :cond_0
    return-void
.end method

.method public cheatInfoEnable(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/papa91/arc/view/IEmulator;->cheatInfoEnable(II)V

    :cond_0
    return-void
.end method

.method public checkCheatCodeInfo(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/papa91/arc/view/IEmulator;->checkCheatCodeInfo(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public deleteEditCheatInfo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->deleteEditCheatInfo(I)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->resumeGame()V

    return-void
.end method

.method public dismissOnly()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    return-void
.end method

.method public enableEidtCheat(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/papa91/arc/view/IEmulator;->enableEidtCheat(II)V

    :cond_0
    return-void
.end method

.method public getAutoSlotStatus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getAutoSlotStatus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoStateMax()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getAutoStateMax()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public getAutoStateTimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getAutoStateTimeCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoStateTimeGap()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getAutoStateTimeGap()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x14

    return v0
.end method

.method public getCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getCheatListData()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentChar()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getCurrentChar()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomCheatTip(Z)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->getCustomCheatTip(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getEditCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getEditCheatListData()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGateData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/GateBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getGateData()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLayoutId()I
.end method

.method public getMenuTypes(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/TypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->getMenuTypes(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getModSubfix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getModSubfix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpBindImages(I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->getSpBindImages(I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getVip()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVipData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getVipData()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public goSlotShop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->goSlotShop()V

    :cond_0
    return-void
.end method

.method public goVipShop(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/papa91/arc/view/IEmulator;->goVipShop(IZ)V

    :cond_0
    return-void
.end method

.method public isSPVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->isSPVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAdVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->loadAdVideo()V

    :cond_0
    return-void
.end method

.method public loadGateStage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->loadGateStage(I)V

    :cond_0
    return-void
.end method

.method public loadSlotState(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->loadSlotState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/papa91/arc/view/IEmulator;->modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    :cond_0
    return-void
.end method

.method public needScreenAdapter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onVipChanged()V
    .locals 0

    return-void
.end method

.method public pauseGame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->pauseGame()V

    :cond_0
    return-void
.end method

.method public resumeGame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->resumeGame()V

    :cond_0
    return-void
.end method

.method public romPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->romPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public saveBindsFileData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->saveBindsFileData()V

    :cond_0
    return-void
.end method

.method public saveSlotState(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->saveSlotState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public screenMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->screenMode(I)V

    :cond_0
    return-void
.end method

.method public setAutoSlotStatus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->setAutoSlotStatus(I)V

    :cond_0
    return-void
.end method

.method public setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    return-void
.end method

.method public varargs setOnListener([Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSPBindData(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/papa91/arc/view/IEmulator;->setSPBindData(III)V

    :cond_0
    return-void
.end method

.method public setSPMenuVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->setSPMenuVisible(Z)V

    :cond_0
    return-void
.end method

.method public setappContentUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingDialog;->appContent:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->pauseGame()V

    .line 2
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    return-void
.end method

.method public showAdVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->showAdVideo()V

    :cond_0
    return-void
.end method

.method public showGGCodeButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->showGGCodeButton()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public varargs showVip([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/IEmulator;->showVip([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ugcPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->ugcPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

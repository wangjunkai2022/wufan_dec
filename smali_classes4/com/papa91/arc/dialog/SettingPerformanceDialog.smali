.class public Lcom/papa91/arc/dialog/SettingPerformanceDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingPerformanceDialog.java"


# instance fields
.field advanced:Landroid/view/View;

.field close:Landroid/view/View;

.field performance:I

.field performanceLevel:I

.field tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

.field tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

.field tmpPerformance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performanceLevel:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performance:I

    .line 4
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->initPerformanceViews()V

    .line 6
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->initData()V

    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initPerformanceViews()V
    .locals 3

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->close:Landroid/view/View;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->advanced:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tlPerformance:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/view/SegmentTabLayout;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tlCustom:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/view/SegmentTabLayout;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "\u5173"

    const-string v2, "\u5f00"

    .line 6
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {v2, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    new-instance v2, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;

    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingPerformanceDialog;)V

    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    new-instance v2, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;

    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingPerformanceDialog;)V

    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->close:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->setPerformanceTotalLevel(I)V

    .line 13
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->isCustomPerformance()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performance:I

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 19
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_performance:I

    return v0
.end method

.method isCustomPerformance()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingLevel()I

    move-result v0

    iput v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performance:I

    .line 2
    iput v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 3
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    move-result v0

    return v0
.end method

.method public needScreenAdapter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->advanced:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enterGameSettings(I)V

    const/4 p1, 0x2

    .line 7
    sput p1, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method selectPerformance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 2
    invoke-static {p1}, Lcom/papa91/arc/util/GameSettings;->setGameSettingLevel(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/papa91/arc/util/GameSettings;->setCustomSettingEnable(Z)V

    return-void
.end method

.method setPerformanceTotalLevel(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performanceLevel:I

    const-string v0, "\u4f4e\u753b\u8d28"

    const-string v1, "\u6d41\u7545\u753b\u8d28"

    const-string v2, "\u9ad8\u753b\u8d28"

    const-string v3, "\u8d85\u9ad8\u753b\u8d28"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6700\u4f73\u753b\u8d28"

    .line 3
    filled-new-array {v0, v1, v2, v3, v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {p1, v4}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public varargs show([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->setPerformanceTotalLevel(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 5
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 6
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 11
    :cond_0
    iget p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performance:I

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->selectPerformance(I)V

    .line 12
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    return-void
.end method

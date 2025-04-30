.class public Lcom/papa91/arc/dialog/SettingOneKeyDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingOneKeyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;,
        Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;
    }
.end annotation


# static fields
.field static skillConfigBean:Lcom/papa91/arc/bean/SkillConfigBean;


# instance fields
.field defIdx:I

.field gameDir:Ljava/lang/String;

.field gv_list:Lcom/papa91/arc/widget/view/HeaderGridView;

.field lv_hero:Landroid/widget/ListView;

.field private mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

.field mHandler:Landroid/os/Handler;

.field private mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

.field menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

.field oneKeyView:Landroid/view/View;

.field skillGifUrl:Ljava/lang/String;

.field skillIdx:I

.field skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

.field skillType:I

.field skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

.field spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

.field switchBtn:Landroid/widget/TextView;

.field tv_back_game:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    .line 4
    iput v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillType:I

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHandler:Landroid/os/Handler;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->gv_list:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/widget/view/HeaderGridView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gv_list:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_hero:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->lv_hero:Landroid/widget/ListView;

    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->tv_back_game:Landroid/widget/TextView;

    .line 9
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u4e00\u952e\u6280\u80fd"

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 11
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->tv_back_game:Landroid/widget/TextView;

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 12
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->initOneKeyView()V

    .line 13
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gv_list:Lcom/papa91/arc/widget/view/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/papa91/arc/widget/view/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    .line 6
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->lv_hero:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    new-instance v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    new-instance v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    return-void
.end method

.method private initOneKeyView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_onekey:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->oneKeyView:Landroid/view/View;

    .line 2
    sget v1, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 3
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gv_list:Lcom/papa91/arc/widget/view/HeaderGridView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->oneKeyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/view/HeaderGridView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_onekey:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->tv_back_game:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result p1

    if-lez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setSPMenuVisible(Z)V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const-string p1, "0"

    .line 11
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenKeyskill(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onVipChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->onVipChanged()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setSPMenuVisible(Z)V

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenKeyskill(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gameDir:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillConfigBean:Lcom/papa91/arc/bean/SkillConfigBean;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;

    move-result-object v0

    sput-object v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillConfigBean:Lcom/papa91/arc/bean/SkillConfigBean;

    .line 5
    :cond_0
    sget-object v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillConfigBean:Lcom/papa91/arc/bean/SkillConfigBean;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillConfigBean;->getGifHostUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillGifUrl:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getCurrentChar()I

    move-result v0

    iput v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 12
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    if-lez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean;->getType()I

    move-result v0

    iput v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillType:I

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 18
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->lv_hero:Landroid/widget/ListView;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 20
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->loadAdVideo()V

    return-void
.end method

.method public showMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    invoke-direct {v1, v0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 4
    invoke-virtual {v1, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillType:I

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSkillType(I)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSpBindsData(Lcom/papa91/arc/bean/SpBindsDataBean;)V

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSkillTableData(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;)V

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setHeroIndex(I)V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSkillIdx(I)V

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    new-instance v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSpBindListener(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->show()V

    return-void
.end method

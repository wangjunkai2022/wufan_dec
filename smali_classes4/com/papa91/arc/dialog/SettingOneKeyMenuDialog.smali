.class public Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingOneKeyMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;,
        Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;
    }
.end annotation


# instance fields
.field heroIndex:I

.field images_h:[I

.field images_n:[I

.field iv_close:Landroid/widget/ImageView;

.field private ll_root:Landroid/view/View;

.field lv_list:Landroid/widget/ListView;

.field private mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

.field private menus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/bean/OneKeyMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private skillIdx:I

.field private skillType:I

.field skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

.field private spBindListener:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

.field spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->heroIndex:I

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_list:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->lv_list:Landroid/widget/ListView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->iv_close:Landroid/widget/ImageView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_root:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->ll_root:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    .line 7
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->iv_close:Landroid/widget/ImageView;

    aput-object v2, v1, p1

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 8
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindListener:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private initMenus()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_h:[I

    .line 4
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_n:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_n:[I

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_h:[I

    :goto_0
    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_n:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 8
    new-instance v3, Lcom/papa91/arc/bean/OneKeyMenuBean;

    invoke-direct {v3}, Lcom/papa91/arc/bean/OneKeyMenuBean;-><init>()V

    .line 9
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_h:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setIconRes(I)V

    .line 10
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_n:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setIconResNormal(I)V

    .line 11
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    const-string v5, "\u9009\u62e9"

    const-string v6, "\u7a7a"

    if-eqz v4, :cond_7

    .line 12
    invoke-virtual {v4}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 13
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 15
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 16
    :cond_1
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    invoke-virtual {v4}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;

    invoke-virtual {v4}, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->getBinds()Ljava/util/List;

    move-result-object v4

    iget v7, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->heroIndex:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 17
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setSkillBean(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;)V

    goto :goto_3

    .line 20
    :cond_2
    iget-object v8, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    invoke-virtual {v8}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_3

    .line 21
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 23
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 24
    :cond_3
    iget-object v8, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    invoke-virtual {v8}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    if-ne v4, v7, :cond_4

    .line 25
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_6

    .line 27
    iget v5, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillIdx:I

    if-ne v5, v4, :cond_5

    .line 28
    invoke-virtual {v8}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, v1}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setCurrent(Z)V

    const-string v4, "\u5f53\u524d"

    .line 30
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :cond_5
    invoke-virtual {v8}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3, v2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setCurrent(Z)V

    const-string v4, "\u66ff\u6362"

    .line 33
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_6
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 36
    :goto_2
    invoke-virtual {v3, v8}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setSkillBean(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;)V

    goto :goto_3

    .line 37
    :cond_7
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 39
    :goto_3
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_onekey_menu:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->iv_close:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->ll_root:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    :cond_1
    return-void
.end method

.method public setHeroIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->heroIndex:I

    return-void
.end method

.method public setSkillIdx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillIdx:I

    return-void
.end method

.method public setSkillTableData(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    return-void
.end method

.method public setSkillType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillType:I

    return-void
.end method

.method public setSpBindListener(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindListener:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

    return-void
.end method

.method public setSpBindsData(Lcom/papa91/arc/bean/SpBindsDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->initMenus()V

    return-void
.end method

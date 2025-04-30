.class public Lcom/papa91/arc/dialog/SettingVipTipDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingVipTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;,
        Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;,
        Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;,
        Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;
    }
.end annotation


# instance fields
.field private cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

.field private gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

.field gv_list:Landroid/widget/GridView;

.field iv_close:Landroid/widget/ImageView;

.field lv_list:Landroid/widget/ListView;

.field private mCharid:I

.field private mType:I

.field noTipListener:Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;

.field private oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

.field private skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

.field tv_nomore_tip:Landroid/widget/TextView;

.field tv_open_vip:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initView()V

    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initData()V

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->numberToChinese(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initCheatView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getCheatListData()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    invoke-virtual {v1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gv_list:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private initGateView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGateData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    new-instance v1, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    return-void
.end method

.method private initOneKeyView(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->iv_close:Landroid/widget/ImageView;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_nomore_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_nomore_tip:Landroid/widget/TextView;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_list:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->gv_list:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gv_list:Landroid/widget/GridView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_title:Landroid/widget/TextView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_open_vip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_open_vip:Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    .line 7
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->iv_close:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_nomore_tip:Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    return-void
.end method

.method private static numberToChinese(I)Ljava/lang/String;
    .locals 11

    const-string v0, "\u96f6"

    const-string v1, "\u4e00"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    .line 1
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u5341"

    const-string v3, "\u767e"

    const-string v4, "\u5343"

    const-string v5, "\u4e07"

    const-string v6, "\u5341"

    const-string v7, "\u767e"

    const-string v8, "\u5343"

    const-string v9, "\u4ebf"

    const-string v10, "\u5341"

    .line 2
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    if-gez p0, :cond_0

    const-string v2, "\u8d1f"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-gez p0, :cond_1

    neg-int p0, p0

    .line 3
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    sub-int v6, v2, v5

    .line 7
    aget-char v7, p0, v5

    add-int/lit8 v7, v7, -0x30

    if-eqz v7, :cond_2

    .line 8
    aget-object v7, v0, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    rem-int/lit8 v7, v6, 0x4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    .line 12
    aget-object v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 13
    :cond_3
    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gv_list:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_vip_tip:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->iv_close:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 4
    iget p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statExitVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_0
    if-ne p1, v3, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statExitVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1
    if-ne p1, v2, :cond_a

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statExitVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_nomore_tip:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->noTipListener:Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;

    if-eqz p1, :cond_3

    .line 10
    iget v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    iget v4, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mCharid:I

    invoke-interface {p1, v0, v4}, Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;->onNoTipClick(II)V

    .line 11
    :cond_3
    iget p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statNotpromptVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statNotpromptVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statNotpromptVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    goto :goto_1

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_open_vip:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    .line 17
    iget p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    if-nez p1, :cond_8

    .line 18
    invoke-virtual {p0, v3, v3}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_8
    if-ne p1, v3, :cond_9

    .line 20
    invoke-virtual {p0, v1, v3}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_9
    if-ne p1, v2, :cond_a

    const/4 p1, 0x3

    .line 22
    invoke-virtual {p0, p1, v3}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public setNoTipListener(Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->noTipListener:Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;

    return-void
.end method

.method public show(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    .line 2
    iput p2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mCharid:I

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_title:Landroid/widget/TextView;

    const-string p2, "\u8bd5\u8bd5\u4e0b\u5217\u91d1\u624b\u6307"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->showView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initCheatView()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_title:Landroid/widget/TextView;

    const-string v0, "\u4e00\u952e\u51fa\u5fc5\u6740\u6280"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->showView(Landroid/view/View;)V

    .line 8
    invoke-direct {p0, p2}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initOneKeyView(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_title:Landroid/widget/TextView;

    const-string p2, "\u8df3\u5230\u4efb\u610f\u5173\u5361"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gv_list:Landroid/widget/GridView;

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->showView(Landroid/view/View;)V

    .line 11
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initGateView()V

    .line 12
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    return-void
.end method

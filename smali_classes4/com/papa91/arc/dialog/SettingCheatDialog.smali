.class public Lcom/papa91/arc/dialog/SettingCheatDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingCheatDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;,
        Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;,
        Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;
    }
.end annotation


# instance fields
.field addCheat:Landroid/view/View;

.field addCheatView:Landroid/view/View;

.field cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

.field cheatAddDialog:Landroid/app/Dialog;

.field cheatCode:Landroid/widget/EditText;

.field cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

.field cheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field cheatName:Landroid/widget/EditText;

.field cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

.field constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private elv_cheat:Landroid/widget/ExpandableListView;

.field private etv_view:Lcom/papa91/arc/widget/view/EmptyTipView;

.field footerView:Landroid/view/View;

.field private isGG:Z

.field iv_close:Landroid/widget/ImageView;

.field private lv_cheat_custom:Landroid/widget/ListView;

.field private lv_type:Landroid/widget/ListView;

.field oldSelIndex:I

.field openVip:Landroid/view/View;

.field openVipCustom:Landroid/view/View;

.field paste:Landroid/view/View;

.field rbt_type_cheat:Landroid/widget/RadioButton;

.field rbt_type_gg:Landroid/widget/RadioButton;

.field rg_type:Landroid/widget/RadioGroup;

.field save:Landroid/view/View;

.field textView10:Landroid/widget/TextView;

.field private tv_back_game:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field viewFooter:Landroid/view/View;

.field vipView:Landroid/view/View;

.field vipViewCustom:Landroid/view/View;


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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 4
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_back_game:Landroid/widget/TextView;

    .line 6
    sget v1, Lorg/ppsspp/ppsspp/R$id;->lv_type:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_type:Landroid/widget/ListView;

    .line 7
    sget v1, Lorg/ppsspp/ppsspp/R$id;->lv_cheat_custom:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 8
    sget v1, Lorg/ppsspp/ppsspp/R$id;->elv_cheat:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 9
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_title:Landroid/widget/TextView;

    .line 10
    sget v1, Lorg/ppsspp/ppsspp/R$id;->etv_view:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/widget/view/EmptyTipView;

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->etv_view:Lcom/papa91/arc/widget/view/EmptyTipView;

    .line 11
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_title:Landroid/widget/TextView;

    const-string v2, "\u91d1\u624b\u6307"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->footerView:Landroid/view/View;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    .line 13
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_back_game:Landroid/widget/TextView;

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 14
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->initCheatingViews()V

    .line 15
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    return p0
.end method

.method static synthetic access$002(Lcom/papa91/arc/dialog/SettingCheatDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    return p1
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initCheatingViews()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->constraintLayout:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_cheat_add:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    .line 3
    sget v1, Lorg/ppsspp/ppsspp/R$id;->addCheat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheat:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_cheat_vip:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    .line 5
    sget v3, Lorg/ppsspp/ppsspp/R$id;->tv_open_vip:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVip:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVipCustom:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_footer_nomore:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->viewFooter:Landroid/view/View;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 9
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheat:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVip:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVipCustom:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 10
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 11
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    new-instance v1, Lcom/papa91/arc/dialog/SettingCheatDialog$1;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_type:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private showListView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    if-eq p1, v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public cheatReset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_cheat:I

    return v0
.end method

.method public getTextFromClip(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_back_game:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheat:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showAddCheatDialog()V

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->paste:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    if-eqz p1, :cond_9

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->getTextFromClip(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->save:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 13
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    const-string v0, "\u8bf7\u586b\u5199\u4f5c\u5f0a\u7801\u540d\u79f0\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    const-string v0, "\u8bf7\u586b\u5199\u4f5c\u5f0a\u7801\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->checkCheatCodeInfo(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u4e0d\u5339\u914d\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_5
    :try_start_0
    new-instance p1, Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v0, v2, v3}, Lorg/ppsspp/ppsspp/EditCheatInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 21
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->addData(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 23
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u52a0\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 25
    throw p1

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->iv_close:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 27
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVip:Landroid/view/View;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVipCustom:Landroid/view/View;

    if-ne p1, v0, :cond_9

    :cond_8
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onVipChanged()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->setTab(I)V

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

.method public setTab(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getCheatListData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getEditCheatListData()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {v1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->footerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 13
    sget v2, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 14
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->removeHeaderView(Landroid/view/View;)Z

    .line 15
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->footerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 17
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 18
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 19
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 20
    sget v2, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    if-nez p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->viewFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->removeFooterView(Landroid/view/View;)Z

    .line 22
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroupCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showListView(Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->viewFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;)V

    goto :goto_3

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->etv_view:Lcom/papa91/arc/widget/view/EmptyTipView;

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showListView(Landroid/view/View;)V

    .line 26
    :goto_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_4

    :cond_8
    if-ne p1, v1, :cond_9

    .line 27
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iput v1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->viewType:I

    .line 28
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 29
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showListView(Landroid/view/View;)V

    .line 31
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_9
    :goto_4
    return-void
.end method

.method public show()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->getMenuTypes(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    if-ne v2, v3, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/papa91/arc/bean/TypeBean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/papa91/arc/bean/TypeBean;

    invoke-virtual {v3, v0}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 8
    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->setTab(I)V

    .line 9
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->loadAdVideo()V

    return-void
.end method

.method public showAddCheatDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/papa91/arc/view/BaseDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 3
    sget v2, Lorg/ppsspp/ppsspp/R$layout;->dialog_add_cheat:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->editText:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->editText2:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->paste:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->paste:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->save:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->save:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->iv_close:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->rg_type:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rg_type:Landroid/widget/RadioGroup;

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->rbt_type_cheat:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_cheat:Landroid/widget/RadioButton;

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->rbt_type_gg:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    sget v2, Lorg/ppsspp/ppsspp/R$id;->textView10:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->textView10:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showGGCodeButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rg_type:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/papa91/arc/dialog/SettingCheatDialog$3;

    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$3;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rg_type:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rg_type:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_cheat:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 21
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->paste:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->save:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->iv_close:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->textView10:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->getCustomCheatTip(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public showModifyCheatDialog(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 3
    iget-boolean v1, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    iput-boolean v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showAddCheatDialog()V

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 8
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->save:Landroid/view/View;

    new-instance v2, Lcom/papa91/arc/dialog/SettingCheatDialog$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;Lorg/ppsspp/ppsspp/EditCheatInfo;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSwitchState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/papa91/arc/dialog/SettingDialog;->enableEidtCheat(II)V

    .line 4
    iget-boolean p1, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

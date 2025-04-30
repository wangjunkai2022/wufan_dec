.class public Lcom/papa91/arc/dialog/SettingSlotDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingSlotDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;,
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;,
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;
    }
.end annotation


# instance fields
.field MAX_SLOT_COUNT:I

.field SLOT_COUNT:I

.field private addView:Landroid/view/View;

.field private autoSlotStatus:Z

.field private autoView:Landroid/view/View;

.field private fullView:Landroid/view/View;

.field private hasShowDot:Z

.field private lv_auto_slot:Landroid/widget/ListView;

.field private lv_slot:Landroid/widget/ListView;

.field private lv_type:Landroid/widget/ListView;

.field mHandler:Landroid/os/Handler;

.field mid:I

.field mslot:Lcom/papa91/arc/bean/Slot;

.field oldSelIndex:I

.field prefs:Lcom/papa91/wrapper/UserPrefs;

.field slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

.field slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

.field slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

.field slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation
.end field

.field slotsQuick:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation
.end field

.field private time:I

.field tipOneDialog:Lcom/papa91/arc/dialog/TipOneDialog;

.field tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

.field private tv_auto_desc:Landroid/widget/TextView;

.field private tv_back_game:Landroid/widget/TextView;

.field tv_max_slot_tip:Landroid/widget/TextView;

.field private tv_status:Landroid/widget/TextView;

.field private tv_switchBtn:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field usedSlot:[Ljava/lang/Integer;

.field private vipFootView:Landroid/view/View;

.field private vipQuickFootView:Landroid/view/View;

.field private vipQuickView:Landroid/view/View;

.field private vipView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->MAX_SLOT_COUNT:I

    new-array p1, p1, [Ljava/lang/Integer;

    .line 5
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->time:I

    .line 7
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->hasShowDot:Z

    .line 8
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 9
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$1;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mHandler:Landroid/os/Handler;

    .line 10
    iput p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotsQuick:Ljava/util/List;

    .line 12
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_back_game:Landroid/widget/TextView;

    .line 13
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_type:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_type:Landroid/widget/ListView;

    .line 14
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_slot:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 15
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_auto_slot:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 16
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u5b58\u6863"

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipFootView:Landroid/view/View;

    .line 19
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickFootView:Landroid/view/View;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 20
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_back_game:Landroid/widget/TextView;

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 21
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->initSlotViews()V

    .line 22
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->initSlotQuickViews()V

    .line 23
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingSlotDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getUgcPathInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/papa91/arc/dialog/SettingSlotDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->hasShowDot:Z

    return p1
.end method

.method private findEmptySlot()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getUgcPathInternal()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->ugcPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "/emus/"

    const-string v3, "/"

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$4;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$4;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_type:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initSlotQuickViews()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_slot_vip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_slot_auto:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 3
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_time:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_switchBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_switchBtn:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_auto_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_auto_desc:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_switchBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    return-void
.end method

.method private initSlotViews()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_slot_vip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_slot_new:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_slot_limit:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 4
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_max_slot_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_max_slot_tip:Landroid/widget/TextView;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    return-void
.end method

.method private refreshQuickState()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getAutoStateTimeCount()I

    move-result v0

    iput v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->time:I

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_time:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_auto_desc:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6bcf20s\u4fdd\u5b58\u4e00\u6b21\u5b58\u6863\uff0c\u6700\u591a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getAutoStateMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->time:I

    if-gtz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->notifySlotChanged()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getAutoSlotStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_switchBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 9
    iget-boolean v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->updateAutoSlotStatus()V

    :cond_4
    return-void
.end method

.method private updateAutoSlotStatus()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    const-string v1, "\u540e\u81ea\u52a8\u5b58\u6863"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    const-string v1, "#FF000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_time:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    const-string v1, "\u672a\u5f00\u542f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    const-string v1, "#0D5B80"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_time:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method delSlot(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    return-void
.end method

.method public dismissOnly()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    return-void
.end method

.method evictCache(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/g;->h(Landroid/net/Uri;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/g;->f(Landroid/net/Uri;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    return-void
.end method

.method getAutoSlotFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$10;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$10;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_slot:I

    return v0
.end method

.method getQuickSlots()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->ugcPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getAutoSlotFilter()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 4
    array-length v2, v0

    if-lez v2, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Lcom/papa91/arc/dialog/SettingSlotDialog$9;

    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$9;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Lcom/papa91/arc/bean/Slot;

    invoke-direct {v4}, Lcom/papa91/arc/bean/Slot;-><init>()V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa91/arc/bean/Slot;->setPath(Ljava/lang/String;)V

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/papa91/arc/bean/Slot;->setTimestamp(J)V

    .line 14
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 16
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u81ea\u52a8\u5b58\u6863"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setName(Ljava/lang/String;)V

    .line 17
    new-instance v3, Ljava/util/Date;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 18
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setDate(Ljava/lang/String;)V

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/papa91/arc/bean/Slot;->setThumb(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public getRecordInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->resetUsedSlot()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getSlotFilter()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$5;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$5;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance v4, Lcom/papa91/arc/bean/Slot;

    invoke-direct {v4}, Lcom/papa91/arc/bean/Slot;-><init>()V

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setPath(Ljava/lang/String;)V

    .line 14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/papa91/arc/bean/Slot;->setTimestamp(J)V

    .line 15
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 16
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 17
    :goto_1
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v6

    iget v7, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->MAX_SLOT_COUNT:I

    if-le v6, v7, :cond_2

    goto/16 :goto_2

    .line 18
    :cond_2
    new-instance v6, Ljava/util/Date;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 19
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setDate(Ljava/lang/String;)V

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setThumb(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v6

    if-nez v6, :cond_4

    const-string v3, "\u5feb\u901f\u5b58\u6863"

    .line 25
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setName(Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v6

    sub-int/2addr v6, v5

    iget-object v7, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 28
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    .line 29
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5b58\u6863"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setName(Ljava/lang/String;)V

    .line 30
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method getSlotFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$6;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$6;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    return-object v0
.end method

.method notifySlotChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->findEmptySlot()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_2

    .line 18
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 19
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 20
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    if-lez v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_max_slot_tip:Landroid/widget/TextView;

    const-string v1, "\u5b58\u6863\u6570\u91cf\u5df2\u8fbe\u4e0a\u9650"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_max_slot_tip:Landroid/widget/TextView;

    const-string v1, "\u5b58\u6863\u6570\u91cf\u5df2\u8fbe\u4e0a\u9650,\u8bf7\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :goto_2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    if-lez v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :goto_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    if-nez v0, :cond_5

    .line 32
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 33
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 35
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 36
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    if-nez v0, :cond_6

    .line 37
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 38
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotsQuick:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_switchBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    if-eqz p1, :cond_7

    .line 9
    iget-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->updateAutoSlotStatus()V

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    invoke-interface {p1, v0}, Lcom/papa91/arc/view/IEmulator;->setAutoSlotStatus(I)V

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p1, 0x2

    .line 13
    invoke-virtual {p0, p1, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 15
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 16
    :cond_5
    iget v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    if-ge p1, v0, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->saveSlot()V

    goto :goto_2

    :cond_6
    const/16 p1, 0xa

    if-ne v0, p1, :cond_7

    const-string p1, "2"

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onVipChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->onVipChanged()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->updateData()V

    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->refreshQuickState()V

    return-void
.end method

.method resetUsedSlot()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method saveSlot()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->findEmptySlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->saveSlot(I)V

    return-void
.end method

.method saveSlot(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog$3;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;I)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTab(I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->refreshQuickState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->updateData()V

    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->refreshQuickState()V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->loadAdVideo()V

    return-void
.end method

.method public showQuickSlotVip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipOneDialog:Lcom/papa91/arc/dialog/TipOneDialog;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/papa91/arc/dialog/TipOneDialog;

    invoke-direct {v1, v0}, Lcom/papa91/arc/dialog/TipOneDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipOneDialog:Lcom/papa91/arc/dialog/TipOneDialog;

    .line 4
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$8;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$8;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    invoke-virtual {v1, v0}, Lcom/papa91/arc/dialog/TipOneDialog;->setListener(Lcom/papa91/arc/dialog/TipOneDialog$OnOptionsListener;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipOneDialog:Lcom/papa91/arc/dialog/TipOneDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    return-void
.end method

.method public showSlotPrompt(ILcom/papa91/arc/bean/Slot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mid:I

    .line 3
    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    .line 4
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lcom/papa91/arc/dialog/TipTwoDialog;

    invoke-direct {p2, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 6
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$7;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    invoke-virtual {p2, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;->setListener(Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;)V

    .line 7
    :cond_1
    sget p2, Lorg/ppsspp/ppsspp/R$id;->del:I

    if-ne p1, p2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    const-string p2, "\u662f\u5426\u5220\u9664\u5b58\u6863\uff1f"

    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/TipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/TipTwoDialog;

    goto :goto_0

    .line 9
    :cond_2
    sget p2, Lorg/ppsspp/ppsspp/R$id;->save:I

    if-ne p1, p2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    const-string p2, "\u662f\u5426\u8986\u76d6\u5b58\u6863\uff1f"

    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/TipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/TipTwoDialog;

    goto :goto_0

    .line 11
    :cond_3
    sget p2, Lorg/ppsspp/ppsspp/R$id;->load:I

    if-ne p1, p2, :cond_4

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    const-string p2, "\u662f\u5426\u8bfb\u53d6\u6b64\u5b58\u6863\uff1f"

    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/TipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 13
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/view/BaseDialog;->show()V

    return-void
.end method

.method public updateData()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getQuickSlots()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->getMenuTypes(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 4
    iget v5, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    if-ne v4, v5, :cond_0

    .line 5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    invoke-virtual {v5, v1}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    invoke-virtual {v5, v3}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 7
    :goto_1
    iget-boolean v5, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->hasShowDot:Z

    if-nez v5, :cond_3

    .line 8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    invoke-virtual {v5}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 9
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Lcom/papa91/arc/bean/TypeBean;->setShowDot(Z)V

    goto :goto_3

    .line 10
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    invoke-virtual {v5, v3}, Lcom/papa91/arc/bean/TypeBean;->setShowDot(Z)V

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    invoke-virtual {v1, v2}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x14

    .line 13
    iput v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    .line 14
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 15
    iget v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    new-array v2, v2, [Ljava/lang/Integer;

    iput-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    .line 16
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 17
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 18
    :cond_5
    new-instance v1, Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->prefs:Lcom/papa91/wrapper/UserPrefs;

    .line 19
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->ugcPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getModSubfix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getRecordInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotsQuick:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 22
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotsQuick:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->notifySlotChanged()V

    return-void
.end method

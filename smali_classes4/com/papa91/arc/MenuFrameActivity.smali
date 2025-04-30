.class public Lcom/papa91/arc/MenuFrameActivity;
.super Lcom/papa91/arc/view/BaseDialog;
.source "MenuFrameActivity.java"

# interfaces
.implements Lv2/b;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;,
        Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;,
        Lcom/papa91/arc/MenuFrameActivity$MenuType;
    }
.end annotation


# static fields
.field static cheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field static editCheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field MAX_SLOT_COUNT:I

.field SLOT_COUNT:I

.field addCheat:Landroid/view/View;

.field advanced:Landroid/view/View;

.field banner:Lcom/youth/banner/Banner;

.field bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

.field cheatAddDialog:Landroid/app/Dialog;

.field cheatCode:Landroid/widget/EditText;

.field cheatName:Landroid/widget/EditText;

.field cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

.field cheatingCustom:Landroid/view/View;

.field cheatingVip:Landroid/view/View;

.field close:Landroid/view/View;

.field constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field context:Landroid/content/Context;

.field dialogExit:Landroid/app/Dialog;

.field from:I

.field goCheatingVip:Landroid/view/View;

.field goSlotVip:Landroid/view/View;

.field group:Landroidx/constraintlayout/widget/Group;

.field images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;

.field mHandler:Landroid/os/Handler;

.field menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field newSlot:Landroid/view/View;

.field newSlotNo:Landroid/view/View;

.field noCheatTip:Landroid/view/View;

.field paste:Landroid/view/View;

.field performance:I

.field performanceLevel:I

.field prefs:Lcom/papa91/wrapper/UserPrefs;

.field qa:Landroid/view/View;

.field qaClose:Landroid/view/View;

.field qaSlot:Landroid/view/View;

.field save:Landroid/view/View;

.field slotActionTip:Landroid/widget/TextView;

.field slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

.field slotFullTip:Landroid/view/View;

.field slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation
.end field

.field textView7:Landroid/widget/TextView;

.field tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

.field tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

.field tmpPerformance:I

.field usedSlot:[Ljava/lang/Integer;

.field vipBattle:Landroid/widget/ImageView;

.field vipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation
.end field

.field vipCheating:Landroid/widget/ImageView;

.field vipSelectScene:Landroid/widget/ImageView;

.field vipSlot:Landroid/widget/ImageView;

.field vipSp:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/MenuFrameActivity;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x4

    .line 3
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity;->performanceLevel:I

    const/4 p2, 0x1

    .line 4
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 5
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    const/16 p2, 0xa

    .line 7
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    const/16 v0, 0x14

    .line 8
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->MAX_SLOT_COUNT:I

    new-array p2, p2, [Ljava/lang/Integer;

    .line 9
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    .line 10
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    const/4 p1, -0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setWidth(I)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setHeight(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/papa91/arc/MenuFrameActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getUgcPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/arc/MenuFrameActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getUgcPathInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findEmptySlot()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

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

.method private getLayoutResId()I
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$11;->$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType:[I

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_performance1:I

    goto :goto_0

    .line 3
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_cheating:I

    goto :goto_0

    .line 4
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_slot:I

    goto :goto_0

    .line 5
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_vip:I

    :goto_0
    return v0
.end method

.method private getSlotPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getUgcPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUgcPath()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/papa91/psp/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method private getUgcPathInternal()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "/emus/"

    const-string v3, "/"

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

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
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

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

.method private goForumPost()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    const-string v1, "8"

    const-string v2, ""

    const-string v3, "3256971"

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initCheatingViews()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->textView7:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->textView7:Landroid/widget/TextView;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->cheatingVip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->cheatingCustom:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingCustom:Landroid/view/View;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->constraintLayout:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->goCheatingVip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goCheatingVip:Landroid/view/View;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->listView:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->addCheat:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->addCheat:Landroid/view/View;

    .line 9
    sget v0, Lorg/ppsspp/ppsspp/R$id;->noCheatTip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->noCheatTip:Landroid/view/View;

    .line 10
    sget v0, Lorg/ppsspp/ppsspp/R$id;->group:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->textView7:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->textView7:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 13
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    const/4 v3, 0x3

    if-lez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 16
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 18
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGoneMargin(III)V

    .line 19
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 21
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 22
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 23
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 24
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGoneMargin(III)V

    .line 25
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 26
    :goto_0
    :try_start_0
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 27
    :cond_1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getCheatList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_2
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 29
    :cond_3
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getEditCheatList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_4
    :goto_1
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    sget-object v1, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    sget-object v2, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;-><init>(Lcom/papa91/arc/MenuFrameActivity;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 32
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goCheatingVip:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingCustom:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->addCheat:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private initPerformanceViews()V
    .locals 3

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->advanced:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tlPerformance:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/view/SegmentTabLayout;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tlCustom:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/view/SegmentTabLayout;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "\u5173"

    const-string v2, "\u5f00"

    .line 6
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {v2, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    new-instance v2, Lcom/papa91/arc/MenuFrameActivity$1;

    invoke-direct {v2, p0}, Lcom/papa91/arc/MenuFrameActivity$1;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    new-instance v2, Lcom/papa91/arc/MenuFrameActivity$2;

    invoke-direct {v2, p0}, Lcom/papa91/arc/MenuFrameActivity$2;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/papa91/arc/MenuFrameActivity;->setPerformanceTotalLevel(I)V

    .line 13
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->isCustomPerformance()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 19
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    :goto_0
    return-void
.end method

.method private initSlotViews()V
    .locals 5

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qa:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qa:Landroid/view/View;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qaSlot:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qaSlot:Landroid/view/View;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qaClose:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qaClose:Landroid/view/View;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->newSlotNo:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlotNo:Landroid/view/View;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->group:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->listView:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_slot_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 9
    sget v1, Lorg/ppsspp/ppsspp/R$id;->newSlot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    .line 10
    sget v1, Lorg/ppsspp/ppsspp/R$id;->goSlotVip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    .line 11
    sget v1, Lorg/ppsspp/ppsspp/R$id;->slotFullTip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotFullTip:Landroid/view/View;

    .line 12
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    .line 13
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->qaSlot:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->qaClose:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlotNo:Landroid/view/View;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/papa91/arc/MenuFrameActivity;->setOnListener([Landroid/view/View;)V

    .line 14
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    if-lez v0, :cond_0

    const/16 v0, 0x14

    .line 15
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    new-array v1, v1, [Ljava/lang/Integer;

    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 19
    iget-object v3, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->prefs:Lcom/papa91/wrapper/UserPrefs;

    .line 21
    invoke-virtual {v0}, Lcom/papa91/wrapper/UserPrefs;->getSlotTipShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qa:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qa:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getSlotPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/papa91/arc/MenuFrameActivity;->getRecordInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->notifySlotChanged()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$11;->$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType:[I

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initPerformanceViews()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initCheatingViews()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initSlotViews()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initVipViews()V

    :goto_0
    return-void
.end method

.method private initVipViews()V
    .locals 3

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->banner:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->banner:Lcom/youth/banner/Banner;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->bannerViewPager:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/view/BannerViewPager;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSp:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSp:Landroid/widget/ImageView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipCheating:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipCheating:Landroid/widget/ImageView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSlot:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSlot:Landroid/widget/ImageView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSelectScene:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSelectScene:Landroid/widget/ImageView;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipBattle:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBattle:Landroid/widget/ImageView;

    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/VipBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->banner:Lcom/youth/banner/Banner;

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->z(Ljava/util/List;)Lcom/youth/banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/papa91/arc/view/GlideImageLoader;

    invoke-direct {v1}, Lcom/papa91/arc/view/GlideImageLoader;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/youth/banner/Banner;->D(Lv2/b;)Lcom/youth/banner/Banner;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    .line 17
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipCheating:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSlot:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSelectScene:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBattle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->banner:Lcom/youth/banner/Banner;

    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$10;

    invoke-direct {v1, p0}, Lcom/papa91/arc/MenuFrameActivity$10;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 24
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private onCheatingClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cheatingCustom:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingCustom:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->addCheat:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->noCheatTip:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :try_start_0
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    :cond_0
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getEditCheatList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    iput v3, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 11
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 12
    :cond_2
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cheatingVip:I

    if-ne v0, v1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 14
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingCustom:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 15
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->addCheat:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :try_start_1
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 17
    :cond_3
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getCheatList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_4
    :goto_1
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->noCheatTip:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->noCheatTip:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    iput v4, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 23
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 24
    :cond_6
    sget v1, Lorg/ppsspp/ppsspp/R$id;->close:I

    if-ne v0, v1, :cond_7

    .line 25
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    goto/16 :goto_5

    .line 26
    :cond_7
    sget v1, Lorg/ppsspp/ppsspp/R$id;->goCheatingVip:I

    if-ne v0, v1, :cond_8

    .line 27
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->goCheatingVip()V

    goto/16 :goto_5

    .line 28
    :cond_8
    sget v1, Lorg/ppsspp/ppsspp/R$id;->addCheat:I

    if-ne v0, v1, :cond_9

    .line 29
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->showAddCheatDialog()V

    goto/16 :goto_5

    .line 30
    :cond_9
    sget v1, Lorg/ppsspp/ppsspp/R$id;->paste:I

    if-ne v0, v1, :cond_a

    .line 31
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->getTextFromClip(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_5

    .line 35
    :cond_a
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cancel:I

    if-ne v0, v1, :cond_b

    .line 36
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 37
    :cond_b
    sget v1, Lorg/ppsspp/ppsspp/R$id;->save:I

    if-ne v0, v1, :cond_d

    .line 38
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/papa91/arc/MenuFrameActivity;->validateCode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 39
    :cond_c
    :try_start_2
    new-instance v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v4, v1, v2}, Lorg/ppsspp/ppsspp/EditCheatInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 41
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 43
    :catch_2
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u52a0\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :goto_3
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    :goto_4
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 45
    throw p1

    :cond_d
    :goto_5
    return-void
.end method

.method private onPerformanceClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->advanced:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enterGameSettings(I)V

    const/4 p1, 0x2

    .line 6
    sput p1, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSlotClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    goto :goto_1

    .line 4
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qaSlot:I

    if-ne p1, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->goForumPost()V

    goto :goto_1

    .line 6
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qaClose:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->prefs:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {p1, v1}, Lcom/papa91/wrapper/UserPrefs;->setSlotTipShow(Z)V

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->qa:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->newSlot:I

    const-string v2, "2"

    if-eq p1, v0, :cond_4

    sget v0, Lorg/ppsspp/ppsspp/R$id;->newSlotNo:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->goSlotVip:I

    if-ne p1, v0, :cond_7

    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 12
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->setMenuType(Lcom/papa91/arc/MenuFrameActivity$MenuType;[Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 14
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 15
    :cond_5
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    if-ge p1, v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->saveSlot()V

    goto :goto_1

    :cond_6
    const/16 p1, 0xa

    if-ne v0, p1, :cond_7

    .line 17
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->setMenuType(Lcom/papa91/arc/MenuFrameActivity$MenuType;[Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private onVipClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSp:I

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipCheating:I

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 8
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSlot:I

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 10
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSelectScene:I

    if-ne p1, v0, :cond_4

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 12
    :cond_4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipBattle:I

    if-ne p1, v0, :cond_5

    .line 13
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public OnBannerClick(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/VipBean;

    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/VipBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cheatReset()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    :cond_0
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method delSlot(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/MenuFrameActivity$6;-><init>(Lcom/papa91/arc/MenuFrameActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    sget-object v1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->getCurrentTab()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget v0, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    if-ne v0, v1, :cond_4

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->getCurrentTab()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 6
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {v2}, Lcom/papa91/arc/util/GameSettings;->setCustomSettingEnable(Z)V

    const/4 v0, 0x5

    .line 8
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->applyGameSettingConfig(I)V

    .line 9
    :cond_1
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    if-eq v0, v1, :cond_4

    .line 10
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 11
    invoke-static {v0}, Lcom/papa91/arc/util/GameSettings;->setGameSettingLevel(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lcom/papa91/arc/util/GameSettings;->setCustomSettingEnable(Z)V

    .line 14
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    if-ne v0, v1, :cond_3

    .line 15
    invoke-static {v1}, Lorg/ppsspp/ppsspp/NativeApp;->applyGameSettingConfig(I)V

    .line 16
    :cond_3
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    if-eq v0, v1, :cond_4

    .line 17
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 18
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->applyGameSettingConfig(I)V

    .line 19
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    invoke-static {v0}, Lcom/papa91/arc/util/GameSettings;->setGameSettingLevel(I)V

    .line 20
    :cond_4
    :goto_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    return-void
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
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->resetUsedSlot()V

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
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->getSlotFilter()Ljava/io/FilenameFilter;

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
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$8;

    invoke-direct {v1, p0}, Lcom/papa91/arc/MenuFrameActivity$8;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

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

    iget v7, p0, Lcom/papa91/arc/MenuFrameActivity;->MAX_SLOT_COUNT:I

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

    iget-object v7, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

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
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$9;

    invoke-direct {v0, p0}, Lcom/papa91/arc/MenuFrameActivity$9;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    return-object v0
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

.method goCheatingVip()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 2
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/MenuFrameActivity;->setMenuType(Lcom/papa91/arc/MenuFrameActivity$MenuType;[Ljava/lang/String;)V

    return-void
.end method

.method isCustomPerformance()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingLevel()I

    move-result v0

    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 2
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 3
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    move-result v0

    return v0
.end method

.method notifySlotChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_0

    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->findEmptySlot()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotFullTip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotFullTip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    if-lez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotFullTip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    if-nez v0, :cond_3

    .line 20
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;-><init>(Lcom/papa91/arc/MenuFrameActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$11;->$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType:[I

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->onPerformanceClick(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->onCheatingClick(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->onSlotClick(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->onVipClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method resetButtonState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSp:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_sp_selected:I

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_sp_default:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipCheating:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_cheating_selected:I

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_cheating_default:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSlot:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_slot_selected:I

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_slot_default:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSelectScene:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_select_sence_selected:I

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_select_sence_default:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBattle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_battle_selected:I

    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_battle_default:I

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    return-void
.end method

.method resetUsedSlot()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

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
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->findEmptySlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/arc/MenuFrameActivity;->saveSlot(I)V

    return-void
.end method

.method saveSlot(I)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/MenuFrameActivity$7;-><init>(Lcom/papa91/arc/MenuFrameActivity;I)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method select(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->resetButtonState()V

    return-void
.end method

.method selectPerformance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    return-void
.end method

.method public varargs setMenuType(Lcom/papa91/arc/MenuFrameActivity$MenuType;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getLayoutResId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initViews()V

    .line 4
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 5
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 6
    aget-object v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->show()V

    .line 8
    sget-object v2, Lcom/papa91/arc/MenuFrameActivity$MenuType;->cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    if-eqz p1, :cond_4

    .line 11
    iget p2, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 12
    :cond_2
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_3

    .line 13
    array-length p1, p2

    if-lez p1, :cond_3

    .line 14
    :try_start_0
    aget-object p1, p2, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->setPerformanceTotalLevel(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 17
    :goto_0
    array-length p1, p2

    if-le p1, v2, :cond_3

    .line 18
    aget-object p1, p2, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 19
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 21
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 23
    :cond_3
    iget p1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->selectPerformance(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method varargs setOnListener([Landroid/view/View;)V
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

.method setPerformanceTotalLevel(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/papa91/arc/MenuFrameActivity;->performanceLevel:I

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
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {p1, v4}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method setVipTabSelect(Landroid/widget/ImageView;ZII)V
    .locals 1

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0x10

    if-eqz p2, :cond_2

    .line 2
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p4, v0, :cond_1

    .line 3
    iget-object p4, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->vip_btn_selected:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_1
    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->vip_btn_selected:I

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 6
    :cond_2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v0, :cond_3

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const p3, 0x106000d

    .line 8
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 9
    :goto_1
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 2
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    return-void
.end method

.method public showAddCheatDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/view/BaseDialog;

    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    sget v2, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {v0, v1, v2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 3
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->dialog_add_cheat:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->editText:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->editText2:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->paste:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->paste:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->save:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->save:Landroid/view/View;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->paste:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->save:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showModifyCheatDialog(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->showAddCheatDialog()V

    if-ltz p1, :cond_1

    .line 2
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 4
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->save:Landroid/view/View;

    new-instance v2, Lcom/papa91/arc/MenuFrameActivity$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/papa91/arc/MenuFrameActivity$3;-><init>(Lcom/papa91/arc/MenuFrameActivity;Lorg/ppsspp/ppsspp/EditCheatInfo;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showSlotPrompt(ILcom/papa91/arc/bean/Slot;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/papa91/arc/view/BaseDialog;

    sget v2, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {v1, v0, v2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_exit:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->textView2:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotActionTip:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$4;

    invoke-direct {v1, p0}, Lcom/papa91/arc/MenuFrameActivity$4;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    sget v1, Lorg/ppsspp/ppsspp/R$id;->ok:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/papa91/arc/MenuFrameActivity$5;-><init>(Lcom/papa91/arc/MenuFrameActivity;IILcom/papa91/arc/bean/Slot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget p2, Lorg/ppsspp/ppsspp/R$id;->del:I

    if-ne p1, p2, :cond_2

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotActionTip:Landroid/widget/TextView;

    const-string p2, "\u662f\u5426\u5220\u9664\u5b58\u6863\uff1f"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_2
    sget p2, Lorg/ppsspp/ppsspp/R$id;->save:I

    if-ne p1, p2, :cond_3

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotActionTip:Landroid/widget/TextView;

    const-string p2, "\u662f\u5426\u8986\u76d6\u5b58\u6863\uff1f"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_3
    sget p2, Lorg/ppsspp/ppsspp/R$id;->load:I

    if-ne p1, p2, :cond_4

    .line 14
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotActionTip:Landroid/widget/TextView;

    const-string p2, "\u662f\u5426\u8bfb\u53d6\u6b64\u5b58\u6863\uff1f"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_5
    return-void
.end method

.method public updateVip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    sget-object v1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->slot:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initSlotViews()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    if-ne v0, v1, :cond_3

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    if-lez v1, :cond_2

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateVipDatas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/VipBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->banner:Lcom/youth/banner/Banner;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->update(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method validateCode(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\u4f5c\u5f0a\u7801\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 2
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4f5c\u5f0a\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 4
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->checkCheatCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u4f5c\u5f0a\u7801\u683c\u5f0f\u6709\u8bef\uff01"

    .line 6
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.class public final Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EverdayNewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/EverdayNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EverdayNewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0\n\u00a2\u0006\u0004\u0008)\u0010*J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J&\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0016\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012J\u001e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0008\u0010\u001a\u001a\u00020\u0005H\u0016R\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R(\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "",
        "type",
        "onCreateViewHolder",
        "holder",
        "position",
        "",
        "",
        "payloads",
        "",
        "onBindViewHolder",
        "p0",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "downloadTaski",
        "Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;",
        "viewHolderGame",
        "updateProgress",
        "",
        "isNormal",
        "isZip",
        "updateUi",
        "getItemViewType",
        "getItemCount",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "showDataList",
        "Ljava/util/List;",
        "getShowDataList",
        "()Ljava/util/List;",
        "setShowDataList",
        "(Ljava/util/List;)V",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showDataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->showDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->showDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->showDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    move-result p1

    return p1
.end method

.method public final getShowDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->showDataList:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 9
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->showDataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v3, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;

    .line 11
    check-cast p2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getIcon()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    const v4, 0x7f0807b1

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getOpenTest()Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getTestTime()Landroid/widget/TextView;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getTestType()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getDownloadViewStroke()Lcom/join/mgps/customview/DownloadViewStroke;

    move-result-object v3

    .line 17
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v5}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    .line 18
    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 19
    invoke-virtual {v3, v5, v6}, Lcom/join/mgps/customview/DownloadViewStroke;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 20
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v6

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v8

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getTipsLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    iget-object v11, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->context:Landroid/content/Context;

    invoke-static/range {v5 .. v11}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getName()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getDescribe()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getRelateLayoutApp()Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v5, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;

    invoke-direct {v5, p0, v0}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;-><init>(Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v3, v5}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 24
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v3

    const/4 v5, 0x0

    if-ne v3, v1, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getGiftPackageSwich()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getGiftPackageSwich()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :goto_0
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getTipsLayout()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getGiftPackageSwich()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    if-nez p2, :cond_3

    .line 30
    invoke-virtual {p0, p1, v1, v5}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V

    goto/16 :goto_3

    .line 31
    :cond_3
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "gameData.getSize()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/16 v0, 0x400

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    double-to-long v3, v3

    .line 32
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v6, 0x2a

    if-eq v0, v6, :cond_7

    const/16 v6, 0x30

    if-eq v0, v6, :cond_8

    const/16 v6, 0x2f

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 33
    :pswitch_0
    invoke-virtual {p0, p1, v5, v1}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V

    .line 34
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getAppSize()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBarZip()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 36
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getLodingInfo()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 37
    :pswitch_1
    invoke-virtual {p0, p1, v5, v1}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V

    .line 38
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getAppSize()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBarZip()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getLodingInfo()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u89e3\u538b\u4e2d"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 41
    :pswitch_2
    invoke-virtual {p0, p1, v5, v5}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V

    .line 42
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getAppSize()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getLodingInfo()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 45
    :cond_4
    invoke-virtual {p0, p1, v5, v5}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V

    .line 46
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    const-string v2, "/"

    cmp-long v7, v0, v5

    if-nez v7, :cond_5

    .line 47
    :try_start_1
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getAppSize()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 48
    :cond_5
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getAppSize()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_1
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 50
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :goto_2
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getLodingInfo()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u6682\u505c\u4e2d"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 52
    :cond_6
    invoke-virtual {p0, p1, v5, v5}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V

    .line 53
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getAppSize()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 55
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getLodingInfo()Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/S"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 56
    :cond_7
    invoke-virtual {p0, p1, v1, v1}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V

    goto :goto_3

    .line 57
    :cond_8
    :pswitch_3
    invoke-virtual {p0, p1, v1, v5}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V

    goto :goto_3

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->showDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 59
    check-cast p1, Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;

    .line 60
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->showDataList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 4
    check-cast p1, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/16 v0, 0xc

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->updateProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "EverdayTitleLayoutBindin\u2026ntext), viewGroup, false)"

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/ne;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/ne;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;

    invoke-direct {p2, p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/ne;)V

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/cs;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/cs;

    move-result-object p1

    const-string p2, "ItemSimulatorDownloadVie\u2026ntext), viewGroup, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;

    invoke-direct {p2, p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/cs;)V

    return-object p2

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/ne;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/ne;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;

    invoke-direct {p2, p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/ne;)V

    return-object p2
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setShowDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->showDataList:Ljava/util/List;

    return-void
.end method

.method public final updateProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;)V
    .locals 8
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadTaski"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolderGame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "downloadTask.showSize"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/16 v0, 0x400

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-long v3, v3

    .line 4
    invoke-virtual {p2}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getAppSize()Landroid/widget/TextView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBarZip()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 9
    invoke-virtual {p2}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getLodingInfo()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/S"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final updateUi(Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;ZZ)V
    .locals 2
    .param p1    # Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getLinearLayout2()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBarZip()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getTipsLayout()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getDescribe()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getLinearLayout2()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBarZip()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBarZip()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getTipsLayout()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;->getDescribe()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

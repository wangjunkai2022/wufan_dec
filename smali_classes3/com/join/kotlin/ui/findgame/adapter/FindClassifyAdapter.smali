.class public final Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FindClassifyAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$FindClassifyType;,
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;
    }
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001f !\"B\u001d\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016R(\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "",
        "type",
        "onCreateViewHolder",
        "position",
        "getItemViewType",
        "viewHolderx",
        "",
        "onBindViewHolder",
        "getItemCount",
        "",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "showdatas",
        "Ljava/util/List;",
        "getShowdatas",
        "()Ljava/util/List;",
        "setShowdatas",
        "(Ljava/util/List;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "ChoiceAdHolder",
        "ChoiceTitleHolder",
        "ClassifyGameItemViewHolder",
        "FindClassifyType",
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

.field private showdatas:Ljava/util/List;
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

    const-string v0, "showdatas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    move-result p1

    return p1
.end method

.method public final getShowdatas()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolderx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const-string v2, "viewHolder.binding.root"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/join/mgps/dto/CollectionBeanSub;

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/i6;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/i6;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/i6;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/i6;->c:Landroid/widget/TextView;

    const-string v1, "viewHolder.binding.recomGameTv"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/i6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/i6;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$onBindViewHolder$2;

    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$onBindViewHolder$2;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;

    .line 8
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;

    .line 9
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v1

    const-string v3, "showData.game_info"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/o6;

    move-result-object v1

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/o6;->c:Lcom/join/mgps/customview/DownloadViewStroke;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/customview/DownloadViewStroke;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/o6;

    move-result-object v1

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/o6;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getPic()Ljava/lang/String;

    move-result-object p2

    sget-object v3, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v1, p2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->p(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/o6;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/o6;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/o6;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/o6;->e:Landroid/widget/TextView;

    const-string v1, "viewHolder.binding.gameInfo"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/o6;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/o6;->f:Landroid/widget/TextView;

    const-string v1, "viewHolder.binding.gameName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/o6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/o6;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$onBindViewHolder$1;

    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$onBindViewHolder$1;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_1

    .line 16
    :cond_2
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;

    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    const-string v1, "viewHolder.binding.more"

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/b6;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    if-eqz v0, :cond_4

    .line 21
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v2, "da.title"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object v2

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/b6;->b:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$onBindViewHolder$3;

    invoke-direct {v1, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$onBindViewHolder$3;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_4
    const-string p2, ""

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b6;->c:Landroid/widget/TextView;

    const-string v0, "viewHolder.binding.titleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
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

    const-string v1, "ChoiceTitleLayoutBinding\u2026ntext), viewGroup, false)"

    const/4 v2, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 1
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/b6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/b6;)V

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/i6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/i6;

    move-result-object p1

    const-string v0, "ClassifyGameiconItemBind\u2026ntext), viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/i6;)V

    return-object p2

    .line 3
    :cond_1
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/o6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/o6;

    move-result-object p1

    const-string v0, "ClassifyMainadLayoutBind\u2026ntext), viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/o6;)V

    return-object p2

    .line 4
    :cond_2
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/b6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/b6;)V

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setShowdatas(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    return-void
.end method

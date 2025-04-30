.class public final Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FindHomeChoiceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$FindChoiceType;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0007\u001f !\"#$%B\u001d\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016R(\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "",
        "type",
        "onCreateViewHolder",
        "viewHolder",
        "position",
        "",
        "onBindViewHolder",
        "getItemViewType",
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
        "ChoiceGameItemViewHolder",
        "ChoiceGameListAdapter",
        "ChoiceGamelistHolder",
        "ChoiceTagHolder",
        "ChoiceTitleHolder",
        "FindChoiceType",
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

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.mgps.dto.CollectionBeanSub>"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 3
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/t5;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/t5;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "viewHolder.binding.recycleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 7
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.findgame.data.TagData>"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 10
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;

    .line 11
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/a6;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/a6;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 13
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/z5;->c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/z5;

    move-result-object v1

    const-string v2, "ChoiceTagItemLayoutBindi\u2026utInflater.from(context))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/a6;

    move-result-object v2

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/a6;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/join/android/app/mgsim/wufun/databinding/z5;->b()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15
    invoke-virtual {v1}, Lcom/join/android/app/mgsim/wufun/databinding/z5;->b()Landroid/widget/LinearLayout;

    move-result-object v2

    const-string v3, "v.root"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$2;

    invoke-direct {v3, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$2;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/kotlin/ui/findgame/data/TagData;)V

    invoke-static {v2, v3}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 16
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/z5;->b:Landroid/widget/TextView;

    const-string v2, "v.tagX"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/TagData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;

    .line 18
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;

    .line 19
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v1

    const-string v2, "showData.game_info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/y5;

    move-result-object v1

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/y5;->c:Lcom/join/mgps/customview/DownloadViewStroke;

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/DownloadViewStroke;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/y5;

    move-result-object v1

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/y5;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getPic()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    const v3, 0x7f080168

    invoke-static {v1, p2, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->q(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;I)V

    .line 22
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/y5;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/y5;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/y5;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/y5;->e:Landroid/widget/TextView;

    const-string v1, "viewHolder.binding.gameInfo"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/y5;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/y5;->f:Landroid/widget/TextView;

    const-string v1, "viewHolder.binding.gameName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/y5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/y5;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    const-string p2, "viewHolder.binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$1;

    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$1;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_2

    .line 26
    :cond_3
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;

    .line 27
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    const-string v1, "viewHolder.binding.more"

    if-eqz v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/b6;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    if-eqz v0, :cond_5

    .line 31
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/b6;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 33
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v2, "da.title"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object v2

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/b6;->b:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$3;

    invoke-direct {v1, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$3;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_5
    const-string p2, ""

    .line 35
    :goto_1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b6;->c:Landroid/widget/TextView;

    const-string v0, "viewHolder.binding.titleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
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

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    const-string v2, "ChoiceMainadLayoutBindin\u2026ntext), viewGroup, false)"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 1
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/join/android/app/mgsim/wufun/databinding/y5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/y5;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/y5;)V

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/join/android/app/mgsim/wufun/databinding/t5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/t5;

    move-result-object p1

    const-string v0, "ChoiceGamelistLayoutBind\u2026ntext), viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/t5;)V

    return-object p2

    .line 3
    :cond_1
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/join/android/app/mgsim/wufun/databinding/a6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/a6;

    move-result-object p1

    const-string v0, "ChoiceTagLayoutBinding.i\u2026ntext), viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/a6;)V

    return-object p2

    .line 4
    :cond_2
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/join/android/app/mgsim/wufun/databinding/y5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/y5;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/y5;)V

    return-object p2

    .line 5
    :cond_3
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/join/android/app/mgsim/wufun/databinding/b6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/b6;

    move-result-object p1

    const-string v0, "ChoiceTitleLayoutBinding\u2026ntext), viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/b6;)V

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    return-void
.end method

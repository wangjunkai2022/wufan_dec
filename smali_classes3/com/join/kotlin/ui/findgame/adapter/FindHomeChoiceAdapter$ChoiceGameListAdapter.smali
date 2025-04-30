.class public final Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FindHomeChoiceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChoiceGameListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;",
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016R(\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;",
        "Landroid/view/ViewGroup;",
        "p0",
        "",
        "type",
        "onCreateViewHolder",
        "p1",
        "",
        "onBindViewHolder",
        "getItemCount",
        "",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        "tagList",
        "Ljava/util/List;",
        "getTagList",
        "()Ljava/util/List;",
        "setTagList",
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

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
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
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->tagList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->tagList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->onBindViewHolder(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;I)V
    .locals 2
    .param p1    # Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->tagList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/CollectionBeanSub;

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/nl;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/nl;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/nl;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/nl;->c:Landroid/widget/TextView;

    const-string v1, "p0.binding.recomGameTv"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/nl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/nl;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "p0.binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter$onBindViewHolder$1;

    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter$onBindViewHolder$1;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "p0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/join/android/app/mgsim/wufun/databinding/nl;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/nl;

    move-result-object p1

    const-string v0, "GamedetailRecomItemBindi\u2026from(context), p0, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/nl;)V

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setTagList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;->tagList:Ljava/util/List;

    return-void
.end method

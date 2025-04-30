.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FindGameClassfyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TabRecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u00a2\u0006\u0004\u0008!\u0010\"J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0016R\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R(\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;",
        "Landroid/view/ViewGroup;",
        "p0",
        "",
        "p1",
        "onCreateViewHolder",
        "",
        "onBindViewHolder",
        "getItemCount",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;",
        "listener",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;",
        "getListener",
        "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;",
        "setListener",
        "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "",
        "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
        "gameTypeList",
        "Ljava/util/List;",
        "getGameTypeList",
        "()Ljava/util/List;",
        "setGameTypeList",
        "(Ljava/util/List;)V",
        "<init>",
        "(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;Ljava/util/List;)V",
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

.field private gameTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listener:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;
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
            "Landroid/content/Context;",
            "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameTypeList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->listener:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;

    iput-object p3, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->gameTypeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getGameTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->gameTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->gameTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getListener()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->listener:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->onBindViewHolder(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;I)V
    .locals 3
    .param p1    # Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->gameTypeList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/ff;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/ff;->b:Landroid/widget/TextView;

    const-string v1, "p0.binding.mTopCategoryNameTv"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/ff;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/ff;->b:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->isSelected()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/ff;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ff;->b:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;

    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;
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
    new-instance p2, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/join/android/app/mgsim/wufun/databinding/ff;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/ff;

    move-result-object p1

    const-string v0, "FindgameClassfyCategoryI\u2026from(context), p0, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/ff;)V

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setGameTypeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->gameTypeList:Ljava/util/List;

    return-void
.end method

.method public final setListener(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->listener:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;

    return-void
.end method

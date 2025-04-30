.class public abstract Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseDataBindingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;,
        Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;,
        Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$BaseBindingViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "B:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
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
        "\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u0008\u0012\u0004\u0012\u00020\u00050\u0004:\u0003ABCB\u000f\u0012\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008@\u00103J\u0016\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016JU\u0010\t\u001a\u00020\u00082K\u0010\u0011\u001aG\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00080\nH\u0016J\u0016\u0010\u0014\u001a\u00020\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0012H\u0016J\u0016\u0010\u0017\u001a\u00020\u00082\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0016J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J&\u0010 \u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000b2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0016J\u0018\u0010 \u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0008\u0010!\u001a\u00020\u000bH\u0016J\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000bH%J)\u0010$\u001a\u00020\u00082\u0006\u0010#\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005H$\u00a2\u0006\u0004\u0008$\u0010%J)\u0010&\u001a\u00020\u00082\u0006\u0010#\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005H$\u00a2\u0006\u0004\u0008&\u0010%R*\u0010\'\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\"\u0010.\u001a\u00020-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R*\u00104\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R*\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00128\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?\u00a8\u0006D"
    }
    d2 = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "M",
        "Landroidx/databinding/ViewDataBinding;",
        "B",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;",
        "onItemClickListener",
        "",
        "setOnItemClickListener",
        "Lkotlin/Function3;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "viewId",
        "item",
        "position",
        "func",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;",
        "onItemLongClickListener",
        "setOnItemLongClickListener",
        "",
        "list",
        "submitList",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "holder",
        "",
        "",
        "payloads",
        "onBindViewHolder",
        "getItemCount",
        "getLayoutResId",
        "binding",
        "onBindItem",
        "(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "onBindItemPayloads",
        "listDatas",
        "Ljava/util/List;",
        "getListDatas",
        "()Ljava/util/List;",
        "setListDatas",
        "(Ljava/util/List;)V",
        "Landroid/content/Context;",
        "mContext",
        "Landroid/content/Context;",
        "getMContext",
        "()Landroid/content/Context;",
        "setMContext",
        "(Landroid/content/Context;)V",
        "mOnItemClickListener",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;",
        "getMOnItemClickListener",
        "()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;",
        "setMOnItemClickListener",
        "(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V",
        "mOnItemLongClickListener",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;",
        "getMOnItemLongClickListener",
        "()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;",
        "setMOnItemLongClickListener",
        "(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;)V",
        "<init>",
        "BaseBindingViewHolder",
        "OnItemClickListener",
        "OnItemLongClickListener",
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
.field private listDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract getLayoutResId(I)I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method public final getListDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    return-object v0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected final getMOnItemClickListener()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    return-object v0
.end method

.method protected final getMOnItemLongClickListener()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;

    return-object v0
.end method

.method protected abstract onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TM;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TM;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;-><init>(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$2;-><init>(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
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
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3}, Landroidx/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    .line 4
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p2, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getLayoutResId(I)I

    move-result p2

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p2, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026          false\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$BaseBindingViewHolder;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$BaseBindingViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setListDatas(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TM;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected final setMOnItemClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
            "TM;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    return-void
.end method

.method protected final setMOnItemLongClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener<",
            "TM;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
            "TM;>;)V"
        }
    .end annotation

    const-string v0, "onItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TM;-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$setOnItemClickListener$1;

    invoke-direct {v0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$setOnItemClickListener$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    iput-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener<",
            "TM;>;)V"
        }
    .end annotation

    const-string v0, "onItemLongClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TM;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    return-void
.end method

.class final Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "BaseDataBindingAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\t\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u0000\"\u0008\u0008\u0001\u0010\u0002*\u00020\u00012\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "M",
        "Landroidx/databinding/ViewDataBinding;",
        "B",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onClick",
        "(Landroid/view/View;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    iput-object p2, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    invoke-virtual {p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getMOnItemClickListener()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    invoke-virtual {p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getMOnItemClickListener()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    invoke-virtual {v1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getListDatas()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget v2, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$onBindViewHolder$1;->$position:I

    .line 6
    invoke-interface {p1, v0, v1, v2}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;->onItemClick(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

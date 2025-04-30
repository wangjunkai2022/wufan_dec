.class public final Lcom/join/mgps/base/diff/a;
.super Ljava/lang/Object;
.source "BaseQuickAdapterListUpdateCallback.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# instance fields
.field private final a:Lcom/join/mgps/base/BaseQuickAdapter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/BaseQuickAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/base/diff/a;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/diff/a;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/diff/a;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/diff/a;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/join/mgps/base/diff/a;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/diff/a;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

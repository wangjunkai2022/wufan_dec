.class Lcom/join/mgps/base/BaseQuickAdapter$d;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BaseQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/BaseQuickAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field final synthetic c:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x111

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->isHeaderViewAsFlow()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x333

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->isFooterViewAsFlow()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-static {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$400(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/BaseQuickAdapter$l;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->isFixedViewType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    :goto_0
    return p1

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->isFixedViewType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-static {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->access$400(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/BaseQuickAdapter$l;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter$d;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v2

    sub-int/2addr p1, v2

    .line 8
    invoke-interface {v0, v1, p1}, Lcom/join/mgps/base/BaseQuickAdapter$l;->a(Landroidx/recyclerview/widget/GridLayoutManager;I)I

    move-result p1

    :goto_1
    return p1
.end method

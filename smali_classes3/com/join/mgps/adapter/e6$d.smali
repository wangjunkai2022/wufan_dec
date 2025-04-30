.class Lcom/join/mgps/adapter/e6$d;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SimulatorFastEntryHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/e6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

.field private c:I

.field private d:I

.field final synthetic e:Lcom/join/mgps/adapter/e6;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e6$d;->e:Lcom/join/mgps/adapter/e6;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/adapter/e6$d;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/e6$d;->b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/e6$d;->b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    iget-object v0, p0, Lcom/join/mgps/adapter/e6$d;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/adapter/e6$d;->b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/e6$d;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setScrollPosition(I)V

    .line 4
    iget p2, p0, Lcom/join/mgps/adapter/e6$d;->c:I

    if-gtz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/join/mgps/adapter/e6$d;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/join/mgps/adapter/e6$d;->b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/join/mgps/adapter/e6$d;->c:I

    .line 8
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p2, p0, Lcom/join/mgps/adapter/e6$d;->d:I

    :cond_2
    if-lez p1, :cond_3

    .line 9
    iget p2, p0, Lcom/join/mgps/adapter/e6$d;->c:I

    if-lez p2, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/e6$d;->b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    rem-int/2addr p1, p2

    sub-int/2addr p2, p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollPosition()I

    move-result p1

    iget v1, p0, Lcom/join/mgps/adapter/e6$d;->d:I

    mul-int p1, p1, v1

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setScrollOffset(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

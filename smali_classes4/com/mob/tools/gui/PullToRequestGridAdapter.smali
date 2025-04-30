.class public abstract Lcom/mob/tools/gui/PullToRequestGridAdapter;
.super Lcom/mob/tools/gui/PullToRequestBaseListAdapter;


# instance fields
.field private adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

.field private fling:Z

.field private gridView:Lcom/mob/tools/gui/ScrollableGridView;

.field private osListener:Lcom/mob/tools/gui/OnListStopScrollListener;

.field private pullUpReady:Z


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestBaseListAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestAdatper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->onNewGridView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    .line 3
    new-instance v0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;-><init>(Lcom/mob/tools/gui/PullToRequestGridAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    new-instance p1, Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    invoke-direct {p1, p0}, Lcom/mob/tools/gui/PullToRequestBaseAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestBaseListAdapter;)V

    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    .line 5
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->fling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->osListener:Lcom/mob/tools/gui/OnListStopScrollListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/PullToRequestBaseAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->pullUpReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/ScrollableGridView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object p0
.end method


# virtual methods
.method public getBodyView()Lcom/mob/tools/gui/Scrollable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public isFling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->fling:Z

    return v0
.end method

.method public isPullDownReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScrollableGridView;->isReadyToPull()Z

    move-result v0

    return v0
.end method

.method public isPullUpReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->pullUpReady:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mob/tools/gui/PullToRequestAdatper;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onNewGridView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/tools/gui/ScrollableGridView;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onScroll(Lcom/mob/tools/gui/Scrollable;III)V
    .locals 0

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setStretchMode(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    return-void
.end method

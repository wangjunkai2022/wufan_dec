.class public abstract Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;
.super Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;
.source "PullToRefreshListAdapter.java"


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

.field private fling:Z

.field private listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

.field private osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 2
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    invoke-virtual {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    .line 3
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    invoke-direct {p1, p0}, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;)V

    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    .line 5
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->fling:Z

    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    return-object p0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    return-object p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    return-object p0
.end method


# virtual methods
.method public getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    return-object v0
.end method

.method public isFling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->fling:Z

    return v0
.end method

.method public isPullReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->isReadyToPull()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V
    .locals 0

    return-void
.end method

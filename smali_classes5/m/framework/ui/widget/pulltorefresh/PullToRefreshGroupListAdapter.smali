.class public abstract Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;
.super Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;
.source "PullToRefreshGroupListAdapter.java"


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

.field private fling:Z

.field private listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

.field private osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 2
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    invoke-virtual {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 3
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;

    invoke-direct {p1, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V

    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 5
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView;->setAdapter(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->fling:Z

    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    return-object p0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    return-object p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    return-object p0
.end method


# virtual methods
.method public getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    return-object v0
.end method

.method public abstract getChild(II)Ljava/lang/Object;
.end method

.method public abstract getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getChildrenCount(I)I
.end method

.method public abstract getGroupCount()I
.end method

.method public abstract getGroupTitle(I)Ljava/lang/String;
.end method

.method public abstract getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getListView()Lm/framework/ui/widget/pulltorefresh/GroupListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    return-object v0
.end method

.method public isFling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->fling:Z

    return v0
.end method

.method public isPullReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->isReadyToPull()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V
    .locals 0

    return-void
.end method

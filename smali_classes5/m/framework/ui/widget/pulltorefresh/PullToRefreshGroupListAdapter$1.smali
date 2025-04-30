.class Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;
.super Ljava/lang/Object;
.source "PullToRefreshGroupListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

.field private visibleItemCount:I


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iput p2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->firstVisibleItem:I

    .line 2
    iput p3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->visibleItemCount:I

    .line 3
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;Z)V

    if-nez p2, :cond_2

    .line 2
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    move-result-object p1

    iget p2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->firstVisibleItem:I

    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->visibleItemCount:I

    invoke-interface {p1, p2, v0}, Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;->onListStopScrolling(II)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

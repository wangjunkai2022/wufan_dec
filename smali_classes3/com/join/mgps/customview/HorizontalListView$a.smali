.class Lcom/join/mgps/customview/HorizontalListView$a;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HorizontalListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/join/mgps/customview/HorizontalListView;->a(Lcom/join/mgps/customview/HorizontalListView;Z)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    invoke-static {v0}, Lcom/join/mgps/customview/HorizontalListView;->b(Lcom/join/mgps/customview/HorizontalListView;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

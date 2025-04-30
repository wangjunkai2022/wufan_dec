.class Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;
.super Ljava/lang/Object;
.source "ViewPagerLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;


# direct methods
.method constructor <init>(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-static {p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-static {p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/a;->b()V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->b(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/a;->a(ZI)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/a;->a(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

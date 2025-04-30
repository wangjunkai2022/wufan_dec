.class Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;
.super Ljava/lang/Object;
.source "SlidingTabLayoutNoViewPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->g(ILjava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->a(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->b(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->c(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->d(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Lw0/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->d(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Lw0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lw0/b;->onTabSelect(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->e(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->f(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)I

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->o()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->d(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Lw0/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->e(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->f(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)I

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->d(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Lw0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lw0/b;->onTabReselect(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->o()V

    :cond_1
    :goto_0
    return-void
.end method

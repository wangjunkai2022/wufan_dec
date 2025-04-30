.class Lcom/join/mgps/customview/AutoScrollViewPager$a;
.super Landroid/os/Handler;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/AutoScrollViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->c(Lcom/join/mgps/customview/AutoScrollViewPager;)I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->d(Lcom/join/mgps/customview/AutoScrollViewPager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {v1}, Lcom/join/mgps/customview/AutoScrollViewPager;->a(Lcom/join/mgps/customview/AutoScrollViewPager;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->f(Lcom/join/mgps/customview/AutoScrollViewPager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {v1}, Lcom/join/mgps/customview/AutoScrollViewPager;->e(Lcom/join/mgps/customview/AutoScrollViewPager;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

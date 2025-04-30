.class Lcom/join/mgps/customview/AutoScrollViewPager$c;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/AutoScrollViewPager;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$c;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/AutoScrollViewPager;Lcom/join/mgps/customview/AutoScrollViewPager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AutoScrollViewPager$c;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager$c;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->g(Lcom/join/mgps/customview/AutoScrollViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager$c;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->g(Lcom/join/mgps/customview/AutoScrollViewPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-static {v0, p2}, Lcom/join/mgps/customview/AutoScrollViewPager;->h(Lcom/join/mgps/customview/AutoScrollViewPager;I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

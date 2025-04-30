.class Lcom/join/mgps/customview/AutoScrollViewPager$b;
.super Ljava/lang/Object;
.source "AutoScrollViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/AutoScrollViewPager;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$b;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/AutoScrollViewPager;Lcom/join/mgps/customview/AutoScrollViewPager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AutoScrollViewPager$b;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager$b;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->g(Lcom/join/mgps/customview/AutoScrollViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p1, v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$b;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {v1, p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->b(Lcom/join/mgps/customview/AutoScrollViewPager;I)I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$b;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->i(Lcom/join/mgps/customview/AutoScrollViewPager;I)I

    return-void
.end method

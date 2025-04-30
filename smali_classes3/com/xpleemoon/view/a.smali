.class public abstract Lcom/xpleemoon/view/a;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "CarouselPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/xpleemoon/view/CarouselViewPager;",
        ">",
        "Landroidx/viewpager/widget/PagerAdapter;"
    }
.end annotation


# static fields
.field private static final b:I = 0xa


# instance fields
.field private a:Lcom/xpleemoon/view/CarouselViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xpleemoon/view/CarouselViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xpleemoon/view/a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    return-void
.end method


# virtual methods
.method public abstract b()I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract c(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final finishUpdate(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xpleemoon/view/a;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/xpleemoon/view/a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/xpleemoon/view/a;->b()I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/xpleemoon/view/a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/xpleemoon/view/a;->getCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne p1, v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/xpleemoon/view/a;->b()I

    move-result p1

    sub-int/2addr p1, v0

    .line 7
    iget-object v0, p0, Lcom/xpleemoon/view/a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getCount()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/xpleemoon/view/a;->b()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xpleemoon/view/a;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    long-to-int v1, v0

    return v1
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xpleemoon/view/a;->b()I

    move-result v0

    rem-int/2addr p2, v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/xpleemoon/view/a;->c(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

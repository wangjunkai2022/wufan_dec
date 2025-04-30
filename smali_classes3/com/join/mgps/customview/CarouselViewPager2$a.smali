.class Lcom/join/mgps/customview/CarouselViewPager2$a;
.super Ljava/lang/Object;
.source "CarouselViewPager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CarouselViewPager2;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CarouselViewPager2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CarouselViewPager2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->a:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->a:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-static {v0}, Lcom/join/mgps/customview/CarouselViewPager2;->a(Lcom/join/mgps/customview/CarouselViewPager2;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->a:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-static {v0}, Lcom/join/mgps/customview/CarouselViewPager2;->c(Lcom/join/mgps/customview/CarouselViewPager2;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->a:Lcom/join/mgps/customview/CarouselViewPager2;

    iget-boolean v1, v0, Lcom/join/mgps/customview/CarouselViewPager2;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/join/mgps/customview/CarouselViewPager2;->d:Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lcom/join/mgps/customview/CarouselViewPager2;->b(Lcom/join/mgps/customview/CarouselViewPager2;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->a:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 6
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->a:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->a:Lcom/join/mgps/customview/CarouselViewPager2;

    new-instance v1, Lcom/join/mgps/customview/CarouselViewPager2$a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/CarouselViewPager2$a$a;-><init>(Lcom/join/mgps/customview/CarouselViewPager2$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

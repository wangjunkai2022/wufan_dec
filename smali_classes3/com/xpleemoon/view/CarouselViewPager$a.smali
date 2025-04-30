.class Lcom/xpleemoon/view/CarouselViewPager$a;
.super Ljava/lang/Object;
.source "CarouselViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xpleemoon/view/CarouselViewPager;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xpleemoon/view/CarouselViewPager;


# direct methods
.method constructor <init>(Lcom/xpleemoon/view/CarouselViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-static {v0}, Lcom/xpleemoon/view/CarouselViewPager;->a(Lcom/xpleemoon/view/CarouselViewPager;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-static {v0}, Lcom/xpleemoon/view/CarouselViewPager;->c(Lcom/xpleemoon/view/CarouselViewPager;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-static {v0}, Lcom/xpleemoon/view/CarouselViewPager;->b(Lcom/xpleemoon/view/CarouselViewPager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    new-instance v1, Lcom/xpleemoon/view/CarouselViewPager$a$a;

    invoke-direct {v1, p0}, Lcom/xpleemoon/view/CarouselViewPager$a$a;-><init>(Lcom/xpleemoon/view/CarouselViewPager$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

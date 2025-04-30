.class Lcom/join/mgps/customview/ViewPagerWithADs$a;
.super Landroidx/viewpager/widget/ViewPager;
.source "ViewPagerWithADs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ViewPagerWithADs$a$e;,
        Lcom/join/mgps/customview/ViewPagerWithADs$a$d;,
        Lcom/join/mgps/customview/ViewPagerWithADs$a$g;,
        Lcom/join/mgps/customview/ViewPagerWithADs$a$c;,
        Lcom/join/mgps/customview/ViewPagerWithADs$a$f;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroidx/viewpager/widget/PagerAdapter;

.field private g:Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

.field private h:Landroid/os/Handler;

.field final synthetic i:Lcom/join/mgps/customview/ViewPagerWithADs;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 2
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:I

    const/16 p1, 0xf

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    const/16 p1, 0xfa0

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e:I

    .line 6
    new-instance p1, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g:Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    .line 7
    new-instance p1, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h:Landroid/os/Handler;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 10
    invoke-direct {p0, p2, p3}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:I

    const/16 p1, 0xf

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    const/16 p1, 0xfa0

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e:I

    .line 14
    new-instance p1, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g:Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    .line 15
    new-instance p1, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h:Landroid/os/Handler;

    .line 16
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ViewPagerWithADs$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:I

    return v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->b:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 2

    const/16 v0, 0x2710

    .line 1
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:I

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j()V

    .line 5
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 6
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$d;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 7
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$g;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public h(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public i(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->a:Landroid/content/Context;

    .line 2
    iput p3, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->b:Ljava/util/List;

    .line 4
    iput p4, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e:I

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g()V

    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Lcom/join/mgps/customview/ViewPagerWithADs;

    invoke-static {v0}, Lcom/join/mgps/customview/ViewPagerWithADs;->a(Lcom/join/mgps/customview/ViewPagerWithADs;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Lcom/join/mgps/customview/ViewPagerWithADs;

    invoke-static {v0}, Lcom/join/mgps/customview/ViewPagerWithADs;->a(Lcom/join/mgps/customview/ViewPagerWithADs;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f:Landroidx/viewpager/widget/PagerAdapter;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f:Landroidx/viewpager/widget/PagerAdapter;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 6
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g:Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    iget v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

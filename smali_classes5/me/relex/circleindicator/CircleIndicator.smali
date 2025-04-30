.class public Lme/relex/circleindicator/CircleIndicator;
.super Lme/relex/circleindicator/BaseCircleIndicator;
.source "CircleIndicator.java"


# instance fields
.field private m:Landroidx/viewpager/widget/ViewPager;

.field private final n:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final o:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 3
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/database/DataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/database/DataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 9
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/database/DataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic i(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic j(Lme/relex/circleindicator/CircleIndicator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 3
    :goto_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lme/relex/circleindicator/CircleIndicator;->e(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->b(I)V

    return-void
.end method

.method public bridge synthetic e(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->e(II)V

    return-void
.end method

.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public bridge synthetic h(Lme/relex/circleindicator/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->h(Lme/relex/circleindicator/b;)V

    return-void
.end method

.method public bridge synthetic setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V
    .locals 0
    .param p1    # Lme/relex/circleindicator/BaseCircleIndicator$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    const-string v1, "can not find Viewpager , setViewPager first"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    .line 4
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->k()V

    .line 5
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 7
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

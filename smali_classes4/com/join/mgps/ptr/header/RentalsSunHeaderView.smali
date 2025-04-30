.class public Lcom/join/mgps/ptr/header/RentalsSunHeaderView;
.super Lcom/join/mgps/ptr/PtrUIHeader;
.source "RentalsSunHeaderView.java"


# instance fields
.field private a:Lcom/join/mgps/ptr/header/b;

.field private b:Lcom/join/mgps/ptr/PtrFrameLayout;

.field private c:Lcom/join/mgps/ptr/indicator/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/join/mgps/ptr/header/b;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/b;->stop()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    iget-object v1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/b;->g(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/b;->i(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    iget-object p3, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {p3}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/ptr/header/b;->g(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    invoke-virtual {p2, p1}, Lcom/join/mgps/ptr/header/b;->i(F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/b;->h()V

    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/b;->start()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    iget-object v1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/b;->g(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/b;->i(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/b;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    add-int/2addr p4, p1

    sub-int/2addr p4, p2

    add-int/2addr p5, v0

    sub-int/2addr p5, p3

    invoke-virtual {v1, p1, v0, p4, p5}, Lcom/join/mgps/ptr/header/b;->setBounds(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->a:Lcom/join/mgps/ptr/header/b;

    invoke-virtual {p2}, Lcom/join/mgps/ptr/header/b;->e()I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    div-int/lit8 p2, p2, 0x4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setUp(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    new-instance p1, Lcom/join/mgps/ptr/indicator/b;

    invoke-direct {p1}, Lcom/join/mgps/ptr/indicator/b;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/indicator/b;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrIndicator(Lcom/join/mgps/ptr/indicator/a;)V

    return-void
.end method

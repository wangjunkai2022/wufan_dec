.class public Lcom/yatoooon/screenadaptation/d;
.super Lcom/yatoooon/screenadaptation/a;
.source "LoadViewHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/yatoooon/screenadaptation/a;-><init>(Landroid/content/Context;IIFLjava/lang/String;)V

    return-void
.end method

.method private k(F)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yatoooon/screenadaptation/a;->h:Ljava/lang/String;

    const-string v1, "px"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/yatoooon/screenadaptation/a;->c:F

    iget v1, p0, Lcom/yatoooon/screenadaptation/a;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yatoooon/screenadaptation/a;->h:Ljava/lang/String;

    const-string v1, "dp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/yatoooon/screenadaptation/a;->a:F

    invoke-static {v0, p1}, Lu2/b;->c(FF)I

    move-result p1

    .line 5
    iget v0, p0, Lcom/yatoooon/screenadaptation/a;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float v0, v0, p1

    .line 6
    iget p1, p0, Lcom/yatoooon/screenadaptation/a;->c:F

    iget v1, p0, Lcom/yatoooon/screenadaptation/a;->e:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private l(Landroid/view/View;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->m(Landroid/widget/TextView;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private m(Landroid/widget/TextView;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget v0, p0, Lcom/yatoooon/screenadaptation/a;->g:F

    mul-float p1, p1, v0

    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->k(F)F

    move-result p1

    return p1
.end method

.method private n(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    int-to-float p1, p1

    .line 1
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->k(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 7
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lu2/a;->b(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v0

    invoke-static {p1, v0}, Lu2/a;->g(Landroid/view/View;I)V

    .line 2
    invoke-static {p1}, Lu2/a;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v0

    invoke-static {p1, v0}, Lu2/a;->f(Landroid/view/View;I)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lu2/a;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v0

    invoke-static {p1, v0}, Lu2/a;->i(Landroid/view/View;I)V

    .line 2
    invoke-static {p1}, Lu2/a;->c(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v0

    invoke-static {p1, v0}, Lu2/a;->h(Landroid/view/View;I)V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->l(Landroid/view/View;)V

    return-void
.end method

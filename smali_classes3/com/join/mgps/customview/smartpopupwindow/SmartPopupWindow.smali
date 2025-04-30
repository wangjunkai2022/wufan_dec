.class public Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SmartPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private final n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x2

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a:I

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c:F

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->f:Z

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->g:I

    .line 9
    iput-boolean p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h:Z

    const/4 p3, 0x2

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->j:I

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->k:I

    .line 12
    new-instance p2, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    iput-object p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 13
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->d:Landroid/content/Context;

    return-void
.end method

.method private A(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 2
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$d;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x168

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private G(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$a;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 7
    new-instance p1, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$b;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 10
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private H(IILandroid/view/View;IIII)V
    .locals 6
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p3, p5, p1, p6}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->t(Landroid/view/View;III)I

    move-result v2

    .line 2
    invoke-direct {p0, p3, p4, p2, p7}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->u(Landroid/view/View;III)I

    move-result v3

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b:I

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->A(F)V

    return-void
.end method

.method static synthetic e(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b:I

    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->d:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic g(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic h(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->g:I

    return p1
.end method

.method static synthetic i(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c:F

    return p1
.end method

.method static synthetic j(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->f:Z

    return p1
.end method

.method static synthetic k(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h:Z

    return p0
.end method

.method static synthetic l(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->z()V

    return-void
.end method

.method static synthetic m(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic n(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->j:I

    return p0
.end method

.method static synthetic o(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->k:I

    return p0
.end method

.method static synthetic p(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->l:I

    return p0
.end method

.method static synthetic q(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->m:I

    return p0
.end method

.method static synthetic r(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;IILandroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->H(IILandroid/view/View;IIII)V

    return-void
.end method

.method private s(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private t(Landroid/view/View;III)I
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    sub-int/2addr p4, p3

    goto :goto_2

    .line 3
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v0

    div-int/2addr p3, v0

    sub-int/2addr p1, p3

    :goto_1
    add-int/2addr p4, p1

    :goto_2
    return p4
.end method

.method private u(Landroid/view/View;III)I
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    :cond_2
    sub-int/2addr p4, p3

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    :goto_0
    sub-int/2addr p4, p1

    :goto_1
    return p4
.end method

.method private v()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 2
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$e;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x168

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static w(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static y(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->w(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public B(Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->E(Landroid/view/View;IIZ)V

    return-void
.end method

.method public C(Landroid/view/View;IIII)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->D(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public D(Landroid/view/View;IIIIZ)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h:Z

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->i:Landroid/view/View;

    .line 3
    iput p4, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->l:I

    .line 4
    iput p5, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->m:I

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->j:I

    .line 6
    iput p3, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->k:I

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->F()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 9
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->s(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0, p6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->y(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->y(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez p6, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 14
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15
    aget v4, v3, v0

    add-int/2addr p4, v4

    const/4 v4, 0x1

    .line 16
    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, v1, p5}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->u(Landroid/view/View;III)I

    move-result p2

    .line 18
    invoke-direct {p0, p1, p3, v2, p4}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->t(Landroid/view/View;III)I

    move-result p3

    if-eqz p6, :cond_1

    .line 19
    invoke-static {p0, p1, p3, p2, v0}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method public E(Landroid/view/View;IIZ)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->D(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->v()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->z()V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h:Z

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->i:Landroid/view/View;

    .line 3
    iput p3, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->l:I

    .line 4
    iput p4, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->m:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->s(Landroid/view/View;)V

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->f:Z

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->G(Z)V

    .line 5
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

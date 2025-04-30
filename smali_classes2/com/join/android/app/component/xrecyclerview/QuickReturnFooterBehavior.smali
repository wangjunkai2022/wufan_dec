.class public Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "QuickReturnFooterBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:Z

    return p1
.end method

.method static synthetic e(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->g(Landroid/view/View;)V

    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Landroid/view/animation/Interpolator;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;-><init>(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:Z

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Landroid/view/animation/Interpolator;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;-><init>(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public h(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    if-ne v0, p2, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6
    iget-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    if-eqz p2, :cond_3

    .line 7
    iget-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:Z

    if-eqz p2, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->i(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    if-eqz p2, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->g(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-lez p5, :cond_1

    .line 2
    iget p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->a:I

    if-ltz p1, :cond_2

    :cond_1
    if-gez p5, :cond_3

    iget p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->a:I

    if-lez p1, :cond_3

    .line 3
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->a:I

    .line 5
    :cond_3
    iget p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->a:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->a:I

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    if-le p1, p3, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    if-nez p1, :cond_4

    .line 8
    invoke-direct {p0, p2}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->g(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_4
    iget p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->a:I

    if-gez p1, :cond_5

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_5

    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:Z

    if-nez p1, :cond_5

    .line 11
    invoke-direct {p0, p2}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->i(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

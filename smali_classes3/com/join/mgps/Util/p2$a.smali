.class public Lcom/join/mgps/Util/p2$a;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/p2$a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/Util/p2$a;->c:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/p2$a;->k(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/p2$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/Util/p2$a;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/Util/p2$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/p2$a;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/Util/p2$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/Util/p2$a;->a:Z

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/Util/p2$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/p2$a;->a:Z

    return p1
.end method

.method static synthetic e(Lcom/join/mgps/Util/p2$a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/p2$a;->m(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/Util/p2$a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/p2$a;->j(Landroid/view/View;)V

    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/Util/p2$a;->i()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/Util/p2$a;->b:Z

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/Util/p2$a;->e:Landroid/view/animation/Interpolator;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/Util/p2$a$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/Util/p2$a$a;-><init>(Lcom/join/mgps/Util/p2$a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private k(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/Util/p2$a;->c:Z

    if-ne v0, p2, :cond_2

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    iput-boolean p2, p0, Lcom/join/mgps/Util/p2$a;->c:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6
    iget-boolean p2, p0, Lcom/join/mgps/Util/p2$a;->c:Z

    if-eqz p2, :cond_4

    .line 7
    iget-boolean p2, p0, Lcom/join/mgps/Util/p2$a;->a:Z

    if-eqz p2, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/p2$a;->m(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_4
    iget-boolean p2, p0, Lcom/join/mgps/Util/p2$a;->b:Z

    if-eqz p2, :cond_5

    return-void

    .line 10
    :cond_5
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/p2$a;->j(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private m(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/Util/p2$a;->a:Z

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/Util/p2$a;->e:Landroid/view/animation/Interpolator;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/join/mgps/Util/p2$a$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/Util/p2$a$b;-><init>(Lcom/join/mgps/Util/p2$a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/p2$a;->d:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/join/mgps/Util/p2$a;->k(Landroid/view/View;Z)V

    return-void
.end method

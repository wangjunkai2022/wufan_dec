.class public Lcom/facebook/drawee/view/c;
.super Landroid/transition/Transition;
.source "DraweeTransition.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "draweeTransition:bounds"


# instance fields
.field private final a:Lcom/facebook/drawee/drawable/r$c;

.field private final b:Lcom/facebook/drawee/drawable/r$c;

.field private final c:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/drawable/r$c;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/drawee/view/c;-><init>(Lcom/facebook/drawee/drawable/r$c;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/drawable/r$c;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0
    .param p3    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/view/c;->a:Lcom/facebook/drawee/drawable/r$c;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/view/c;->b:Lcom/facebook/drawee/drawable/r$c;

    .line 4
    iput-object p3, p0, Lcom/facebook/drawee/view/c;->c:Landroid/graphics/PointF;

    .line 5
    iput-object p4, p0, Lcom/facebook/drawee/view/c;->d:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic a(Lcom/facebook/drawee/view/c;)Lcom/facebook/drawee/drawable/r$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/drawee/view/c;->b:Lcom/facebook/drawee/drawable/r$c;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/drawee/view/c;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/drawee/view/c;->d:Landroid/graphics/PointF;

    return-object p0
.end method

.method private c(Landroid/transition/TransitionValues;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/drawee/view/GenericDraweeView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string p1, "draweeTransition:bounds"

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static d(Lcom/facebook/drawee/drawable/r$c;Lcom/facebook/drawee/drawable/r$c;)Landroid/transition/TransitionSet;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lcom/facebook/drawee/view/c;->e(Lcom/facebook/drawee/drawable/r$c;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/facebook/drawee/drawable/r$c;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/transition/TransitionSet;
    .locals 2
    .param p2    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 2
    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 3
    new-instance v1, Lcom/facebook/drawee/view/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/drawee/view/c;-><init>(Lcom/facebook/drawee/drawable/r$c;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/c;->c(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/c;->c(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "draweeTransition:bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Rect;

    .line 2
    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    if-nez v6, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v3, p0, Lcom/facebook/drawee/view/c;->a:Lcom/facebook/drawee/drawable/r$c;

    iget-object v4, p0, Lcom/facebook/drawee/view/c;->b:Lcom/facebook/drawee/drawable/r$c;

    if-ne v3, v4, :cond_2

    iget-object p3, p0, Lcom/facebook/drawee/view/c;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/facebook/drawee/view/c;->d:Landroid/graphics/PointF;

    if-ne p3, v0, :cond_2

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p1, Lcom/facebook/drawee/view/GenericDraweeView;

    .line 5
    new-instance p2, Lcom/facebook/drawee/drawable/r$b;

    iget-object v7, p0, Lcom/facebook/drawee/view/c;->c:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/facebook/drawee/view/c;->d:Landroid/graphics/PointF;

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/facebook/drawee/drawable/r$b;-><init>(Lcom/facebook/drawee/drawable/r$c;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 6
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/generic/a;

    invoke-virtual {p3, p2}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 7
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 8
    new-instance v0, Lcom/facebook/drawee/view/c$a;

    invoke-direct {v0, p0, p2}, Lcom/facebook/drawee/view/c$a;-><init>(Lcom/facebook/drawee/view/c;Lcom/facebook/drawee/drawable/r$b;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance p2, Lcom/facebook/drawee/view/c$b;

    invoke-direct {p2, p0, p1}, Lcom/facebook/drawee/view/c$b;-><init>(Lcom/facebook/drawee/view/c;Lcom/facebook/drawee/view/GenericDraweeView;)V

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3

    :cond_3
    :goto_0
    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

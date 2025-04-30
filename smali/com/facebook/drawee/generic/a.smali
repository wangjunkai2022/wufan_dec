.class public Lcom/facebook/drawee/generic/a;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchy.java"

# interfaces
.implements Lk0/c;


# static fields
.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x4

.field private static final l:I = 0x5

.field private static final m:I = 0x6


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/content/res/Resources;

.field private c:Lcom/facebook/drawee/generic/RoundingParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/drawee/generic/d;

.field private final e:Lcom/facebook/drawee/drawable/g;

.field private final f:Lcom/facebook/drawee/drawable/h;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/generic/b;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/generic/a;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GenericDraweeHierarchy()"

    .line 4
    invoke-static {v2}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->r()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    .line 7
    new-instance v2, Lcom/facebook/drawee/drawable/h;

    invoke-direct {v2, v0}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/h;

    .line 8
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->j()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x6

    .line 10
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/facebook/drawee/generic/a;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 12
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->l()Lcom/facebook/drawee/drawable/r$c;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/facebook/drawee/generic/a;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    .line 13
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->d()Lcom/facebook/drawee/drawable/r$c;

    move-result-object v7

    .line 14
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->c()Landroid/graphics/PointF;

    move-result-object v8

    .line 15
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->b()Landroid/graphics/ColorFilter;

    move-result-object v9

    .line 16
    invoke-direct {p0, v2, v7, v8, v9}, Lcom/facebook/drawee/generic/a;->f(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    .line 17
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->o()Lcom/facebook/drawee/drawable/r$c;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/facebook/drawee/generic/a;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    .line 18
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->q()Lcom/facebook/drawee/drawable/r$c;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/facebook/drawee/generic/a;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    .line 19
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->i()Lcom/facebook/drawee/drawable/r$c;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/facebook/drawee/generic/a;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    if-lez v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v1, 0x6

    .line 22
    invoke-direct {p0, v2, v6}, Lcom/facebook/drawee/generic/a;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v1

    move v1, v3

    goto :goto_2

    :cond_3
    move v3, v1

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    add-int/lit8 v3, v3, 0x6

    .line 24
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/facebook/drawee/generic/a;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v4, v3

    .line 25
    :cond_5
    new-instance v0, Lcom/facebook/drawee/drawable/g;

    invoke-direct {v0, v4}, Lcom/facebook/drawee/drawable/g;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/g;->y(I)V

    .line 27
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    .line 28
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/e;->f(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/facebook/drawee/generic/d;

    invoke-direct {v0, p1}, Lcom/facebook/drawee/generic/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/drawee/generic/a;->d:Lcom/facebook/drawee/generic/d;

    .line 30
    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/h;->mutate()Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->u()V

    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 33
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-void
.end method

.method private M(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/a;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 2
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 3
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 4
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/drawee/generic/a;->j(I)V

    goto :goto_0

    .line 5
    :cond_2
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_3

    .line 6
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 7
    :cond_3
    invoke-direct {p0, v1}, Lcom/facebook/drawee/generic/a;->h(I)V

    :goto_0
    const v1, 0x461c4000    # 10000.0f

    mul-float p1, p1, v1

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method private f(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/r$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/facebook/drawee/generic/e;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/drawable/r$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/facebook/drawee/generic/e;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Lcom/facebook/drawee/generic/e;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private h(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/g;->l(I)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->j(I)V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->j(I)V

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->j(I)V

    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->j(I)V

    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->j(I)V

    return-void
.end method

.method private j(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/g;->n(I)V

    :cond_0
    return-void
.end method

.method private n(I)Lcom/facebook/drawee/drawable/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/a;->c(I)Lcom/facebook/drawee/drawable/d;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/facebook/drawee/drawable/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/drawee/drawable/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/facebook/drawee/drawable/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/drawable/i;

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/facebook/drawee/drawable/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/drawee/drawable/q;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/facebook/drawee/drawable/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/drawable/q;

    :cond_1
    return-object p1
.end method

.method private p(I)Lcom/facebook/drawee/drawable/q;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->n(I)Lcom/facebook/drawee/drawable/d;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/facebook/drawee/drawable/q;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/facebook/drawee/drawable/q;

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, v0}, Lcom/facebook/drawee/generic/e;->l(Lcom/facebook/drawee/drawable/d;Lcom/facebook/drawee/drawable/r$c;)Lcom/facebook/drawee/drawable/q;

    move-result-object p1

    return-object p1
.end method

.method private s(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->n(I)Lcom/facebook/drawee/drawable/d;

    move-result-object p1

    .line 2
    instance-of p1, p1, Lcom/facebook/drawee/drawable/q;

    return p1
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/h;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/h;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/g;->g()V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/g;->k()V

    .line 4
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->i()V

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->h(I)V

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/g;->r()V

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/g;->j()V

    :cond_0
    return-void
.end method

.method private z(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/facebook/drawee/drawable/a;->f(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-static {p2, v0, v1}, Lcom/facebook/drawee/generic/e;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->n(I)Lcom/facebook/drawee/drawable/d;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/g;->y(I)V

    return-void
.end method

.method public B(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/a;->D(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public C(ILcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/generic/a;->E(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public D(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public E(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->p(I)Lcom/facebook/drawee/drawable/q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/drawable/q;->D(Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public F(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x6

    .line 1
    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/drawee/drawable/a;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The given index does not correspond to an overlay image."

    .line 3
    invoke-static {v0, v1}, Lcom/facebook/common/internal/h;->e(ZLjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x6

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public G(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->F(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public H(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/a;->J(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public I(ILcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/generic/a;->K(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public J(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public K(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->p(I)Lcom/facebook/drawee/drawable/q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/drawable/q;->D(Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public L(Landroid/graphics/PointF;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->p(I)Lcom/facebook/drawee/drawable/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/q;->C(Landroid/graphics/PointF;)V

    return-void
.end method

.method public N(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/a;->P(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public O(ILcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/generic/a;->Q(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public P(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public Q(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->p(I)Lcom/facebook/drawee/drawable/q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/drawable/q;->D(Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public R(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/a;->T(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public S(ILcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/generic/a;->U(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public T(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public U(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->p(I)Lcom/facebook/drawee/drawable/q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/drawable/q;->D(Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public V(Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 3
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->d:Lcom/facebook/drawee/generic/d;

    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/e;->k(Lcom/facebook/drawee/drawable/d;Lcom/facebook/drawee/generic/RoundingParams;)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/a;->d()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->n(I)Lcom/facebook/drawee/drawable/d;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v2, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-static {v0, v1, v2}, Lcom/facebook/drawee/generic/e;->j(Lcom/facebook/drawee/drawable/d;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->g()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->i()V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/drawable/a;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->h(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->h(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->j()V

    return-void
.end method

.method public b(FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/a;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/g;->g()V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->M(F)V

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->r()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->j()V

    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->d:Lcom/facebook/drawee/generic/d;

    return-object v0
.end method

.method public d(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/facebook/drawee/generic/e;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/h;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/h;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->g()V

    .line 5
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->i()V

    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->h(I)V

    .line 7
    invoke-direct {p0, p2}, Lcom/facebook/drawee/generic/a;->M(F)V

    if-eqz p3, :cond_0

    .line 8
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->r()V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->j()V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->d:Lcom/facebook/drawee/generic/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/generic/d;->y(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public k(Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/h;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/h;->v(Landroid/graphics/RectF;)V

    return-void
.end method

.method public l()Lcom/facebook/drawee/drawable/r$c;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->s(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->p(I)Lcom/facebook/drawee/drawable/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/q;->B()Lcom/facebook/drawee/drawable/r$c;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/g;->t()I

    move-result v0

    return v0
.end method

.method public o()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    return-object v0
.end method

.method public q()Z
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/h;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/h;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->a:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/a;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->t()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->u()V

    return-void
.end method

.method public setFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->g()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->i()V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/drawable/a;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->h(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->h(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/g;->j()V

    return-void
.end method

.method public v(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/h;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/h;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public w(Landroid/graphics/PointF;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->p(I)Lcom/facebook/drawee/drawable/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/q;->C(Landroid/graphics/PointF;)V

    return-void
.end method

.method public x(Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->p(I)Lcom/facebook/drawee/drawable/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/q;->D(Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public y(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/generic/a;->z(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

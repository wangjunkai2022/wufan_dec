.class Lcom/nineoldandroids/view/e;
.super Lcom/nineoldandroids/view/b;
.source "ViewPropertyAnimatorPreHC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/view/e$b;,
        Lcom/nineoldandroids/view/e$c;,
        Lcom/nineoldandroids/view/e$d;
    }
.end annotation


# static fields
.field private static final o:I = 0x0

.field private static final p:I = 0x1

.field private static final q:I = 0x2

.field private static final r:I = 0x4

.field private static final s:I = 0x8

.field private static final t:I = 0x10

.field private static final u:I = 0x20

.field private static final v:I = 0x40

.field private static final w:I = 0x80

.field private static final x:I = 0x100

.field private static final y:I = 0x200

.field private static final z:I = 0x1ff


# instance fields
.field private final b:Lcom/nineoldandroids/view/animation/a;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Landroid/view/animation/Interpolator;

.field private i:Z

.field private j:Lcom/nineoldandroids/animation/a$a;

.field private k:Lcom/nineoldandroids/view/e$b;

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/view/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/nineoldandroids/animation/a;",
            "Lcom/nineoldandroids/view/e$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/view/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->e:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/nineoldandroids/view/e;->f:J

    .line 4
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->g:Z

    .line 5
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->i:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/nineoldandroids/view/e;->j:Lcom/nineoldandroids/animation/a$a;

    .line 7
    new-instance v1, Lcom/nineoldandroids/view/e$b;

    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/view/e$b;-><init>(Lcom/nineoldandroids/view/e;Lcom/nineoldandroids/view/e$a;)V

    iput-object v1, p0, Lcom/nineoldandroids/view/e;->k:Lcom/nineoldandroids/view/e$b;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Lcom/nineoldandroids/view/e$a;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/e$a;-><init>(Lcom/nineoldandroids/view/e;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/e;->m:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/e;->c:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-static {p1}, Lcom/nineoldandroids/view/animation/a;->G(Landroid/view/View;)Lcom/nineoldandroids/view/animation/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    return-void
.end method

.method static synthetic D(Lcom/nineoldandroids/view/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/view/e;->O()V

    return-void
.end method

.method static synthetic E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/view/e;->j:Lcom/nineoldandroids/animation/a$a;

    return-object p0
.end method

.method static synthetic F(Lcom/nineoldandroids/view/e;Lcom/nineoldandroids/animation/a$a;)Lcom/nineoldandroids/animation/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/view/e;->j:Lcom/nineoldandroids/animation/a$a;

    return-object p1
.end method

.method static synthetic G(Lcom/nineoldandroids/view/e;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic H(Lcom/nineoldandroids/view/e;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/view/e;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic I(Lcom/nineoldandroids/view/e;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/view/e;->N(IF)V

    return-void
.end method

.method private J(IF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/e;->M(I)F

    move-result v0

    sub-float/2addr p2, v0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/nineoldandroids/view/e;->L(IFF)V

    return-void
.end method

.method private K(IF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/e;->M(I)F

    move-result v0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/nineoldandroids/view/e;->L(IFF)V

    return-void
.end method

.method private L(IFF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/a;

    .line 4
    iget-object v3, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/view/e$d;

    .line 5
    invoke-virtual {v3, p1}, Lcom/nineoldandroids/view/e$d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget v3, v3, Lcom/nineoldandroids/view/e$d;->a:I

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/a;->cancel()V

    .line 8
    :cond_2
    new-instance v0, Lcom/nineoldandroids/view/e$c;

    invoke-direct {v0, p1, p2, p3}, Lcom/nineoldandroids/view/e$c;-><init>(IFF)V

    .line 9
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 11
    iget-object p2, p0, Lcom/nineoldandroids/view/e;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    iget-object p2, p0, Lcom/nineoldandroids/view/e;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private M(I)F
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->b()F

    move-result p1

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->o()F

    move-result p1

    return p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->n()F

    move-result p1

    return p1

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->g()F

    move-result p1

    return p1

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->f()F

    move-result p1

    return p1

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->e()F

    move-result p1

    return p1

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->i()F

    move-result p1

    return p1

    .line 8
    :cond_7
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->h()F

    move-result p1

    return p1

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->m()F

    move-result p1

    return p1

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->l()F

    move-result p1

    return p1
.end method

.method private N(IF)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->r(F)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->E(F)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->D(F)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->w(F)V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->v(F)V

    goto :goto_0

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->u(F)V

    goto :goto_0

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->y(F)V

    goto :goto_0

    .line 8
    :cond_7
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->x(F)V

    goto :goto_0

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->C(F)V

    goto :goto_0

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->B(F)V

    :goto_0
    return-void
.end method

.method private O()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    invoke-static {v0}, Lcom/nineoldandroids/animation/q;->U([F)Lcom/nineoldandroids/animation/q;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3
    iget-object v3, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/view/e$c;

    .line 6
    iget v5, v5, Lcom/nineoldandroids/view/e$c;->a:I

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    new-instance v3, Lcom/nineoldandroids/view/e$d;

    invoke-direct {v3, v4, v1}, Lcom/nineoldandroids/view/e$d;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->k:Lcom/nineoldandroids/view/e$b;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->C(Lcom/nineoldandroids/animation/q$g;)V

    .line 9
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->k:Lcom/nineoldandroids/view/e$b;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 10
    iget-boolean v1, p0, Lcom/nineoldandroids/view/e;->g:Z

    if-eqz v1, :cond_1

    .line 11
    iget-wide v1, p0, Lcom/nineoldandroids/view/e;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/q;->m(J)V

    .line 12
    :cond_1
    iget-boolean v1, p0, Lcom/nineoldandroids/view/e;->e:Z

    if-eqz v1, :cond_2

    .line 13
    iget-wide v1, p0, Lcom/nineoldandroids/view/e;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/q;->c0(J)Lcom/nineoldandroids/animation/q;

    .line 14
    :cond_2
    iget-boolean v1, p0, Lcom/nineoldandroids/view/e;->i:Z

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->l(Landroid/view/animation/Interpolator;)V

    .line 16
    :cond_3
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->q()V

    return-void
.end method


# virtual methods
.method public A(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public B(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public C(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public a(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public b(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/a;

    .line 5
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/a;->cancel()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/view/e;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/nineoldandroids/view/e;->d:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lcom/nineoldandroids/animation/q;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/q;-><init>()V

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/view/e;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/nineoldandroids/view/e;->f:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public h(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public i(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public j(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public k(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public l(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public m(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public n(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public o(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public p(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public q(J)Lcom/nineoldandroids/view/b;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->e:Z

    .line 2
    iput-wide p1, p0, Lcom/nineoldandroids/view/e;->d:J

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/b;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->i:Z

    .line 2
    iput-object p1, p0, Lcom/nineoldandroids/view/e;->h:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public s(Lcom/nineoldandroids/animation/a$a;)Lcom/nineoldandroids/view/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/view/e;->j:Lcom/nineoldandroids/animation/a$a;

    return-object p0
.end method

.method public t(J)Lcom/nineoldandroids/view/b;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->g:Z

    .line 2
    iput-wide p1, p0, Lcom/nineoldandroids/view/e;->f:J

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/view/e;->O()V

    return-void
.end method

.method public v(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public w(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public x(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

.method public y(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    return-object p0
.end method

.method public z(F)Lcom/nineoldandroids/view/b;
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    return-object p0
.end method

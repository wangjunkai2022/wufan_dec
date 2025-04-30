.class public final Lcom/google/android/material/shape/m$b;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private k:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/material/shape/i;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->a:Lcom/google/android/material/shape/d;

    .line 3
    invoke-static {}, Lcom/google/android/material/shape/i;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->b:Lcom/google/android/material/shape/d;

    .line 4
    invoke-static {}, Lcom/google/android/material/shape/i;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->c:Lcom/google/android/material/shape/d;

    .line 5
    invoke-static {}, Lcom/google/android/material/shape/i;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->d:Lcom/google/android/material/shape/d;

    .line 6
    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->e:Lcom/google/android/material/shape/c;

    .line 7
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->f:Lcom/google/android/material/shape/c;

    .line 8
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->g:Lcom/google/android/material/shape/c;

    .line 9
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->h:Lcom/google/android/material/shape/c;

    .line 10
    invoke-static {}, Lcom/google/android/material/shape/i;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->i:Lcom/google/android/material/shape/f;

    .line 11
    invoke-static {}, Lcom/google/android/material/shape/i;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->j:Lcom/google/android/material/shape/f;

    .line 12
    invoke-static {}, Lcom/google/android/material/shape/i;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->k:Lcom/google/android/material/shape/f;

    .line 13
    invoke-static {}, Lcom/google/android/material/shape/i;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->l:Lcom/google/android/material/shape/f;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/m;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/google/android/material/shape/i;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->a:Lcom/google/android/material/shape/d;

    .line 16
    invoke-static {}, Lcom/google/android/material/shape/i;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->b:Lcom/google/android/material/shape/d;

    .line 17
    invoke-static {}, Lcom/google/android/material/shape/i;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->c:Lcom/google/android/material/shape/d;

    .line 18
    invoke-static {}, Lcom/google/android/material/shape/i;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->d:Lcom/google/android/material/shape/d;

    .line 19
    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->e:Lcom/google/android/material/shape/c;

    .line 20
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->f:Lcom/google/android/material/shape/c;

    .line 21
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->g:Lcom/google/android/material/shape/c;

    .line 22
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->h:Lcom/google/android/material/shape/c;

    .line 23
    invoke-static {}, Lcom/google/android/material/shape/i;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->i:Lcom/google/android/material/shape/f;

    .line 24
    invoke-static {}, Lcom/google/android/material/shape/i;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->j:Lcom/google/android/material/shape/f;

    .line 25
    invoke-static {}, Lcom/google/android/material/shape/i;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->k:Lcom/google/android/material/shape/f;

    .line 26
    invoke-static {}, Lcom/google/android/material/shape/i;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->l:Lcom/google/android/material/shape/f;

    .line 27
    iget-object v0, p1, Lcom/google/android/material/shape/m;->a:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->a:Lcom/google/android/material/shape/d;

    .line 28
    iget-object v0, p1, Lcom/google/android/material/shape/m;->b:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->b:Lcom/google/android/material/shape/d;

    .line 29
    iget-object v0, p1, Lcom/google/android/material/shape/m;->c:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->c:Lcom/google/android/material/shape/d;

    .line 30
    iget-object v0, p1, Lcom/google/android/material/shape/m;->d:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->d:Lcom/google/android/material/shape/d;

    .line 31
    iget-object v0, p1, Lcom/google/android/material/shape/m;->e:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->e:Lcom/google/android/material/shape/c;

    .line 32
    iget-object v0, p1, Lcom/google/android/material/shape/m;->f:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->f:Lcom/google/android/material/shape/c;

    .line 33
    iget-object v0, p1, Lcom/google/android/material/shape/m;->g:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->g:Lcom/google/android/material/shape/c;

    .line 34
    iget-object v0, p1, Lcom/google/android/material/shape/m;->h:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->h:Lcom/google/android/material/shape/c;

    .line 35
    iget-object v0, p1, Lcom/google/android/material/shape/m;->i:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->i:Lcom/google/android/material/shape/f;

    .line 36
    iget-object v0, p1, Lcom/google/android/material/shape/m;->j:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->j:Lcom/google/android/material/shape/f;

    .line 37
    iget-object v0, p1, Lcom/google/android/material/shape/m;->k:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->k:Lcom/google/android/material/shape/f;

    .line 38
    iget-object p1, p1, Lcom/google/android/material/shape/m;->l:Lcom/google/android/material/shape/f;

    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->l:Lcom/google/android/material/shape/f;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->a:Lcom/google/android/material/shape/d;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->j:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->k:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->l:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->b:Lcom/google/android/material/shape/d;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->c:Lcom/google/android/material/shape/d;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->d:Lcom/google/android/material/shape/d;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->e:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->f:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->g:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->h:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/shape/m$b;)Lcom/google/android/material/shape/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/m$b;->i:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method private static n(Lcom/google/android/material/shape/d;)F
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/material/shape/l;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/material/shape/l;

    iget p0, p0, Lcom/google/android/material/shape/l;->a:F

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/google/android/material/shape/e;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/google/android/material/shape/e;

    iget p0, p0, Lcom/google/android/material/shape/e;->a:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public A(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->B(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->D(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public B(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->c:Lcom/google/android/material/shape/d;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/shape/m$b;->n(Lcom/google/android/material/shape/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->C(F)Lcom/google/android/material/shape/m$b;

    :cond_0
    return-object p0
.end method

.method public C(F)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->g:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public D(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->g:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public E(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->l:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method public F(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->j:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method public G(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->i:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method public H(IF)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->J(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->K(F)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public I(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->J(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->L(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public J(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->a:Lcom/google/android/material/shape/d;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/shape/m$b;->n(Lcom/google/android/material/shape/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->K(F)Lcom/google/android/material/shape/m$b;

    :cond_0
    return-object p0
.end method

.method public K(F)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->e:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public L(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->e:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public M(IF)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->O(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->P(F)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public N(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->O(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->Q(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public O(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->b:Lcom/google/android/material/shape/d;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/shape/m$b;->n(Lcom/google/android/material/shape/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->P(F)Lcom/google/android/material/shape/m$b;

    :cond_0
    return-object p0
.end method

.method public P(F)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->f:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public Q(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->f:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public m()Lcom/google/android/material/shape/m;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/m;-><init>(Lcom/google/android/material/shape/m$b;Lcom/google/android/material/shape/m$a;)V

    return-object v0
.end method

.method public o(F)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->K(F)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->P(F)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->C(F)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->x(F)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->L(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->Q(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->D(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->y(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public q(IF)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->r(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->o(F)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->J(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->O(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->B(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->w(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public s(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->E(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->G(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->F(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m$b;->t(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->k:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method public u(IF)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->w(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->x(F)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public v(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->w(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->y(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->d:Lcom/google/android/material/shape/d;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/shape/m$b;->n(Lcom/google/android/material/shape/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->x(F)Lcom/google/android/material/shape/m$b;

    :cond_0
    return-object p0
.end method

.method public x(F)Lcom/google/android/material/shape/m$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/m$b;->h:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public y(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/m$b;->h:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public z(IF)Lcom/google/android/material/shape/m$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shape/i;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/m$b;->B(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/m$b;->C(F)Lcom/google/android/material/shape/m$b;

    move-result-object p1

    return-object p1
.end method

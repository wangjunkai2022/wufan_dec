.class public Lcom/facebook/drawee/backends/pipeline/info/c;
.super Ljava/lang/Object;
.source "ImagePerfMonitor.java"


# instance fields
.field private final a:Lcom/facebook/drawee/backends/pipeline/d;

.field private final b:Lcom/facebook/common/time/c;

.field private final c:Lcom/facebook/drawee/backends/pipeline/info/d;

.field private d:Lcom/facebook/drawee/backends/pipeline/info/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lh0/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Li0/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Li0/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Lr0/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh0/d;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/c;Lcom/facebook/drawee/backends/pipeline/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->b:Lcom/facebook/common/time/c;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 4
    new-instance p1, Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-direct {p1}, Lcom/facebook/drawee/backends/pipeline/info/d;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->g:Li0/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li0/a;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->b:Lcom/facebook/common/time/c;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-direct {v0, v1, v2, p0}, Li0/a;-><init>(Lcom/facebook/common/time/c;Lcom/facebook/drawee/backends/pipeline/info/d;Lcom/facebook/drawee/backends/pipeline/info/c;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->g:Li0/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->f:Li0/c;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Li0/c;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->b:Lcom/facebook/common/time/c;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-direct {v0, v1, v2}, Li0/c;-><init>(Lcom/facebook/common/time/c;Lcom/facebook/drawee/backends/pipeline/info/d;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->f:Li0/c;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->e:Lh0/b;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Li0/b;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-direct {v0, v1, p0}, Li0/b;-><init>(Lcom/facebook/drawee/backends/pipeline/info/d;Lcom/facebook/drawee/backends/pipeline/info/c;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->e:Lh0/b;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->d:Lcom/facebook/drawee/backends/pipeline/info/a;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/a;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 9
    invoke-virtual {v1}, Lcom/facebook/drawee/controller/a;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->e:Lh0/b;

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/a;-><init>(Ljava/lang/String;Lh0/b;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->d:Lcom/facebook/drawee/backends/pipeline/info/a;

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v1}, Lcom/facebook/drawee/controller/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/a;->l(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->h:Lr0/b;

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Lr0/b;

    const/4 v1, 0x2

    new-array v1, v1, [Lr0/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->f:Li0/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->d:Lcom/facebook/drawee/backends/pipeline/info/a;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lr0/b;-><init>([Lr0/c;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->h:Lr0/b;

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lh0/d;)V
    .locals 1
    .param p1    # Lh0/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/controller/a;->e()Lk0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lk0/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lk0/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/d;->s(I)V

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/backends/pipeline/info/d;->r(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public d(Lcom/facebook/drawee/backends/pipeline/info/d;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->x()Lcom/facebook/drawee/backends/pipeline/info/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/d;

    .line 4
    invoke-interface {v1, p1, p2}, Lh0/d;->b(Lcom/facebook/drawee/backends/pipeline/info/b;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public e(Lcom/facebook/drawee/backends/pipeline/info/d;I)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->l(I)V

    .line 2
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/c;->b()V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->x()Lcom/facebook/drawee/backends/pipeline/info/b;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/d;

    .line 6
    invoke-interface {v1, p1, p2}, Lh0/d;->a(Lcom/facebook/drawee/backends/pipeline/info/b;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public f(Lh0/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->i:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/c;->c()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/info/c;->h(Z)V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/info/d;->b()V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->j:Z

    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/c;->i()V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->e:Lh0/b;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->S(Lh0/b;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->g:Li0/a;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a;->l(Lcom/facebook/drawee/controller/c;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->h:Lr0/b;

    if-eqz p1, :cond_5

    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->T(Lr0/c;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->e:Lh0/b;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->j0(Lh0/b;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->g:Li0/a;

    if-eqz p1, :cond_4

    .line 12
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a;->K(Lcom/facebook/drawee/controller/c;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->h:Lr0/b;

    if-eqz p1, :cond_5

    .line 14
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/c;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->k0(Lr0/c;)V

    :cond_5
    :goto_0
    return-void
.end method

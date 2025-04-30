.class public Lcom/facebook/fresco/animation/backend/b;
.super Ljava/lang/Object;
.source "AnimationBackendDelegate.java"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/fresco/animation/backend/a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/fresco/animation/backend/a;"
    }
.end annotation


# static fields
.field private static final g:I = -0x1


# instance fields
.field private c:Lcom/facebook/fresco/animation/backend/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:I
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
        to = 0xffL
    .end annotation
.end field

.field private e:Landroid/graphics/ColorFilter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/backend/a;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/facebook/fresco/animation/backend/b;->d:I

    .line 3
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    return-void
.end method

.method private a(Lcom/facebook/fresco/animation/backend/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/a;->f(Landroid/graphics/Rect;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/facebook/fresco/animation/backend/b;->d:I

    if-ltz v0, :cond_1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/a;->k(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->e:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/a;->h(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->b()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->clear()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->d()I

    move-result v0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->e()I

    move-result v0

    :goto_0
    return v0
.end method

.method public f(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->f(Landroid/graphics/Rect;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/b;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->g()I

    move-result v0

    :goto_0
    return v0
.end method

.method public h(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->h(Landroid/graphics/ColorFilter;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/b;->e:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/fresco/animation/backend/a;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/d;->j(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public k(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->k(I)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/facebook/fresco/animation/backend/b;->d:I

    return-void
.end method

.method public l()Lcom/facebook/fresco/animation/backend/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    return-object v0
.end method

.method public m(Lcom/facebook/fresco/animation/backend/a;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/b;->c:Lcom/facebook/fresco/animation/backend/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/backend/b;->a(Lcom/facebook/fresco/animation/backend/a;)V

    :cond_0
    return-void
.end method

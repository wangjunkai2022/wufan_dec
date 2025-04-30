.class public abstract Lcom/join/mgps/base/c;
.super Ljava/lang/Object;
.source "LoadMoreView.java"


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/base/c;->a:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/base/c;->b:Z

    return-void
.end method

.method private k(Lcom/join/mgps/base/b;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/c;->c()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :cond_0
    return-void
.end method

.method private l(Lcom/join/mgps/base/b;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/c;->d()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    return-void
.end method

.method private m(Lcom/join/mgps/base/b;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/c;->f()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/base/b;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/base/c;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->m(Lcom/join/mgps/base/b;Z)V

    .line 3
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->l(Lcom/join/mgps/base/b;Z)V

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/base/c;->k(Lcom/join/mgps/base/b;Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->m(Lcom/join/mgps/base/b;Z)V

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/base/c;->l(Lcom/join/mgps/base/b;Z)V

    .line 7
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->k(Lcom/join/mgps/base/b;Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/base/c;->m(Lcom/join/mgps/base/b;Z)V

    .line 9
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->l(Lcom/join/mgps/base/b;Z)V

    .line 10
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->k(Lcom/join/mgps/base/b;Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->m(Lcom/join/mgps/base/b;Z)V

    .line 12
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->l(Lcom/join/mgps/base/b;Z)V

    .line 13
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->k(Lcom/join/mgps/base/b;Z)V

    :goto_0
    return-void
.end method

.method public abstract b()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method protected abstract c()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method protected abstract d()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/base/c;->a:I

    return v0
.end method

.method protected abstract f()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method public g()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/c;->b:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/c;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/base/c;->b:Z

    return v0
.end method

.method public final i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/c;->b:Z

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/base/c;->a:I

    return-void
.end method

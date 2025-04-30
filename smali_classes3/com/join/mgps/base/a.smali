.class public abstract Lcom/join/mgps/base/a;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "BaseMultiItemQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lj1/b;",
        "K:",
        "Lcom/join/mgps/base/b;",
        ">",
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "TT;TK;>;"
    }
.end annotation


# static fields
.field private static final b:I = -0xff

.field public static final c:I = -0x194


# instance fields
.field private a:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, -0x194

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected a(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/a;->a:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/base/a;->a:Landroid/util/SparseIntArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/base/a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public c(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1/b;

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/base/a;->d(Lj1/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lj1/a;

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj1/b;

    .line 6
    invoke-virtual {p0, v2}, Lcom/join/mgps/base/a;->d(Lj1/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lj1/a;->h()I

    move-result v3

    check-cast v2, Lj1/a;

    invoke-interface {v2}, Lj1/a;->h()I

    move-result v2

    if-le v3, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1/b;

    .line 8
    invoke-virtual {p0, v1}, Lcom/join/mgps/base/a;->d(Lj1/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public d(Lj1/b;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    instance-of p1, p1, Lj1/a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected e(Lj1/a;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lj1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lj1/a;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 v1, p2, 0x1

    .line 5
    invoke-virtual {p0, v1}, Lcom/join/mgps/base/a;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected f(Lj1/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getParentPosition(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj1/a;

    if-eq v0, p1, :cond_0

    .line 3
    invoke-interface {v0}, Lj1/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected g(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/16 v0, -0xff

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/base/a;->a(II)V

    return-void
.end method

.method protected getDefItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj1/b;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lj1/b;->getItemType()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, -0xff

    return p1
.end method

.method public bridge synthetic isExpandable(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lj1/b;

    invoke-virtual {p0, p1}, Lcom/join/mgps/base/a;->d(Lj1/b;)Z

    move-result p1

    return p1
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/base/a;->b(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj1/b;

    .line 4
    instance-of v1, v0, Lj1/a;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, v0

    check-cast v1, Lj1/a;

    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/base/a;->e(Lj1/a;I)V

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/a;->f(Lj1/b;)V

    .line 7
    invoke-super {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->remove(I)V

    :cond_2
    :goto_0
    return-void
.end method

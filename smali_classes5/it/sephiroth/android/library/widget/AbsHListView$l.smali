.class public Lit/sephiroth/android/library/widget/AbsHListView$l;
.super Ljava/lang/Object;
.source "AbsHListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field private a:Lit/sephiroth/android/library/widget/AbsHListView$m;

.field private b:I

.field private c:[Landroid/view/View;

.field private d:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    .line 2
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView$l;)Lit/sephiroth/android/library/widget/AbsHListView$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    return-object p0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView$l;Lit/sephiroth/android/library/widget/AbsHListView$m;)Lit/sephiroth/android/library/widget/AbsHListView$m;
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    return-object p1
.end method

.method private k()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    array-length v0, v0

    .line 2
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 3
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 4
    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v7, v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 6
    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v9, v6, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->K(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 8
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    .line 3
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 7
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    if-ne p2, v3, :cond_3

    .line 8
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_3
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/16 p2, 0xe

    if-lt v1, p2, :cond_4

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 11
    :cond_4
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    if-eqz p2, :cond_5

    .line 12
    invoke-interface {p2, p1}, Lit/sephiroth/android/library/widget/AbsHListView$m;->a(Landroid/view/View;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    if-eqz v2, :cond_9

    .line 13
    :cond_7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    .line 15
    :cond_8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v2, :cond_b

    .line 16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_a

    .line 17
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 18
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 19
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public d()V
    .locals 8

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v4, v5, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->G(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 5
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    .line 7
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v6, v7, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->H(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    :cond_3
    return-void
.end method

.method e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    :cond_0
    return-void
.end method

.method public f(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 2
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 3
    :cond_0
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->b:I

    .line 4
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 5
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    if-eqz v2, :cond_1

    .line 7
    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 8
    aput-object v1, p2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g(I)Landroid/view/View;
    .locals 3

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->b:I

    sub-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 3
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 4
    aget-object v2, v0, p1

    .line 5
    aput-object v1, v0, p1

    return-object v2

    :cond_0
    return-object v1
.end method

.method h(I)Landroid/view/View;
    .locals 3

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->H0(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 5
    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->H0(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method i(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    return-object v0
.end method

.method public j()V
    .locals 7

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 5
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    .line 7
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 10
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method l(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, v1, v2

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v3, v4, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->I(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public n()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    if-le v4, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 5
    array-length v6, v0

    sub-int/2addr v6, v3

    :goto_2
    if-ltz v6, :cond_b

    .line 6
    aget-object v7, v0, v6

    if-eqz v7, :cond_a

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 8
    iget v9, v8, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    const/4 v10, 0x0

    .line 9
    aput-object v10, v0, v6

    .line 10
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    .line 11
    :goto_3
    invoke-virtual {p0, v9}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    .line 12
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    aget-object v5, v5, v9

    .line 13
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 14
    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->b:I

    add-int/2addr v9, v6

    iput v9, v8, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    .line 15
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xe

    if-lt v11, v8, :cond_5

    .line 16
    invoke-virtual {v7, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_5
    if-eqz v1, :cond_a

    .line 17
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    invoke-interface {v8, v7}, Lit/sephiroth/android/library/widget/AbsHListView$m;->a(Landroid/view/View;)V

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v8, -0x2

    if-ne v9, v8, :cond_7

    if-eqz v12, :cond_8

    .line 18
    :cond_7
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v8, v7, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->J(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    :cond_8
    if-eqz v12, :cond_a

    .line 19
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    if-nez v8, :cond_9

    .line 20
    new-instance v8, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 21
    :cond_9
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->b:I

    add-int/2addr v9, v6

    invoke-virtual {v8, v9, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_a
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 22
    :cond_b
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->k()V

    return-void
.end method

.method o(I)V
    .locals 7

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 5
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    .line 7
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 9
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_4

    .line 10
    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public p(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 1
    new-array v0, p1, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 4
    aget-object p1, v0, v1

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 5
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t have a viewTypeCount < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public q(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

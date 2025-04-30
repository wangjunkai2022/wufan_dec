.class public Lcom/join/mgps/base/b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/join/mgps/base/BaseQuickAdapter;

.field public f:Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/base/b;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/base/b;->c:Ljava/util/LinkedHashSet;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/base/b;->d:Ljava/util/LinkedHashSet;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/base/b;->b:Ljava/util/HashSet;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/base/b;->f:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/base/b;)Lcom/join/mgps/base/BaseQuickAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/b;->e:Lcom/join/mgps/base/BaseQuickAdapter;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/base/b;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/b;->g()I

    move-result p0

    return p0
.end method

.method private g()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    return v0
.end method


# virtual methods
.method public A(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p0
.end method

.method public B(ILandroid/widget/AdapterView$OnItemLongClickListener;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object p0
.end method

.method public C(ILandroid/widget/AdapterView$OnItemSelectedListener;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p0
.end method

.method public D(II)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public E(III)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public F(IF)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public G(IFI)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public H(IILjava/lang/Object;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public I(ILjava/lang/Object;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public J(II)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public L(II)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public M(ILandroid/graphics/Typeface;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit16 p2, p2, 0x80

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-object p0
.end method

.method public varargs N(Landroid/graphics/Typeface;[I)Lcom/join/mgps/base/b;
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 2
    invoke-virtual {p0, v2}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public O(IZ)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public varargs c([I)Lcom/join/mgps/base/b;
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/join/mgps/base/b;->c:Ljava/util/LinkedHashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v2}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 6
    :cond_0
    new-instance v3, Lcom/join/mgps/base/b$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/base/b$a;-><init>(Lcom/join/mgps/base/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public varargs d([I)Lcom/join/mgps/base/b;
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/join/mgps/base/b;->d:Ljava/util/LinkedHashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v2}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 6
    :cond_0
    new-instance v3, Lcom/join/mgps/base/b$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/base/b$b;-><init>(Lcom/join/mgps/base/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/b;->c:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/b;->f:Landroid/view/View;

    return-object v0
.end method

.method public i()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/b;->d:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/b;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public k(I)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/base/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public l(I)Lcom/join/mgps/base/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0xf

    .line 2
    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-object p0
.end method

.method public m(ILandroid/widget/Adapter;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-object p0
.end method

.method protected n(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/b;->e:Lcom/join/mgps/base/BaseQuickAdapter;

    return-object p0
.end method

.method public o(IF)Lcom/join/mgps/base/b;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object p0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public q(II)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public r(II)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public s(IZ)Lcom/join/mgps/base/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-object p0
.end method

.method public t(IZ)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-object p0
.end method

.method public u(IZ)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public v(ILandroid/graphics/Bitmap;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public w(ILandroid/graphics/drawable/Drawable;)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public x(II)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public y(II)Lcom/join/mgps/base/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method public varargs z([I)Lcom/join/mgps/base/b;
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/join/mgps/base/b;->b:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->c([I)Lcom/join/mgps/base/b;

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/b;->d([I)Lcom/join/mgps/base/b;

    return-object p0
.end method

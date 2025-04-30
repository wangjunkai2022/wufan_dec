.class public Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SlideLayoutManager.java"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private c:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/ItemTouchHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 2
    new-instance v0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;

    invoke-direct {v0, p0}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;-><init>(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)V

    iput-object v0, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->c:Landroid/view/View$OnTouchListener;

    .line 3
    invoke-direct {p0, p1}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-direct {p0, p2}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method static synthetic a(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le p2, v2, :cond_2

    const/4 p2, 0x3

    :goto_0
    if-ltz p2, :cond_4

    .line 3
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v10

    .line 4
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, v10, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 8
    div-int/lit8 v6, v4, 0x2

    div-int/lit8 v7, v5, 0x5

    .line 9
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v8, v6, v4

    .line 10
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v4

    add-int v9, v7, v4

    move-object v4, p0

    move-object v5, v10

    .line 11
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    if-ne p2, v2, :cond_0

    add-int/lit8 v4, p2, -0x1

    int-to-float v5, v4

    mul-float v5, v5, v0

    sub-float v5, v1, v5

    .line 12
    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleX(F)V

    .line 13
    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleY(F)V

    .line 14
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0xe

    int-to-float v4, v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_0
    if-lez p2, :cond_1

    int-to-float v4, p2

    mul-float v4, v4, v0

    sub-float v4, v1, v4

    .line 15
    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleX(F)V

    .line 16
    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleY(F)V

    .line 17
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    mul-int v4, v4, p2

    div-int/lit8 v4, v4, 0xe

    int-to-float v4, v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v4, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v10, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_4

    .line 19
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0, v2, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 24
    div-int/lit8 v6, v4, 0x2

    div-int/lit8 v7, v5, 0x5

    .line 25
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v8, v6, v4

    .line 26
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v4

    add-int v9, v7, v4

    move-object v4, p0

    move-object v5, v2

    .line 27
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    if-lez p2, :cond_3

    int-to-float v4, p2

    mul-float v4, v4, v0

    sub-float v4, v1, v4

    .line 28
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 29
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    mul-int v4, v4, p2

    div-int/lit8 v4, v4, 0xe

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 31
    :cond_3
    iget-object v4, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

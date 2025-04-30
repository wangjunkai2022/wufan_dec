.class public Lcom/join/mgps/customview/NoScrollListView;
.super Landroid/widget/ListView;
.source "NoScrollListView.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/NoScrollListView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/NoScrollListView;->a:Z

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/NoScrollListView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/NoScrollListView;->a:Z

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/NoScrollListView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/NoScrollListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/NoScrollListView;->b:Z

    return p1
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/NoScrollListView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/NoScrollListView$a;-><init>(Lcom/join/mgps/customview/NoScrollListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/NoScrollListView;->a:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 1
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    .line 3
    invoke-interface {v0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 5
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 6
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "height   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int v2, v2, v4

    add-int/2addr v3, v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setmPullRequesting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/NoScrollListView;->a:Z

    return-void
.end method

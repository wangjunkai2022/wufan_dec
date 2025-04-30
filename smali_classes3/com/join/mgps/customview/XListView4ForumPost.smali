.class public Lcom/join/mgps/customview/XListView4ForumPost;
.super Lcom/join/mgps/customview/XListView4NewGame;
.source "XListView4ForumPost.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListView4NewGame;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/XListView4NewGame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/XListView4NewGame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static x(Landroid/view/View;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Landroid/widget/AbsListView;

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static y(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/customview/XListView4ForumPost;->x(Landroid/view/View;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/join/mgps/customview/XListView4ForumPost;->y(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

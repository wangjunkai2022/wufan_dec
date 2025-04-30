.class public abstract Lcom/join/mgps/ptr/a;
.super Ljava/lang/Object;
.source "PtrDefaultHandler.java"

# interfaces
.implements Lcom/join/mgps/ptr/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_4

    .line 2
    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Landroid/widget/AbsListView;

    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
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

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public static d(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/ptr/a;->c(Landroid/view/View;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->d(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

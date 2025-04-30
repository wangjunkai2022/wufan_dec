.class public Lcom/join/mgps/customview/CoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CoordinatorLayout$a;
    }
.end annotation


# instance fields
.field F:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method P()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CoordinatorLayout;->F:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/CoordinatorLayout;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/CoordinatorLayout;->F:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/CoordinatorLayout;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CoordinatorLayout;->F:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/CoordinatorLayout;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/CoordinatorLayout;->F:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setSheetLayout(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CoordinatorLayout;->F:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    return-void
.end method

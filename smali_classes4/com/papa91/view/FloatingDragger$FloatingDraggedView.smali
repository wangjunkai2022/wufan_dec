.class public Lcom/papa91/view/FloatingDragger$FloatingDraggedView;
.super Landroid/widget/FrameLayout;
.source "FloatingDragger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/FloatingDragger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatingDraggedView"
.end annotation


# static fields
.field public static final KEY_FLOATING_X:Ljava/lang/String; = "KEY_FLOATING_X"

.field public static final KEY_FLOATING_Y:Ljava/lang/String; = "KEY_FLOATING_Y"


# instance fields
.field dragHelper:Landroidx/customview/widget/ViewDragHelper;

.field editor:Landroid/content/SharedPreferences$Editor;

.field sp:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/papa91/view/FloatingDragger;


# direct methods
.method public constructor <init>(Lcom/papa91/view/FloatingDragger;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "FloatingDraggedView"

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/papa91/view/FloatingDragger;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 7
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "FloatingDraggedView"

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/papa91/view/FloatingDragger;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 12
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "FloatingDraggedView"

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->init()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method init()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;

    invoke-direct {v0, p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;-><init>(Lcom/papa91/view/FloatingDragger$FloatingDraggedView;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    sget v1, Lcom/papa91/mix/R$id;->floating:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v0, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->savePosition()V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object v1, v0, Lcom/papa91/view/FloatingDragger;->observable:Lcom/papa91/view/FloatingDragger$PositionObservable;

    invoke-virtual {v1, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->restorePosition()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public restorePosition()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    const-string v1, "KEY_FLOATING_X"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2
    iget-object v3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    const-string v4, "KEY_FLOATING_Y"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    cmpl-float v5, v0, v2

    if-nez v5, :cond_0

    cmpl-float v2, v3, v2

    if-nez v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget v2, v0, Lcom/papa91/view/FloatingDragger;->marginLR:I

    int-to-float v2, v2

    .line 4
    iget v0, v0, Lcom/papa91/view/FloatingDragger;->marginTop:I

    int-to-float v3, v0

    .line 5
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v2

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget v2, v1, Lcom/papa91/view/FloatingDragger;->marginLR:I

    int-to-float v4, v2

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    int-to-float v0, v2

    .line 9
    :cond_1
    iget v2, v1, Lcom/papa91/view/FloatingDragger;->marginTop:I

    int-to-float v4, v2

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    int-to-float v0, v2

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v4}, Lcom/papa91/view/FloatingDragger;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget-object v4, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object v4, v4, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget v4, v4, Lcom/papa91/view/FloatingDragger;->marginLR:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget v4, v2, Lcom/papa91/view/FloatingDragger;->marginLR:I

    sub-int/2addr v0, v4

    iget-object v2, v2, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    :cond_3
    float-to-int v0, v0

    float-to-int v2, v3

    .line 13
    iget-object v3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object v3, v3, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    .line 14
    iget-object v4, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object v4, v4, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    .line 15
    iget-object v1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object v1, v1, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method savePosition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object v0, v0, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    iget-object v1, v1, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "KEY_FLOATING_X"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "KEY_FLOATING_Y"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showMenuDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "showMenu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

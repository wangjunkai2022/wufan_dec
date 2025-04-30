.class public Lcom/papa91/view/FloatingDragger;
.super Ljava/lang/Object;
.source "FloatingDragger.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/FloatingDragger$PositionObservable;,
        Lcom/papa91/view/FloatingDragger$FloatingDraggedView;
    }
.end annotation


# instance fields
.field floatingBtn:Landroid/view/View;

.field floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

.field floatingView:Landroid/view/View;

.field marginLR:I

.field marginTop:I

.field observable:Lcom/papa91/view/FloatingDragger$PositionObservable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/papa91/view/FloatingDragger$PositionObservable;->getInstance()Lcom/papa91/view/FloatingDragger$PositionObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/view/FloatingDragger;->observable:Lcom/papa91/view/FloatingDragger$PositionObservable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/papa91/view/FloatingDragger;->marginLR:I

    iput v0, p0, Lcom/papa91/view/FloatingDragger;->marginTop:I

    .line 4
    iput-object p3, p0, Lcom/papa91/view/FloatingDragger;->floatingView:Landroid/view/View;

    .line 5
    new-instance v0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    invoke-direct {v0, p0, p1}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;-><init>(Lcom/papa91/view/FloatingDragger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/view/FloatingDragger;->floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    if-eqz p2, :cond_0

    .line 6
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 7
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger;->floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger;->observable:Lcom/papa91/view/FloatingDragger$PositionObservable;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public getFloatingView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger;->floatingView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger;->floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger;->floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->restorePosition()V

    :cond_0
    return-void
.end method

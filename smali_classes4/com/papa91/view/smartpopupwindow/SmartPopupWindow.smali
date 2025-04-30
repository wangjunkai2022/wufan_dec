.class public Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SmartPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;
    }
.end annotation


# instance fields
.field private isOnlyGetWH:Z

.field private isTouchOutsideDismiss:Z

.field private mAlpha:F

.field private mAnchorView:Landroid/view/View;

.field private mAnimationStyle:I

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mHorizontalGravity:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mVerticalGravity:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x2

    .line 4
    iput p2, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mWidth:I

    .line 5
    iput p2, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    iput p2, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAlpha:F

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->isTouchOutsideDismiss:Z

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAnimationStyle:I

    .line 9
    iput-boolean p2, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->isOnlyGetWH:Z

    const/4 p3, 0x2

    .line 10
    iput p3, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mVerticalGravity:I

    .line 11
    iput p2, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mHorizontalGravity:I

    .line 12
    new-instance p2, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;

    invoke-direct {p2, p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;-><init>(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    iput-object p2, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 13
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mWidth:I

    return p0
.end method

.method static synthetic access$002(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->setWindowBackgroundAlpha(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mHeight:I

    return p1
.end method

.method static synthetic access$1102(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAnimationStyle:I

    return p1
.end method

.method static synthetic access$1402(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAlpha:F

    return p1
.end method

.method static synthetic access$1502(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->isTouchOutsideDismiss:Z

    return p1
.end method

.method static synthetic access$200(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->isOnlyGetWH:Z

    return p0
.end method

.method static synthetic access$300(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->removeGlobalLayoutListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mVerticalGravity:I

    return p0
.end method

.method static synthetic access$600(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mHorizontalGravity:I

    return p0
.end method

.method static synthetic access$700(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOffsetX:I

    return p0
.end method

.method static synthetic access$800(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOffsetY:I

    return p0
.end method

.method static synthetic access$900(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;IILandroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->updateLocation(IILandroid/view/View;IIII)V

    return-void
.end method

.method private addGlobalLayoutListener(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private calculateX(Landroid/view/View;III)I
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    sub-int/2addr p4, p3

    goto :goto_2

    .line 3
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v0

    div-int/2addr p3, v0

    sub-int/2addr p1, p3

    :goto_1
    add-int/2addr p4, p1

    :goto_2
    return p4
.end method

.method private calculateY(Landroid/view/View;III)I
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    :cond_2
    sub-int/2addr p4, p3

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    :goto_0
    sub-int/2addr p4, p1

    :goto_1
    return p4
.end method

.method private dismissBackgroundAnimator()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 2
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$5;

    invoke-direct {v1, p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$5;-><init>(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x168

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static getDropDownMeasureSpecMode(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static makeDropDownMeasureSpec(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->getDropDownMeasureSpecMode(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private removeGlobalLayoutListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setWindowBackgroundAlpha(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private showBackgroundAnimator()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 2
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$4;

    invoke-direct {v1, p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$4;-><init>(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x168

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private touchOutsideDismiss(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$1;-><init>(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 7
    new-instance p1, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$2;

    invoke-direct {p1, p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$2;-><init>(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 10
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateLocation(IILandroid/view/View;IIII)V
    .locals 6
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p3, p5, p1, p6}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->calculateX(Landroid/view/View;III)I

    move-result v2

    .line 2
    invoke-direct {p0, p3, p4, p2, p7}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->calculateY(Landroid/view/View;III)I

    move-result v3

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismissBackgroundAnimator()V

    .line 3
    invoke-direct {p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->removeGlobalLayoutListener()V

    return-void
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2
    iget v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mHeight:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3
    iget v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mWidth:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4
    iget-boolean v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->isTouchOutsideDismiss:Z

    invoke-direct {p0, v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->touchOutsideDismiss(Z)V

    .line 5
    iget v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public showAtAnchorView(Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;IIZ)V

    return-void
.end method

.method public showAtAnchorView(Landroid/view/View;IIII)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public showAtAnchorView(Landroid/view/View;IIIIZ)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->isOnlyGetWH:Z

    .line 5
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAnchorView:Landroid/view/View;

    .line 6
    iput p4, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOffsetX:I

    .line 7
    iput p5, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOffsetY:I

    .line 8
    iput p2, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mVerticalGravity:I

    .line 9
    iput p3, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mHorizontalGravity:I

    .line 10
    invoke-direct {p0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showBackgroundAnimator()V

    .line 11
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-direct {p0, v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->addGlobalLayoutListener(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0, p6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-static {v2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez p6, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    aget v4, v3, v0

    add-int/2addr p4, v4

    const/4 v4, 0x1

    .line 19
    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, v1, p5}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->calculateY(Landroid/view/View;III)I

    move-result p2

    .line 21
    invoke-direct {p0, p1, p3, v2, p4}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->calculateX(Landroid/view/View;III)I

    move-result p3

    if-eqz p6, :cond_1

    .line 22
    invoke-static {p0, p1, p3, p2, v0}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method public showAtAnchorView(Landroid/view/View;IIZ)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->isOnlyGetWH:Z

    .line 2
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mAnchorView:Landroid/view/View;

    .line 3
    iput p3, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOffsetX:I

    .line 4
    iput p4, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->mOffsetY:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->addGlobalLayoutListener(Landroid/view/View;)V

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

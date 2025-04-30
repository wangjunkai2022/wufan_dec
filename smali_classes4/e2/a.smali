.class public Le2/a;
.super Ljava/lang/Object;
.source "SmallVideoTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Le2/a;->c:I

    .line 3
    iput p3, p0, Le2/a;->d:I

    .line 4
    iput-object p1, p0, Le2/a;->g:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 v2, 0x1

    if-eq p2, v2, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Le2/a;->g:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 5
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    iget v2, p0, Le2/a;->e:I

    sub-int/2addr p1, v2

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 7
    iget v2, p0, Le2/a;->f:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8
    iget v2, p0, Le2/a;->c:I

    if-lt p1, v2, :cond_1

    .line 9
    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 10
    :cond_1
    iget p1, p0, Le2/a;->d:I

    if-lt v0, p1, :cond_2

    .line 11
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 12
    :cond_2
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_3

    .line 13
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    :cond_3
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-gtz p1, :cond_4

    .line 15
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 16
    :cond_4
    iget-object p1, p0, Le2/a;->g:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 17
    :cond_5
    iget p2, p0, Le2/a;->b:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_6

    iget p2, p0, Le2/a;->a:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    return v1

    :cond_6
    return v2

    .line 18
    :cond_7
    iput p1, p0, Le2/a;->a:I

    .line 19
    iput v0, p0, Le2/a;->b:I

    .line 20
    iget-object p2, p0, Le2/a;->g:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 21
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v2

    iput p1, p0, Le2/a;->e:I

    .line 23
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, p1

    iput v0, p0, Le2/a;->f:I

    :goto_0
    return v1
.end method

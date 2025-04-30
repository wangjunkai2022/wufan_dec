.class Lcom/join/mgps/customview/ClipZoomImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClipZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ClipZoomImageView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClipZoomImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-static {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->a(Lcom/join/mgps/customview/ClipZoomImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-virtual {v2}, Lcom/join/mgps/customview/ClipZoomImageView;->getScale()F

    move-result v2

    invoke-static {}, Lcom/join/mgps/customview/ClipZoomImageView;->c()F

    move-result v3

    const-wide/16 v4, 0x10

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    new-instance v3, Lcom/join/mgps/customview/ClipZoomImageView$b;

    .line 6
    invoke-static {}, Lcom/join/mgps/customview/ClipZoomImageView;->c()F

    move-result v6

    invoke-direct {v3, v2, v6, v0, p1}, Lcom/join/mgps/customview/ClipZoomImageView$b;-><init>(Lcom/join/mgps/customview/ClipZoomImageView;FFF)V

    .line 7
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-static {p1, v1}, Lcom/join/mgps/customview/ClipZoomImageView;->b(Lcom/join/mgps/customview/ClipZoomImageView;Z)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    new-instance v3, Lcom/join/mgps/customview/ClipZoomImageView$b;

    .line 10
    invoke-static {v2}, Lcom/join/mgps/customview/ClipZoomImageView;->d(Lcom/join/mgps/customview/ClipZoomImageView;)F

    move-result v6

    invoke-direct {v3, v2, v6, v0, p1}, Lcom/join/mgps/customview/ClipZoomImageView$b;-><init>(Lcom/join/mgps/customview/ClipZoomImageView;FFF)V

    .line 11
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-static {p1, v1}, Lcom/join/mgps/customview/ClipZoomImageView;->b(Lcom/join/mgps/customview/ClipZoomImageView;Z)Z

    :goto_0
    return v1
.end method

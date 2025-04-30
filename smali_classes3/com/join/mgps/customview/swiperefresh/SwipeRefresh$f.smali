.class Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;
.super Landroid/view/animation/Animation;
.source "SwipeRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget-boolean v0, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    iget p2, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr v0, p2

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget v1, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    add-int/2addr v1, v0

    .line 5
    iget-object p2, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    sub-int/2addr v1, p2

    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget-object p2, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->e(F)V

    return-void
.end method

.class Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;
.super Landroid/view/animation/Animation;
.source "SwipeRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;->c:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iput p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;->a:I

    iput p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;->c:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget-object p2, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;->a:I

    int-to-float v1, v0

    iget v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;->b:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

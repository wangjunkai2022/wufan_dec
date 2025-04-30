.class Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$h;
.super Landroid/view/animation/Animation;
.source "SwipeRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u(ILandroid/view/animation/Animation$AnimationListener;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$h;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$h;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget v0, p2, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->x:F

    neg-float v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 2
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setAnimationProgress(F)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$h;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k(F)V

    return-void
.end method

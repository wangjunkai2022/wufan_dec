.class Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$c;
.super Landroid/view/animation/Animation;
.source "SwipeRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t(Landroid/view/animation/Animation$AnimationListener;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$c;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$c;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setAnimationProgress(F)V

    return-void
.end method

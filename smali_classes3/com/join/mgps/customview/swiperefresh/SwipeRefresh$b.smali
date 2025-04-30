.class Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$b;
.super Landroid/view/animation/Animation;
.source "SwipeRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v(Landroid/view/animation/Animation$AnimationListener;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$b;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$b;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setAnimationProgress(F)V

    return-void
.end method

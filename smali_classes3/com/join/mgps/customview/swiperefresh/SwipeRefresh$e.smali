.class Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$e;
.super Ljava/lang/Object;
.source "SwipeRefresh.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f(F)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$e;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$e;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget-boolean v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

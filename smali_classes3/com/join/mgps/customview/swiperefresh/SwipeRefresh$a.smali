.class Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;
.super Ljava/lang/Object;
.source "SwipeRefresh.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget-boolean v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget-object p1, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->start()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget-boolean v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->G:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;->onRefresh()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->a:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iget-object v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iput v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m()V

    :goto_0
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

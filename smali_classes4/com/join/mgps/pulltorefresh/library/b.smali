.class public interface abstract Lcom/join/mgps/pulltorefresh/library/b;
.super Ljava/lang/Object;
.source "IPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(ZZ)Lcom/join/mgps/pulltorefresh/library/a;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()V
.end method

.method public abstract g()Z
.end method

.method public abstract getCurrentMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;
.end method

.method public abstract getFilterTouchEvents()Z
.end method

.method public abstract getLoadingLayoutProxy()Lcom/join/mgps/pulltorefresh/library/a;
.end method

.method public abstract getMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;
.end method

.method public abstract getRefreshableView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getShowViewWhileRefreshing()Z
.end method

.method public abstract getState()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;
.end method

.method public abstract setFilterTouchEvents(Z)V
.end method

.method public abstract setMode(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
.end method

.method public abstract setOnPullEventListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setPullToRefreshOverScrollEnabled(Z)V
.end method

.method public abstract setRefreshing()V
.end method

.method public abstract setRefreshing(Z)V
.end method

.method public abstract setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setScrollingWhileRefreshingEnabled(Z)V
.end method

.method public abstract setShowViewWhileRefreshing(Z)V
.end method

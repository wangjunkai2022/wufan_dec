.class final Lio/reactivex/internal/operators/observable/x$a;
.super Lio/reactivex/internal/observers/a;
.source "ObservableDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "-TK;>;"
        }
    .end annotation
.end field

.field final g:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/g0;Lw2/o;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;",
            "Lw2/o<",
            "-TT;TK;>;",
            "Ljava/util/Collection<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/a;-><init>(Lio/reactivex/g0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/x$a;->g:Lw2/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/x$a;->f:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x$a;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 2
    invoke-super {p0}, Lio/reactivex/internal/observers/a;->clear()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/a;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x$a;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/observers/a;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/observers/a;->d:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x$a;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/observers/a;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/internal/observers/a;->e:I

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x$a;->g:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The keySelector returned a null key"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/x$a;->f:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/observers/a;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/a;->c(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/observers/a;->a:Lio/reactivex/g0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/a;->c:Lx2/j;

    invoke-interface {v0}, Lx2/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/x$a;->f:Ljava/util/Collection;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/x$a;->g:Lw2/o;

    invoke-interface {v2, v0}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The keySelector returned a null key"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/a;->d(I)I

    move-result p1

    return p1
.end method

.class final Lio/reactivex/internal/operators/observable/v$a;
.super Ljava/lang/Object;
.source "ObservableDematerialize.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/g0<",
        "Lio/reactivex/y<",
        "TT;>;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Lio/reactivex/disposables/b;


# direct methods
.method constructor <init>(Lio/reactivex/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v$a;->a:Lio/reactivex/g0;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/y<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$a;->b:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/reactivex/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/reactivex/y;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/y;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$a;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 6
    invoke-virtual {p1}, Lio/reactivex/y;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/v$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lio/reactivex/y;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/v$a;->c:Lio/reactivex/disposables/b;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v$a;->onComplete()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$a;->a:Lio/reactivex/g0;

    invoke-virtual {p1}, Lio/reactivex/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$a;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$a;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$a;->b:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$a;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/v$a;->b:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$a;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/reactivex/y;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/v$a;->a(Lio/reactivex/y;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v$a;->c:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v$a;->c:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/v$a;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

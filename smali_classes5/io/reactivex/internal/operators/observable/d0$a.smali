.class final Lio/reactivex/internal/operators/observable/d0$a;
.super Ljava/lang/Object;
.source "ObservableElementAtMaybe.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/d0;
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
        "TT;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field c:Lio/reactivex/disposables/b;

.field d:J

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/t;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d0$a;->a:Lio/reactivex/t;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/d0$a;->b:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->e:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->d:J

    .line 3
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/d0$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->e:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->d:J

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$a;->c:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d0$a;->c:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/d0$a;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

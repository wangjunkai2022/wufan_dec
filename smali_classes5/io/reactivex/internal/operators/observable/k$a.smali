.class final Lio/reactivex/internal/operators/observable/k$a;
.super Lio/reactivex/observers/d;
.source "ObservableBufferBoundarySupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/d<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/internal/operators/observable/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/k$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/k$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/k$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/observers/d;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Lio/reactivex/internal/operators/observable/k$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->c:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Lio/reactivex/internal/operators/observable/k$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/k$b;->k()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$a;->c:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Lio/reactivex/internal/operators/observable/k$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/k$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/k$a;->c:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/k$a;->c:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/observers/d;->dispose()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/k$a;->b:Lio/reactivex/internal/operators/observable/k$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/k$b;->k()V

    return-void
.end method

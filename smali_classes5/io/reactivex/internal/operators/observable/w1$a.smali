.class final Lio/reactivex/internal/operators/observable/w1$a;
.super Lio/reactivex/observers/d;
.source "ObservableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/d<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/internal/operators/observable/w1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/w1$c<",
            "TT;*TV;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/w1$c;Lio/reactivex/subjects/UnicastSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/w1$c<",
            "TT;*TV;>;",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/observers/d;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w1$a;->b:Lio/reactivex/internal/operators/observable/w1$c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/w1$a;->c:Lio/reactivex/subjects/UnicastSubject;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->b:Lio/reactivex/internal/operators/observable/w1$c;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/w1$c;->i(Lio/reactivex/internal/operators/observable/w1$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->d:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->b:Lio/reactivex/internal/operators/observable/w1$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/w1$c;->l(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/observers/d;->dispose()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/w1$a;->onComplete()V

    return-void
.end method

.class public final Lio/reactivex/internal/operators/observable/i;
.super Lio/reactivex/z;
.source "ObservableAutoConnect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/observables/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lio/reactivex/observables/a;ILw2/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/a<",
            "+TT;>;I",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i;->a:Lio/reactivex/observables/a;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/i;->b:I

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/i;->c:Lw2/g;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i;->a:Lio/reactivex/observables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/z;->a(Lio/reactivex/g0;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lio/reactivex/internal/operators/observable/i;->b:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i;->a:Lio/reactivex/observables/a;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i;->c:Lw2/g;

    invoke-virtual {p1, v0}, Lio/reactivex/observables/a;->j8(Lw2/g;)V

    :cond_0
    return-void
.end method

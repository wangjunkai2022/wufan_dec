.class public final Lio/reactivex/internal/operators/flowable/v0;
.super Lio/reactivex/i0;
.source "FlowableReduceWithSingle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field

.field final c:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3/b;Ljava/util/concurrent/Callable;Lw2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lw2/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v0;->a:Ll3/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/v0;->b:Ljava/util/concurrent/Callable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/v0;->c:Lw2/c;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v0;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The seedSupplier returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/v0;->a:Ll3/b;

    new-instance v2, Lio/reactivex/internal/operators/flowable/u0$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/v0;->c:Lw2/c;

    invoke-direct {v2, p1, v3, v0}, Lio/reactivex/internal/operators/flowable/u0$a;-><init>(Lio/reactivex/l0;Lw2/c;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ll3/b;->c(Ll3/c;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/l0;)V

    return-void
.end method

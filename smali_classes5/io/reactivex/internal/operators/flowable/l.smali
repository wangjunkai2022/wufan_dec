.class public final Lio/reactivex/internal/operators/flowable/l;
.super Lio/reactivex/i0;
.source "FlowableCollectSingle.java"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TU;>;",
        "Lx2/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field final c:Lw2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;Lw2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lw2/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/l;->a:Lio/reactivex/j;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/l;->b:Ljava/util/concurrent/Callable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/l;->c:Lw2/b;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/l;->a:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/l$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/l;->c:Lw2/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/flowable/l$a;-><init>(Lio/reactivex/l0;Ljava/lang/Object;Lw2/b;)V

    invoke-virtual {v1, v2}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/l0;)V

    return-void
.end method

.method public d()Lio/reactivex/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCollect;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/l;->a:Lio/reactivex/j;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/l;->b:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/l;->c:Lw2/b;

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableCollect;-><init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;Lw2/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

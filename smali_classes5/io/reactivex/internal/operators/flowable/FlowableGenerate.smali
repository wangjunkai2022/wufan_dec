.class public final Lio/reactivex/internal/operators/flowable/FlowableGenerate;
.super Lio/reactivex/j;
.source "FlowableGenerate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TS;>;"
        }
    .end annotation
.end field

.field final c:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final d:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lw2/c;Lw2/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lw2/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;",
            "Lw2/g<",
            "-TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->b:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->c:Lw2/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->d:Lw2/g;

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->c:Lw2/c;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;->d:Lw2/g;

    invoke-direct {v1, p1, v2, v3, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;-><init>(Ll3/c;Lw2/c;Lw2/g;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ll3/c;->onSubscribe(Ll3/d;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ll3/c;)V

    return-void
.end method

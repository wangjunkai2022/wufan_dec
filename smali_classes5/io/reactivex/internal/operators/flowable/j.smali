.class public final Lio/reactivex/internal/operators/flowable/j;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableBufferExactBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/j$a;,
        Lio/reactivex/internal/operators/flowable/j$b;
    }
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
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final c:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ll3/b;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ll3/b<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/j;->c:Ll3/b;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/j;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/j$b;

    new-instance v2, Lio/reactivex/subscribers/e;

    invoke-direct {v2, p1}, Lio/reactivex/subscribers/e;-><init>(Ll3/c;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/j;->d:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/j;->c:Ll3/b;

    invoke-direct {v1, v2, p1, v3}, Lio/reactivex/internal/operators/flowable/j$b;-><init>(Ll3/c;Ljava/util/concurrent/Callable;Ll3/b;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method

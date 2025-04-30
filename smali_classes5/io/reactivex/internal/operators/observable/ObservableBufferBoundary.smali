.class public final Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;,
        Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final d:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TOpen;+",
            "Lio/reactivex/e0<",
            "+TClose;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;Lw2/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/e0<",
            "+TOpen;>;",
            "Lw2/o<",
            "-TOpen;+",
            "Lio/reactivex/e0<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;->c:Lio/reactivex/e0;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;->d:Lw2/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;->c:Lio/reactivex/e0;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;->d:Lw2/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;->b:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;-><init>(Lio/reactivex/g0;Lio/reactivex/e0;Lw2/o;Ljava/util/concurrent/Callable;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method

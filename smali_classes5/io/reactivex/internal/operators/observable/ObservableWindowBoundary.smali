.class public final Lio/reactivex/internal/operators/observable/ObservableWindowBoundary;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableWindowBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;,
        Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/z<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/e0<",
            "TB;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary;->b:Lio/reactivex/e0;

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary;->c:I

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary;->c:I

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;-><init>(Lio/reactivex/g0;I)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary;->b:Lio/reactivex/e0;

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->c:Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;

    invoke-interface {p1, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method

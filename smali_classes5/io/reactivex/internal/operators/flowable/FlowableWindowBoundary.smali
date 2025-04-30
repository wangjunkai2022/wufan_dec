.class public final Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableWindowBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$a;,
        Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
        "TT;>;>;"
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

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ll3/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ll3/b<",
            "TB;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;->c:Ll3/b;

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;->d:I

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;->d:I

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;-><init>(Ll3/c;I)V

    .line 2
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->d()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;->c:Ll3/b;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->c:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$a;

    invoke-interface {p1, v1}, Ll3/b;->c(Ll3/c;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method

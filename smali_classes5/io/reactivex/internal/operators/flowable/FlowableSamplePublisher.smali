.class public final Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;
.super Lio/reactivex/j;
.source "FlowableSamplePublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainEmitLast;,
        Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;,
        Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$a;,
        Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Ll3/b;Ll3/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "TT;>;",
            "Ll3/b<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->b:Ll3/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->c:Ll3/b;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->d:Z

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subscribers/e;

    invoke-direct {v0, p1}, Lio/reactivex/subscribers/e;-><init>(Ll3/c;)V

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->d:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->b:Ll3/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainEmitLast;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->c:Ll3/b;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainEmitLast;-><init>(Ll3/c;Ll3/b;)V

    invoke-interface {p1, v1}, Ll3/b;->c(Ll3/c;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->b:Ll3/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;->c:Ll3/b;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;-><init>(Ll3/c;Ll3/b;)V

    invoke-interface {p1, v1}, Ll3/b;->c(Ll3/c;)V

    :goto_0
    return-void
.end method

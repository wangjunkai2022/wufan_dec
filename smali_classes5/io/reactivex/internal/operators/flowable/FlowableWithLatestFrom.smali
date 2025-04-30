.class public final Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$a;,
        Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final d:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/c;Ll3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;",
            "Ll3/b<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->c:Lw2/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->d:Ll3/b;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subscribers/e;

    invoke-direct {v0, p1}, Lio/reactivex/subscribers/e;-><init>(Ll3/c;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->c:Lw2/c;

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;-><init>(Ll3/c;Lw2/c;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/subscribers/e;->onSubscribe(Ll3/d;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->d:Ll3/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$a;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;)V

    invoke-interface {v0, v1}, Ll3/b;->c(Ll3/c;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method

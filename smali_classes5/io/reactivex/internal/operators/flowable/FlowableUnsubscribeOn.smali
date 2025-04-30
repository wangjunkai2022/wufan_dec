.class public final Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableUnsubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;->c:Lio/reactivex/h0;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;->c:Lio/reactivex/h0;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;-><init>(Ll3/c;Lio/reactivex/h0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method

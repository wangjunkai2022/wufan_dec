.class public final Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;,
        Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TU;>;"
        }
    .end annotation
.end field

.field final d:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final e:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ll3/b;Lw2/o;Ll3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ll3/b<",
            "TU;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TV;>;>;",
            "Ll3/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->c:Ll3/b;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->d:Lw2/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->e:Ll3/b;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->e:Ll3/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->d:Lw2/o;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;-><init>(Ll3/c;Lw2/o;)V

    .line 3
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->c:Ll3/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->c(Ll3/b;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->d:Lw2/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->e:Ll3/b;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;-><init>(Ll3/c;Lw2/o;Ll3/b;)V

    .line 7
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->c:Ll3/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->i(Ll3/b;)V

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method

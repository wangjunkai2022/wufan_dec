.class public final Lio/reactivex/internal/operators/flowable/FlowableDebounce;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDebounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce;->c:Lw2/o;

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

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;

    new-instance v2, Lio/reactivex/subscribers/e;

    invoke-direct {v2, p1}, Lio/reactivex/subscribers/e;-><init>(Ll3/c;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce;->c:Lw2/o;

    invoke-direct {v1, v2, p1}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;-><init>(Ll3/c;Lw2/o;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method

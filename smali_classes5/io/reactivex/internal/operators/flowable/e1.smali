.class public final Lio/reactivex/internal/operators/flowable/e1;
.super Lio/reactivex/j;
.source "FlowableTakePublisher.java"


# annotations
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

.field final c:J


# direct methods
.method public constructor <init>(Ll3/b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/e1;->b:Ll3/b;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/e1;->c:J

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e1;->b:Ll3/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTake$TakeSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/e1;->c:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableTake$TakeSubscriber;-><init>(Ll3/c;J)V

    invoke-interface {v0, v1}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method

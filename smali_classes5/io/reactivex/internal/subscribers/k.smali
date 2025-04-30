.class Lio/reactivex/internal/subscribers/k;
.super Lio/reactivex/internal/subscribers/j;
.source "QueueDrainSubscriber.java"


# instance fields
.field final F:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/j;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscribers/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

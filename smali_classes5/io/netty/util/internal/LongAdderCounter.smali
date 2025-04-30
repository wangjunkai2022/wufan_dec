.class final Lio/netty/util/internal/LongAdderCounter;
.super Ljava/util/concurrent/atomic/LongAdder;
.source "LongAdderCounter.java"

# interfaces
.implements Lio/netty/util/internal/LongCounter;


# annotations
.annotation build Lio/netty/util/internal/SuppressJava6Requirement;
    reason = "Usage guarded by java version check"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/LongAdder;-><init>()V

    return-void
.end method


# virtual methods
.method public value()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

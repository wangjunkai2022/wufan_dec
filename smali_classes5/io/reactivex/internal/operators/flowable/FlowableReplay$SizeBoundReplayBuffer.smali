.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;
.super Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;
.source "FlowableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x51dae9f17ccbb88eL


# instance fields
.field final d:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;->d:I

    return-void
.end method


# virtual methods
.method n()V
    .locals 2

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->b:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;->d:I

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->j()V

    :cond_0
    return-void
.end method

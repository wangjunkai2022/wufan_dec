.class final Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$a;
.super Ljava/lang/Object;
.source "FlowableCombineLatest.java"

# interfaces
.implements Lw2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$a;->a:Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$a;->a:Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->d:Lw2/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

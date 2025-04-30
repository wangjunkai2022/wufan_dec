.class final Lio/reactivex/internal/operators/flowable/k1$c$a;
.super Ljava/lang/Object;
.source "FlowableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/k1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/reactivex/processors/UnicastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/internal/operators/flowable/k1$c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/k1$c;Lio/reactivex/processors/UnicastProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/k1$c$a;->b:Lio/reactivex/internal/operators/flowable/k1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/k1$c$a;->a:Lio/reactivex/processors/UnicastProcessor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/k1$c$a;->b:Lio/reactivex/internal/operators/flowable/k1$c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/k1$c$a;->a:Lio/reactivex/processors/UnicastProcessor;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/k1$c;->l(Lio/reactivex/processors/UnicastProcessor;)V

    return-void
.end method

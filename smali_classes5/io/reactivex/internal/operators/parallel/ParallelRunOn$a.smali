.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$a;
.super Ljava/lang/Object;
.source "ParallelRunOn.java"

# interfaces
.implements Lio/reactivex/internal/schedulers/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:[Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lio/reactivex/internal/operators/parallel/ParallelRunOn;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/parallel/ParallelRunOn;[Ll3/c;[Ll3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;[",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$a;->c:Lio/reactivex/internal/operators/parallel/ParallelRunOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$a;->a:[Ll3/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$a;->b:[Ll3/c;

    return-void
.end method


# virtual methods
.method public a(ILio/reactivex/h0$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$a;->c:Lio/reactivex/internal/operators/parallel/ParallelRunOn;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$a;->a:[Ll3/c;

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$a;->b:[Ll3/c;

    invoke-virtual {v0, p1, v1, v2, p2}, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->V(I[Ll3/c;[Ll3/c;Lio/reactivex/h0$c;)V

    return-void
.end method

.class public final Lio/reactivex/internal/operators/flowable/g;
.super Lio/reactivex/j;
.source "FlowableAutoConnect.java"


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
.field final b:Lio/reactivex/flowables/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lio/reactivex/flowables/a;ILw2/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/flowables/a<",
            "+TT;>;I",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/g;->b:Lio/reactivex/flowables/a;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/flowable/g;->c:I

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/g;->d:Lw2/g;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/g;->b:Lio/reactivex/flowables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->c(Ll3/c;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lio/reactivex/internal/operators/flowable/g;->c:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/g;->b:Lio/reactivex/flowables/a;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/g;->d:Lw2/g;

    invoke-virtual {p1, v0}, Lio/reactivex/flowables/a;->N8(Lw2/g;)V

    :cond_0
    return-void
.end method

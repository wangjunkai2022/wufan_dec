.class final Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableRefCount.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRefCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RefConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lw2/g<",
        "Lio/reactivex/disposables/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3f2c4fd6dc101621L


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/FlowableRefCount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableRefCount<",
            "*>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/disposables/b;

.field c:J

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableRefCount;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableRefCount<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->a:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/reactivex/disposables/b;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->a(Lio/reactivex/disposables/b;)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;->a:Lio/reactivex/internal/operators/flowable/FlowableRefCount;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->L8(Lio/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection;)V

    return-void
.end method

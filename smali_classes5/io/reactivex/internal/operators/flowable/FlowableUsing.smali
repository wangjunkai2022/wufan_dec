.class public final Lio/reactivex/internal/operators/flowable/FlowableUsing;
.super Lio/reactivex/j;
.source "FlowableUsing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TD;>;"
        }
    .end annotation
.end field

.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TD;+",
            "Ll3/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final d:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-TD;>;"
        }
    .end annotation
.end field

.field final e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lw2/o<",
            "-TD;+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/g<",
            "-TD;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->b:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->c:Lw2/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->d:Lw2/g;

    .line 5
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->e:Z

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->c:Lw2/o;

    invoke-interface {v1, v0}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The sourceSupplier returned a null Publisher"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->d:Lw2/g;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->e:Z

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;-><init>(Ll3/c;Ljava/lang/Object;Lw2/g;Z)V

    .line 4
    invoke-interface {v1, v2}, Ll3/b;->c(Ll3/c;)V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    :try_start_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing;->d:Lw2/g;

    invoke-interface {v2, v0}, Lw2/g;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-static {v1, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ll3/c;)V

    return-void

    :catchall_1
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ll3/c;)V

    return-void

    :catchall_2
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ll3/c;)V

    return-void
.end method

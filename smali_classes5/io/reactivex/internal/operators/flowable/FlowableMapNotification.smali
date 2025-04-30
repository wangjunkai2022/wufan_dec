.class public final Lio/reactivex/internal/operators/flowable/FlowableMapNotification;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field final d:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+TR;>;",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Ljava/util/concurrent/Callable<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->c:Lw2/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->d:Lw2/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->c:Lw2/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->d:Lw2/o;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;-><init>(Ll3/c;Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method

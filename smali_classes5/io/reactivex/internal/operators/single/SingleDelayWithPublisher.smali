.class public final Lio/reactivex/internal/operators/single/SingleDelayWithPublisher;
.super Lio/reactivex/i0;
.source "SingleDelayWithPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleDelayWithPublisher$OtherSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Ll3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Ll3/b<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelayWithPublisher;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelayWithPublisher;->b:Ll3/b;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithPublisher;->b:Ll3/b;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleDelayWithPublisher$OtherSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleDelayWithPublisher;->a:Lio/reactivex/o0;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleDelayWithPublisher$OtherSubscriber;-><init>(Lio/reactivex/l0;Lio/reactivex/o0;)V

    invoke-interface {v0, v1}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method

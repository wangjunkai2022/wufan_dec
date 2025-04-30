.class final Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;
.super Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;
.source "FlowableMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaterializeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<",
        "TT;",
        "Lio/reactivex/y<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33ea157c2cf0a1deL


# direct methods
.method constructor <init>(Ll3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;-><init>(Ll3/c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/reactivex/y;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;->c(Lio/reactivex/y;)V

    return-void
.end method

.method protected c(Lio/reactivex/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/y<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/reactivex/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/reactivex/y;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/y;->a()Lio/reactivex/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/reactivex/y;->b(Ljava/lang/Throwable;)Lio/reactivex/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->d:J

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->a:Ll3/c;

    invoke-static {p1}, Lio/reactivex/y;->c(Ljava/lang/Object;)Lio/reactivex/y;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

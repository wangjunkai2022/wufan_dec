.class final Lio/reactivex/internal/operators/flowable/l1$a;
.super Ljava/lang/Object;
.source "FlowableZipIterable.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TV;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field

.field d:Ll3/d;

.field e:Z


# direct methods
.method constructor <init>(Ll3/c;Ljava/util/Iterator;Lw2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TV;>;",
            "Ljava/util/Iterator<",
            "TU;>;",
            "Lw2/c<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/l1$a;->a:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/l1$a;->b:Ljava/util/Iterator;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/l1$a;->c:Lw2/c;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->d:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->d:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->e:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The iterator returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/l1$a;->c:Lw2/c;

    invoke-interface {v1, p1, v0}, Lw2/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The zipper function returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    .line 5
    :try_start_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/l1$a;->b:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/l1$a;->e:Z

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/l1$a;->d:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/l1$a;->a:Ll3/c;

    invoke-interface {p1}, Ll3/c;->onComplete()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/l1$a;->a(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 10
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/l1$a;->a(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    .line 11
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/l1$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->d:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/l1$a;->d:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/l1$a;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l1$a;->d:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method

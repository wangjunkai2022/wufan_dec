.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/observables/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Lio/reactivex/h0;


# direct methods
.method constructor <init>(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->a:Lio/reactivex/z;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->d:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/observables/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->a:Lio/reactivex/z;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->d:Lio/reactivex/h0;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/z;->H4(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/observables/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$n;->call()Lio/reactivex/observables/a;

    move-result-object v0

    return-object v0
.end method

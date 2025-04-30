.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$c;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lw2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/o<",
        "TT;",
        "Lio/reactivex/e0<",
        "TU;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$c;->a:Lw2/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/e0<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/m0;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$c;->a:Lw2/o;

    invoke-interface {v1, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The mapper returned a null Iterable"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/m0;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$c;->a(Ljava/lang/Object;)Lio/reactivex/e0;

    move-result-object p1

    return-object p1
.end method

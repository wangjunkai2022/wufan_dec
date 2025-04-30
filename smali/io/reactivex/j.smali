.class public abstract Lio/reactivex/j;
.super Ljava/lang/Object;
.source "Flowable.java"

# interfaces
.implements Ll3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll3/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/reactivex/j;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A0(Ll3/b;Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/j;->C0([Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static A3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The third item is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fourth item is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fifth item is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The sixth item is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The seventh item is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The eighth item is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The ninth is null"

    .line 9
    invoke-static {p8, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    .line 10
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static A6(Ll3/b;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->s6(Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static A8(Ll3/b;Ll3/b;Lw2/c;Z)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Lw2/c<",
            "-TT1;-TT2;+TR;>;Z)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->x(Lw2/c;)Lw2/o;

    move-result-object p2

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static B0(Ll3/b;Ll3/b;Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/j;->C0([Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static B3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The third item is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fourth item is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fifth item is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The sixth item is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The seventh item is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The eighth item is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The ninth item is null"

    .line 9
    invoke-static {p8, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The tenth item is null"

    .line 10
    invoke-static {p9, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    const/16 p0, 0x9

    aput-object p9, v0, p0

    .line 11
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static B5(Ll3/b;Ll3/b;)Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/a;->d()Lw2/d;

    move-result-object v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/j;->E5(Ll3/b;Ll3/b;Lw2/d;I)Lio/reactivex/i0;

    move-result-object p0

    return-object p0
.end method

.method public static B8(Ll3/b;Ll3/b;Lw2/c;ZI)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Lw2/c<",
            "-TT1;-TT2;+TR;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->x(Lw2/c;)Lw2/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs C0([Ll3/b;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    aget-object p0, p0, v2

    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray;

    invoke-direct {v0, p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableConcatArray;-><init>([Ll3/b;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static C5(Ll3/b;Ll3/b;I)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;I)",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/a;->d()Lw2/d;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lio/reactivex/j;->E5(Ll3/b;Ll3/b;Lw2/d;I)Lio/reactivex/i0;

    move-result-object p0

    return-object p0
.end method

.method public static C8(Ll3/b;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/j;->z7()Lio/reactivex/i0;

    move-result-object p0

    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->n(Lw2/o;)Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/i0;->c0(Lw2/o;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D0([Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray;

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatArray;-><init>([Ll3/b;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static D5(Ll3/b;Ll3/b;Lw2/d;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Lw2/d<",
            "-TT;-TT;>;)",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/j;->E5(Ll3/b;Ll3/b;Lw2/d;I)Lio/reactivex/i0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    array-length v0, p3

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 3
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableZip;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableZip;-><init>([Ll3/b;Ljava/lang/Iterable;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs E0(II[Ll3/b;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableFromArray;

    invoke-direct {v2, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray;-><init>([Ljava/lang/Object;)V

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v0

    move v4, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;-><init>(Lio/reactivex/j;Lw2/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static E5(Ll3/b;Ll3/b;Lw2/d;I)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Lw2/d<",
            "-TT;-TT;>;I)",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;-><init>(Ll3/b;Ll3/b;Lw2/d;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p0

    return-object p0
.end method

.method public static E8(Ljava/lang/Iterable;Lw2/o;ZI)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableZip;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableZip;-><init>([Ll3/b;Ljava/lang/Iterable;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs F0([Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-static {v0, v1, p0}, Lio/reactivex/j;->E0(II[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs G0(II[Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p2}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, p1, v1}, Lio/reactivex/j;->a1(Lw2/o;IIZ)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs H0([Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-static {v0, v1, p0}, Lio/reactivex/j;->G0(II[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->W0(Lw2/o;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/j;->K0(Ll3/b;IZ)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static J3(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->o2(Lw2/o;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static K0(Ll3/b;IZ)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;IZ)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/reactivex/j;->X0(Lw2/o;IZ)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static K3(Ljava/lang/Iterable;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->p2(Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static K4(II)Lio/reactivex/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/j;->s3(Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRange;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRange;-><init>(II)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L0(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/j;->M0(Ljava/lang/Iterable;II)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static L3(Ljava/lang/Iterable;II)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;II)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static L4(JJ)Lio/reactivex/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/j;->s3(Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long v2, p2, v2

    add-long/2addr v2, p0

    cmp-long v4, p0, v0

    if-lez v4, :cond_3

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_3
    :goto_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong;-><init>(JJ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 5
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count >= 0 required but it was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static M0(Ljava/lang/Iterable;II)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;II)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableFromIterable;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;-><init>(Lio/reactivex/j;Lw2/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static M3(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/j;->N3(Ll3/b;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/j;->O0(Ll3/b;II)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static N3(Ll3/b;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->p2(Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static O0(Ll3/b;II)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;II)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/m;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/m;-><init>(Ll3/b;Lw2/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs O2([Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "items is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/j;->s3(Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFromArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static O3(Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3
    invoke-static {v1}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static O7(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/j;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/i0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/i0;-><init>(Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Flowable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static P2(Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/f0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/f0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static P3(Ll3/b;Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 4
    invoke-static {v1}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static Q2(Ljava/util/concurrent/Future;)Lio/reactivex/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/g0;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/g0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static Q3(Ll3/b;Ll3/b;Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    .line 5
    invoke-static {v1}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static Q7(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lw2/o<",
            "-TD;+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/g<",
            "-TD;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lio/reactivex/j;->R7(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;Z)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static R2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/g0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/g0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs R3(II[Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p2}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static R7(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;Z)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lw2/o<",
            "-TD;+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/g<",
            "-TD;>;Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableUsing;-><init>(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static S2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/j;->R2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;

    move-result-object p0

    invoke-virtual {p0, p4}, Lio/reactivex/j;->i6(Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs S3([Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, Lio/reactivex/j;->p2(Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static T2(Ljava/util/concurrent/Future;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/j;->Q2(Ljava/util/concurrent/Future;)Lio/reactivex/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/j;->i6(Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs T3(II[Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p2}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static U2(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs U3([Ll3/b;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v1

    array-length p0, p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static V()I
    .locals 1

    .line 1
    sget v0, Lio/reactivex/j;->a:I

    return v0
.end method

.method public static V2(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/reactivex/j;

    invoke-static {p0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "publisher is null"

    .line 3
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/i0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/i0;-><init>(Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static V3(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/j;->x2(Lw2/o;Z)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static W2(Ljava/util/concurrent/Callable;Lw2/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lw2/b<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "generator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->i(Lw2/b;)Lw2/c;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    .line 4
    invoke-static {p0, p1, v0}, Lio/reactivex/j;->Z2(Ljava/util/concurrent/Callable;Lw2/c;Lw2/g;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static W3(Ljava/lang/Iterable;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method private X1(Lw2/g;Lw2/g;Lw2/a;Lw2/a;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/flowable/x;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/x;-><init>(Lio/reactivex/j;Lw2/g;Lw2/g;Lw2/a;Lw2/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public static X2(Ljava/util/concurrent/Callable;Lw2/b;Lw2/g;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lw2/b<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;>;",
            "Lw2/g<",
            "-TS;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "generator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->i(Lw2/b;)Lw2/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/reactivex/j;->Z2(Ljava/util/concurrent/Callable;Lw2/c;Lw2/g;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static X3(Ljava/lang/Iterable;II)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;II)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static Y2(Ljava/util/concurrent/Callable;Lw2/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lw2/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/j;->Z2(Ljava/util/concurrent/Callable;Lw2/c;Lw2/g;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static Y3(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/j;->Z3(Ll3/b;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static Z2(Ljava/util/concurrent/Callable;Lw2/c;Lw2/g;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lw2/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;",
            "Lw2/g<",
            "-TS;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "initialState is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableGenerate;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableGenerate;-><init>(Ljava/util/concurrent/Callable;Lw2/c;Lw2/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static Z3(Ll3/b;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static a3(Lw2/g;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/g<",
            "Lio/reactivex/i<",
            "TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "generator is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->u()Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->j(Lw2/g;)Lw2/c;

    move-result-object p0

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    .line 5
    invoke-static {v0, p0, v1}, Lio/reactivex/j;->Z2(Ljava/util/concurrent/Callable;Lw2/c;Lw2/g;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static a4(Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3
    invoke-static {v1}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Ljava/lang/Iterable;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/j;->c0(Ljava/lang/Iterable;Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static b4(Ll3/b;Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 4
    invoke-static {v1}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Ljava/lang/Iterable;Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;-><init>(Ljava/lang/Iterable;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static c4(Ll3/b;Ll3/b;Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    .line 5
    invoke-static {v1}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/j;->y2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableAmb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/flowable/FlowableAmb;-><init>([Ll3/b;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/n;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Ll3/b<",
            "+TT6;>;",
            "Ll3/b<",
            "+TT7;>;",
            "Ll3/b<",
            "+TT8;>;",
            "Ll3/b<",
            "+TT9;>;",
            "Lw2/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 9
    invoke-static {p8, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {p9}, Lio/reactivex/internal/functions/Functions;->E(Lw2/n;)Lw2/o;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    invoke-static {p9, v0}, Lio/reactivex/j;->l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e([Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableAmb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableAmb;-><init>([Ll3/b;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/m;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Ll3/b<",
            "+TT6;>;",
            "Ll3/b<",
            "+TT7;>;",
            "Ll3/b<",
            "+TT8;>;",
            "Lw2/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p8}, Lio/reactivex/internal/functions/Functions;->D(Lw2/m;)Lw2/o;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    invoke-static {p8, v0}, Lio/reactivex/j;->l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/l;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Ll3/b<",
            "+TT6;>;",
            "Ll3/b<",
            "+TT7;>;",
            "Lw2/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p7}, Lio/reactivex/internal/functions/Functions;->C(Lw2/l;)Lw2/o;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    invoke-static {p7, v0}, Lio/reactivex/j;->l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/k;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Ll3/b<",
            "+TT6;>;",
            "Lw2/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p6}, Lio/reactivex/internal/functions/Functions;->B(Lw2/k;)Lw2/o;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6, v0}, Lio/reactivex/j;->l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/j;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Lw2/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p5}, Lio/reactivex/internal/functions/Functions;->A(Lw2/j;)Lw2/o;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {p5, v0}, Lio/reactivex/j;->l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static h2()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/flowable/b0;->b:Lio/reactivex/j;

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public static h4()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/flowable/s0;->b:Lio/reactivex/j;

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public static i0(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/i;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Lw2/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Lio/reactivex/internal/functions/Functions;->z(Lw2/i;)Lw2/o;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, Lio/reactivex/j;->l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static i2(Ljava/lang/Throwable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "throwable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/internal/functions/Functions;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/j;->j2(Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Ll3/b;Ll3/b;Ll3/b;Lw2/h;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Lw2/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lio/reactivex/internal/functions/Functions;->y(Lw2/h;)Lw2/o;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Lio/reactivex/j;->l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static j2(Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/c0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/c0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ll3/b;Ll3/b;Lw2/c;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Lw2/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->x(Lw2/c;)Lw2/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 4
    invoke-static {p2, v0}, Lio/reactivex/j;->l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static k3(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/reactivex/j;->l3(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs l0(Lw2/o;[Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p1, p0, v0}, Lio/reactivex/j;->n0([Ll3/b;Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static l3(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInterval;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableInterval;-><init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static m0([Ll3/b;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/j;->n0([Ll3/b;Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static m3(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lio/reactivex/j;->l3(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static n0([Ll3/b;Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    .line 4
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;-><init>([Ll3/b;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static n3(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-static/range {v0 .. v5}, Lio/reactivex/j;->l3(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/lang/Iterable;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/j;->p0(Ljava/lang/Iterable;Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static o3(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v9

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lio/reactivex/j;->p3(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public static p0(Ljava/lang/Iterable;Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;-><init>(Ljava/lang/Iterable;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static p3(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, Lio/reactivex/j;->B1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    add-long v6, p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "unit is null"

    .line 3
    invoke-static {v9, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 4
    invoke-static {v10, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v11, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object v0, v11

    move-wide/from16 v1, p0

    move-wide v3, v6

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;-><init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v11}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0

    .line 6
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private p7(JLjava/util/concurrent/TimeUnit;Ll3/b;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ll3/b<",
            "+TT;>;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeUnit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public static varargs q0(Lw2/o;I[Ll3/b;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p2, p0, p1}, Lio/reactivex/j;->t0([Ll3/b;Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method private q7(Ll3/b;Lw2/o;Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TV;>;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableTimeout;-><init>(Lio/reactivex/j;Ll3/b;Lw2/o;Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public static varargs r0(Lw2/o;[Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p1, p0, v0}, Lio/reactivex/j;->t0([Ll3/b;Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static r7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/j;->s7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static r8(Ljava/lang/Iterable;Lw2/o;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableZip;

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableZip;-><init>([Ll3/b;Ljava/lang/Iterable;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static s0([Ll3/b;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/j;->t0([Ll3/b;Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static s3(Ljava/lang/Object;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/m0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/m0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static s7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimer;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableTimer;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static s8(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/n;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Ll3/b<",
            "+TT6;>;",
            "Ll3/b<",
            "+TT7;>;",
            "Ll3/b<",
            "+TT8;>;",
            "Ll3/b<",
            "+TT9;>;",
            "Lw2/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 9
    invoke-static {p8, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {p9}, Lio/reactivex/internal/functions/Functions;->E(Lw2/n;)Lw2/o;

    move-result-object p9

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v2, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static t0([Ll3/b;Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    array-length v0, p0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;-><init>([Ll3/b;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static t3(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static t8(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/m;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Ll3/b<",
            "+TT6;>;",
            "Ll3/b<",
            "+TT7;>;",
            "Ll3/b<",
            "+TT8;>;",
            "Lw2/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p8}, Lio/reactivex/internal/functions/Functions;->D(Lw2/m;)Lw2/o;

    move-result-object p8

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v2, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static u1(Lio/reactivex/m;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/m<",
            "TT;>;",
            "Lio/reactivex/BackpressureStrategy;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mode is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate;-><init>(Lio/reactivex/m;Lio/reactivex/BackpressureStrategy;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static u3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The third item is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static u8(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/l;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Ll3/b<",
            "+TT6;>;",
            "Ll3/b<",
            "+TT7;>;",
            "Lw2/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p7}, Lio/reactivex/internal/functions/Functions;->C(Lw2/l;)Lw2/o;

    move-result-object p7

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v2, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static v3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The third item is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fourth item is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static v8(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/k;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Ll3/b<",
            "+TT6;>;",
            "Lw2/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p6}, Lio/reactivex/internal/functions/Functions;->B(Lw2/k;)Lw2/o;

    move-result-object p6

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v2, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static w0(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/j;->X0(Lw2/o;IZ)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static w3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The third item is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fourth item is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fifth item is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    .line 6
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static w8(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/j;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Ll3/b<",
            "+TT5;>;",
            "Lw2/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p5}, Lio/reactivex/internal/functions/Functions;->A(Lw2/j;)Lw2/o;

    move-result-object p5

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v2, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/j;->y0(Ll3/b;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static x3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The third item is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fourth item is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fifth item is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The sixth item is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    .line 7
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static x6(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->m6(Lw2/o;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static x8(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/i;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Ll3/b<",
            "+TT4;>;",
            "Lw2/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Lio/reactivex/internal/functions/Functions;->z(Lw2/i;)Lw2/o;

    move-result-object p4

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static y0(Ll3/b;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->Q0(Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static y3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The third item is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fourth item is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fifth item is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The sixth item is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The seventh item is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    .line 8
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static y6(Ll3/b;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->n6(Lw2/o;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static y8(Ll3/b;Ll3/b;Ll3/b;Lw2/h;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Ll3/b<",
            "+TT3;>;",
            "Lw2/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lio/reactivex/internal/functions/Functions;->y(Lw2/h;)Lw2/o;

    move-result-object p3

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Ll3/b;Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/j;->C0([Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static z1(Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/p;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/p;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static z3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "The first item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The second item is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The third item is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fourth item is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The fifth item is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The sixth item is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The seventh item is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The eighth item is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    .line 9
    invoke-static {v0}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static z6(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/j;->A6(Ll3/b;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static z8(Ll3/b;Ll3/b;Lw2/c;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TT1;>;",
            "Ll3/b<",
            "+TT2;>;",
            "Lw2/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->x(Lw2/c;)Lw2/o;

    move-result-object p2

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ll3/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, Lio/reactivex/j;->D8(Lw2/o;ZI[Ll3/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Lw2/g;Lw2/g;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/h;->c(Ll3/b;Lw2/g;Lw2/g;Lw2/a;)V

    return-void
.end method

.method public final A1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->C1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final A2(Lw2/o;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->B2(Lw2/o;ZI)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final A4(Ljava/lang/Object;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->n(Ljava/lang/Object;)Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->z4(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final A5(Ljava/util/concurrent/Callable;Lw2/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lw2/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed;-><init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final A7(I)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/i0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/i1;

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/i1;-><init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final B(Lw2/g;Lw2/g;Lw2/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/internal/operators/flowable/h;->d(Ll3/b;Lw2/g;Lw2/g;Lw2/a;I)V

    return-void
.end method

.method public final B1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->C1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final B2(Lw2/o;ZI)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;ZI)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable;-><init>(Lio/reactivex/j;Lw2/o;ZI)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final B4(Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->n(Ljava/lang/Object;)Lw2/o;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;-><init>(Lio/reactivex/j;Lw2/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final B6(J)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTake;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableTake;-><init>(Lio/reactivex/j;J)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final B7(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/i0<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "collectionSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/i1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/i1;-><init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final C(I)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lio/reactivex/j;->D(II)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final C1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/q;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/q;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final C2(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->D2(Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final C3(Ljava/lang/Object;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "defaultItem"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/o0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/o0;-><init>(Ll3/b;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final C4()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/t;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/t;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final C6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lio/reactivex/j;->r7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->N6(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final C7(Lw2/o;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/i0<",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->F(Lw2/o;)Lw2/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->Z(Ljava/util/concurrent/Callable;Lw2/b;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final D(II)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->E(IILjava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final D1(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->C1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final D2(Lw2/o;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;-><init>(Lio/reactivex/j;Lw2/o;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final D3()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/n0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/n0;-><init>(Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final D4()Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/parallel/a;->y(Ll3/b;)Lio/reactivex/parallel/a;

    move-result-object v0

    return-object v0
.end method

.method public final D6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/j;->s7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->N6(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final D7(Lw2/o;Lw2/o;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/i0<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, Lio/reactivex/internal/functions/Functions;->G(Lw2/o;Lw2/o;)Lw2/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->Z(Ljava/util/concurrent/Callable;Lw2/b;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final E(IILjava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "count"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "skip"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableBuffer;-><init>(Lio/reactivex/j;IILjava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final E1(Ll3/b;Lw2/o;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TV;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/j;->I1(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/j;->F1(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final E2(Lw2/o;Lw2/c;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "Lw2/c<",
            "-TT;-TU;+TV;>;)",
            "Lio/reactivex/j<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->a(Lw2/o;)Lw2/o;

    move-result-object v2

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/j;->u2(Lw2/o;Lw2/c;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final E3()Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/flowable/o0;-><init>(Ll3/b;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

.method public final E4(I)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "parallelism"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/parallel/a;->z(Ll3/b;I)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final E6(I)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lio/reactivex/internal/operators/flowable/k0;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/k0;-><init>(Lio/reactivex/j;)V

    invoke-static {p1}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne;-><init>(Lio/reactivex/j;)V

    invoke-static {p1}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTakeLast;-><init>(Lio/reactivex/j;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final E7(Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Lio/reactivex/i0<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lio/reactivex/internal/functions/Functions;->G(Lw2/o;Lw2/o;)Lw2/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/reactivex/j;->Z(Ljava/util/concurrent/Callable;Lw2/b;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final F(ILjava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1, p2}, Lio/reactivex/j;->E(IILjava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final F1(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TU;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "itemDelayIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->c(Lw2/o;)Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->o2(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final F2(Lw2/o;Lw2/c;I)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "Lw2/c<",
            "-TT;-TU;+TV;>;I)",
            "Lio/reactivex/j<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->a(Lw2/o;)Lw2/o;

    move-result-object v2

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/j;->u2(Lw2/o;Lw2/c;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final F3(Lio/reactivex/n;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/n<",
            "+TR;-TT;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "lifter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/p0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/p0;-><init>(Lio/reactivex/j;Lio/reactivex/n;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final F4(II)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "parallelism"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    invoke-static {p0, p1, p2}, Lio/reactivex/parallel/a;->A(Ll3/b;II)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final F5()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/y0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/y0;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final F6(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v6

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/j;->H6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final F7(Lw2/o;)Lio/reactivex/i0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/i0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lw2/o;

    move-result-object v2

    .line 4
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/j;->I7(Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final F8(Ljava/lang/Iterable;Lw2/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/l1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/l1;-><init>(Lio/reactivex/j;Ljava/lang/Iterable;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final G(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v6

    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->I(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final G1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->H1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final G2(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->H2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final G3(J)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableLimit;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableLimit;-><init>(Lio/reactivex/j;J)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G4(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->H4(Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final G5()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/j;->I4()Lio/reactivex/flowables/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/flowables/a;->O8()Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final G6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/j;->H6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final G7(Lw2/o;Lw2/o;)Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/i0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lw2/o;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/j;->I7(Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final G8(Ll3/b;Lw2/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TU;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/j;->z8(Ll3/b;Ll3/b;Lw2/c;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final H(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->I(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final H1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/j;->s7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->I1(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final H2(Lw2/o;ZI)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;-><init>(Lio/reactivex/j;Lw2/o;ZI)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final H3(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/q0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/q0;-><init>(Lio/reactivex/j;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final H4(Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "+TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;-><init>(Lio/reactivex/j;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final H5(Ljava/lang/Object;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/a1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/a1;-><init>(Lio/reactivex/j;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final H6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "ZI)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    move-wide v2, p1

    const-string v0, "unit is null"

    move-object/from16 v6, p5

    .line 1
    invoke-static {v6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v7, p6

    .line 2
    invoke-static {v7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    move/from16 v8, p8

    .line 3
    invoke-static {v8, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 4
    new-instance v10, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastTimed;-><init>(Lio/reactivex/j;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V

    invoke-static {v10}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H7(Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)",
            "Lio/reactivex/i0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->I7(Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final H8(Ll3/b;Lw2/c;Z)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TU;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;Z)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/j;->A8(Ll3/b;Ll3/b;Lw2/c;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final I(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 1
    invoke-static {v7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 2
    invoke-static {v8, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p7

    .line 3
    invoke-static {v9, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/k;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, Lio/reactivex/internal/operators/flowable/k;-><init>(Lio/reactivex/j;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final I1(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/r;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/r;-><init>(Ll3/b;Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final I2(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->J2(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final I3()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "Lio/reactivex/y<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableMaterialize;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableMaterialize;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final I4()Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->J4(I)Lio/reactivex/flowables/a;

    move-result-object v0

    return-object v0
.end method

.method public final I5()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/z0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/z0;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final I6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->L6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final I7(Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "Lw2/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "Lio/reactivex/i0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionFactory is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, p2, p4}, Lio/reactivex/internal/functions/Functions;->H(Lw2/o;Lw2/o;Lw2/o;)Lw2/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/reactivex/j;->Z(Ljava/util/concurrent/Callable;Lw2/b;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final I8(Ll3/b;Lw2/c;ZI)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TU;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/j;->B8(Ll3/b;Ll3/b;Lw2/c;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->M(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final J1()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/j<",
            "TT2;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/s;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/s;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final J2(Lw2/o;ZI)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle;-><init>(Lio/reactivex/j;Lw2/o;ZI)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final J4(I)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublish;->U8(Lio/reactivex/j;I)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1
.end method

.method public final J5()Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/a1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/flowable/a1;-><init>(Lio/reactivex/j;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

.method public final J6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->L6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final J7()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/n0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n0;-><init>(Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;I)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->M(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final K1()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->g()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/j;->M1(Lw2/o;Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final K2(Lw2/g;)Lio/reactivex/disposables/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/j;->c6(Lw2/g;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public final K5(J)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/b1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/b1;-><init>(Lio/reactivex/j;J)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final K6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->L6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final K7()Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/i0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->p()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->M7(Ljava/util/Comparator;)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

.method public final L(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v6

    const v5, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->N(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ILjava/util/concurrent/Callable;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final L1(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;TK;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->g()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->M1(Lw2/o;Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final L2(Lw2/r;)Lio/reactivex/disposables/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->f:Lw2/g;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->N2(Lw2/r;Lw2/g;Lw2/a;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public final L5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lio/reactivex/j;->r7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->T5(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final L6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "ZI)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-wide v1, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 1
    invoke-virtual/range {v0 .. v8}, Lio/reactivex/j;->H6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final L7(I)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/i0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->p()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->N7(Ljava/util/Comparator;I)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final M(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->N(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ILjava/util/concurrent/Callable;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final M1(Lw2/o;Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;TK;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/u;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/u;-><init>(Lio/reactivex/j;Lw2/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final M2(Lw2/r;Lw2/g;)Lio/reactivex/disposables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->N2(Lw2/r;Lw2/g;Lw2/a;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public final M4(I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/schedulers/c;->b:Lio/reactivex/h0;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/j;->k4(Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final M5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/j;->s7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->T5(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final M6(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->L6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final M7(Ljava/util/Comparator;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/i0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/j;->z7()Lio/reactivex/i0;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->o(Ljava/util/Comparator;)Lw2/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/i0;->q0(Lw2/o;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final N(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ILjava/util/concurrent/Callable;Z)Lio/reactivex/j;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;Z)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    move-object v7, p3

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 2
    invoke-static {v8, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p6

    .line 3
    invoke-static {v9, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move/from16 v10, p5

    .line 4
    invoke-static {v10, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/flowable/k;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lio/reactivex/internal/operators/flowable/k;-><init>(Lio/reactivex/j;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final N1()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->P1(Lw2/o;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final N2(Lw2/r;Lw2/g;Lw2/a;)Lio/reactivex/disposables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            ")",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;-><init>(Lw2/r;Lw2/g;Lw2/a;)V

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-object v0
.end method

.method public final N4(Lw2/c;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "reducer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/t0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/t0;-><init>(Lio/reactivex/j;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final N5(I)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableSkipLast;-><init>(Lio/reactivex/j;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final N6(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil;-><init>(Lio/reactivex/j;Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final N7(Ljava/util/Comparator;I)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/i0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lio/reactivex/j;->A7(I)Lio/reactivex/i0;

    move-result-object p2

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->o(Ljava/util/Comparator;)Lw2/o;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/i0;->q0(Lw2/o;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lio/reactivex/j;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "+TTOpening;>;",
            "Lw2/o<",
            "-TTOpening;+",
            "Ll3/b<",
            "+TTClosing;>;>;)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->P(Lio/reactivex/j;Lw2/o;Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final O1(Lw2/d;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/d<",
            "-TT;-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "comparer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/v;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/flowable/v;-><init>(Lio/reactivex/j;Lw2/o;Lw2/d;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final O4(Ljava/lang/Object;Lw2/c;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lw2/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/i0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "seed is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/u0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/u0;-><init>(Ll3/b;Ljava/lang/Object;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final O5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->R5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final O6(Lw2/r;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "stopPredicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/f1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/f1;-><init>(Lio/reactivex/j;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final P(Lio/reactivex/j;Lw2/o;Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lio/reactivex/j<",
            "+TTOpening;>;",
            "Lw2/o<",
            "-TTOpening;+",
            "Ll3/b<",
            "+TTClosing;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "openingIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;-><init>(Lio/reactivex/j;Ll3/b;Lw2/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final P0(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->Q0(Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final P1(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;TK;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/v;

    invoke-static {}, Lio/reactivex/internal/functions/a;->d()Lw2/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/flowable/v;-><init>(Lio/reactivex/j;Lw2/o;Lw2/d;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final P4(Ljava/util/concurrent/Callable;Lw2/c;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lw2/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/i0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/v0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/v0;-><init>(Ll3/b;Ljava/util/concurrent/Callable;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final P5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->R5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final P6(Lw2/r;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/g1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/g1;-><init>(Lio/reactivex/j;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final P7(Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;-><init>(Lio/reactivex/j;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "TB;>;>;)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->R(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Lx2/m;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Lx2/m;

    invoke-interface {p2}, Lx2/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/flowable/w0;->a(Ljava/lang/Object;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;-><init>(Lio/reactivex/j;Lw2/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Q1(Lw2/g;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/w;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/w;-><init>(Lio/reactivex/j;Lw2/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Q4()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/reactivex/j;->R4(J)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final Q5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->R5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Q6()Lio/reactivex/subscribers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subscribers/TestSubscriber;

    invoke-direct {v0}, Lio/reactivex/subscribers/TestSubscriber;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-object v0
.end method

.method public final R(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "boundaryIndicatorSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/i;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/i;-><init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final R0(Lw2/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->S0(Lw2/o;I)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final R1(Lw2/a;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-direct {p0, v0, v1, v2, p1}, Lio/reactivex/j;->X1(Lw2/g;Lw2/g;Lw2/a;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final R4(J)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRepeat;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRepeat;-><init>(Lio/reactivex/j;J)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final R5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "ZI)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    shl-int/lit8 v7, p6, 0x1

    .line 4
    new-instance p6, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V

    invoke-static {p6}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final R6(J)Lio/reactivex/subscribers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subscribers/TestSubscriber;

    invoke-direct {v0, p1, p2}, Lio/reactivex/subscribers/TestSubscriber;-><init>(J)V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-object v0
.end method

.method public final S(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TB;>;)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->U(Ll3/b;Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final S0(Lw2/o;I)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;-><init>(Lio/reactivex/j;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final S1(Lw2/a;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDoFinally;-><init>(Lio/reactivex/j;Lw2/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final S4(Lw2/e;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/e;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;-><init>(Lio/reactivex/j;Lw2/e;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final S5(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->R5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final S6(JZ)Lio/reactivex/subscribers/TestSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lio/reactivex/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subscribers/TestSubscriber;

    invoke-direct {v0, p1, p2}, Lio/reactivex/subscribers/TestSubscriber;-><init>(J)V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/subscribers/TestSubscriber;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-object v0
.end method

.method public final S7(J)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->U7(JJI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final T(Ll3/b;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TB;>;I)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "initialCapacity"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/j;->U(Ll3/b;Ljava/util/concurrent/Callable;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final T0(Lw2/o;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->V0(Lw2/o;ZI)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final T1(Lw2/a;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->g:Lw2/q;

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/j;->Z1(Lw2/g;Lw2/q;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final T4(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Object;",
            ">;+",
            "Ll3/b<",
            "*>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen;-><init>(Lio/reactivex/j;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final T5(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil;-><init>(Lio/reactivex/j;Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final T6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->U6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final T7(JJ)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->U7(JJI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final U(Ll3/b;Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ll3/b<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "boundaryIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/j;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/j;-><init>(Lio/reactivex/j;Ll3/b;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final U0(Lw2/o;Z)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;Z)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->V0(Lw2/o;ZI)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final U1(Lw2/a;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/j;->X1(Lw2/g;Lw2/g;Lw2/a;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final U4(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->d(Lio/reactivex/j;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->Z8(Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final U5(Lw2/r;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/c1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/c1;-><init>(Lio/reactivex/j;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final U6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final U7(JJI)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "skip"

    .line 1
    invoke-static {p3, p4, v0}, Lio/reactivex/internal/functions/a;->i(JLjava/lang/String;)J

    const-string v0, "count"

    .line 2
    invoke-static {p1, p2, v0}, Lio/reactivex/internal/functions/a;->i(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWindow;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableWindow;-><init>(Lio/reactivex/j;JJI)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final V0(Lw2/o;ZI)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;ZI)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;-><init>(Lio/reactivex/j;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final V1(Ll3/c;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "subscriber is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->m(Ll3/c;)Lw2/g;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->l(Ll3/c;)Lw2/g;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->k(Ll3/c;)Lw2/a;

    move-result-object p1

    sget-object v2, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    .line 5
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/j;->X1(Lw2/g;Lw2/g;Lw2/a;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final V4(Lw2/o;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    invoke-static {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->e(Lio/reactivex/j;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->Z8(Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final V5()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/j;->z7()Lio/reactivex/i0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/i0;->p1()Lio/reactivex/j;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->p()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/internal/functions/Functions;->o(Ljava/util/Comparator;)Lw2/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j;->H3(Lw2/o;)Lio/reactivex/j;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j;->C2(Lw2/o;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final V6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/j;->s5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final V7(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v6

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->X7(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final W()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lio/reactivex/j;->X(I)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final W0(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->X0(Lw2/o;IZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final W1(Lw2/g;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "consumer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->t(Lw2/g;)Lw2/g;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->s(Lw2/g;)Lw2/g;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->r(Lw2/g;)Lw2/a;

    move-result-object p1

    sget-object v2, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    .line 5
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/j;->X1(Lw2/g;Lw2/g;Lw2/a;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final W4(Lw2/o;IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/j;->X4(Lw2/o;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final W5(Ljava/util/Comparator;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sortFunction"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/j;->z7()Lio/reactivex/i0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/i0;->p1()Lio/reactivex/j;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->o(Ljava/util/Comparator;)Lw2/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/j;->H3(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j;->C2(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final W6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/j;->t5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final W7(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->X7(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final X(I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "initialCapacity"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCache;-><init>(Lio/reactivex/j;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final X0(Lw2/o;IZ)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;IZ)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Lx2/m;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Lx2/m;

    invoke-interface {p2}, Lx2/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/flowable/w0;->a(Ljava/lang/Object;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;

    if-eqz p3, :cond_2

    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_2
    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;-><init>(Lio/reactivex/j;Lw2/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final X4(Lw2/o;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    .line 4
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 5
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->f(Lio/reactivex/j;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Ljava/util/concurrent/Callable;

    move-result-object p2

    .line 6
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->Z8(Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final X5(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    .line 1
    invoke-static {p1}, Lio/reactivex/j;->U2(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/j;->C0([Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final X6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->Z6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final X7(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/j;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p7

    .line 1
    invoke-static {v11, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "timespan"

    move-wide v3, p1

    .line 2
    invoke-static {p1, p2, v0}, Lio/reactivex/internal/functions/a;->i(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    .line 3
    invoke-static {v5, v6, v0}, Lio/reactivex/internal/functions/a;->i(JLjava/lang/String;)J

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 4
    invoke-static {v8, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 5
    invoke-static {v7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/flowable/k1;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lio/reactivex/internal/operators/flowable/k1;-><init>(Lio/reactivex/j;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JIZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final Y(Ljava/lang/Class;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->e(Ljava/lang/Class;)Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->H3(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->Z0(Lw2/o;II)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(Lw2/g;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-direct {p0, v0, p1, v1, v1}, Lio/reactivex/j;->X1(Lw2/g;Lw2/g;Lw2/a;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Y4(Lw2/o;ILio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;I",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    invoke-static {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->e(Lio/reactivex/j;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    .line 5
    invoke-static {p1, p3}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->h(Lw2/o;Lio/reactivex/h0;)Lw2/o;

    move-result-object p1

    .line 6
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->Z8(Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Y5(Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    .line 2
    invoke-static {p1}, Lio/reactivex/j;->s3(Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/j;->C0([Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Y6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->Z6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Y7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->d8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Ljava/util/concurrent/Callable;Lw2/b;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lw2/b<",
            "-TU;-TT;>;)",
            "Lio/reactivex/i0<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "initialItemSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/l;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/l;-><init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;Lw2/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(Lw2/o;II)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;II)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;

    sget-object v6, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;-><init>(Lio/reactivex/j;Lw2/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Z1(Lw2/g;Lw2/q;Lw2/a;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Ll3/d;",
            ">;",
            "Lw2/q;",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onRequest is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCancel is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/y;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/y;-><init>(Lio/reactivex/j;Lw2/g;Lw2/q;Lw2/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Z4(Lw2/o;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->a5(Lw2/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Z5(Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2
    invoke-static {v0}, Lio/reactivex/j;->C0([Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Z6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final Z7(JLjava/util/concurrent/TimeUnit;J)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->d8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lw2/r;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;)",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/e;-><init>(Lio/reactivex/j;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final a0(Ljava/lang/Object;Lw2/b;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lw2/b<",
            "-TU;-TT;>;)",
            "Lio/reactivex/i0<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "initialItem is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/j;->Z(Ljava/util/concurrent/Callable;Lw2/b;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final a1(Lw2/o;IIZ)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;IIZ)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;

    if-eqz p4, :cond_0

    sget-object p4, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p4, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    move-object v6, p4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager;-><init>(Lio/reactivex/j;Lw2/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final a2(Lw2/g;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-direct {p0, p1, v0, v1, v1}, Lio/reactivex/j;->X1(Lw2/g;Lw2/g;Lw2/a;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final a5(Lw2/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->g(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->Z8(Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a6([Ljava/lang/Object;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/j;->O2([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {p0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 4
    invoke-static {v0}, Lio/reactivex/j;->C0([Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final a7(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->Z6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final a8(JLjava/util/concurrent/TimeUnit;JZ)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "JZ)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->d8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final b1(Lw2/o;Z)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;Z)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/reactivex/j;->a1(Lw2/o;IIZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final b2(Lw2/q;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/q;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-virtual {p0, v0, p1, v1}, Lio/reactivex/j;->Z1(Lw2/g;Lw2/q;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final b3(Lw2/o;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/j<",
            "Lio/reactivex/flowables/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lio/reactivex/j;->e3(Lw2/o;Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final b5(Lw2/o;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Ll3/b<",
            "TR;>;>;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->d(Lio/reactivex/j;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 4
    invoke-static {p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->h(Lw2/o;Lio/reactivex/h0;)Lw2/o;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->Z8(Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final b6()Lio/reactivex/disposables/b;
    .locals 4
    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->f:Lw2/g;

    sget-object v2, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;->INSTANCE:Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/j;->f6(Lw2/g;Lw2/g;Lw2/a;Lw2/g;)Lio/reactivex/disposables/b;

    move-result-object v0

    return-object v0
.end method

.method public final b7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/j;->v1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final b8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->d8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ll3/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p1, Lio/reactivex/o;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/reactivex/o;

    invoke-virtual {p0, p1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/subscribers/StrictSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/subscribers/StrictSubscriber;-><init>(Ll3/c;)V

    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method

.method public final c1(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->d1(Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final c2(Lw2/g;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Ll3/d;",
            ">;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->g:Lw2/q;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->Z1(Lw2/g;Lw2/q;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final c3(Lw2/o;Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/j<",
            "Lio/reactivex/flowables/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/reactivex/j;->e3(Lw2/o;Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final c5()Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->Y8(Lio/reactivex/j;)Lio/reactivex/flowables/a;

    move-result-object v0

    return-object v0
.end method

.method public final c6(Lw2/g;)Lio/reactivex/disposables/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->f:Lw2/g;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;->INSTANCE:Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/j;->f6(Lw2/g;Lw2/g;Lw2/a;Lw2/g;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public final c7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/j;->w1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final c8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;J)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "J)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, Lio/reactivex/j;->d8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final d1(Lw2/o;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;-><init>(Lio/reactivex/j;Lw2/o;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final d2(Lw2/a;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->a(Lw2/a;)Lw2/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/j;->X1(Lw2/g;Lw2/g;Lw2/a;Lw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final d3(Lw2/o;Lw2/o;Z)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;Z)",
            "Lio/reactivex/j<",
            "Lio/reactivex/flowables/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->e3(Lw2/o;Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final d4(Lio/reactivex/g;)Lio/reactivex/j;
    .locals 1
    .param p1    # Lio/reactivex/g;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable;-><init>(Lio/reactivex/j;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final d5(I)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->U8(Lio/reactivex/j;I)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1
.end method

.method public final d6(Lw2/g;Lw2/g;)Lio/reactivex/disposables/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;->INSTANCE:Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/j;->f6(Lw2/g;Lw2/g;Lw2/a;Lw2/g;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public final d7()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/j;->g7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final d8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JZ)Lio/reactivex/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "JZ)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/j;->e8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JZI)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final e1(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->f1(Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final e2(J)Lio/reactivex/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/z;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/z;-><init>(Lio/reactivex/j;J)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e3(Lw2/o;Lw2/o;ZI)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;ZI)",
            "Lio/reactivex/j<",
            "Lio/reactivex/flowables/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;-><init>(Lio/reactivex/j;Lw2/o;Lw2/o;IZLw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final e4(Lio/reactivex/w;)Lio/reactivex/j;
    .locals 1
    .param p1    # Lio/reactivex/w;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe;-><init>(Lio/reactivex/j;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final e5(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/flowables/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->f5(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1
.end method

.method public final e6(Lw2/g;Lw2/g;Lw2/a;)Lio/reactivex/disposables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            ")",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;->INSTANCE:Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->f6(Lw2/g;Lw2/g;Lw2/a;Lw2/g;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public final e7(Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->g7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final e8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JZI)Lio/reactivex/j;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "JZI)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p8

    .line 1
    invoke-static {v11, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 2
    invoke-static {v8, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p3

    .line 3
    invoke-static {v7, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move-wide/from16 v9, p5

    .line 4
    invoke-static {v9, v10, v0}, Lio/reactivex/internal/functions/a;->i(JLjava/lang/String;)J

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/flowable/k1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lio/reactivex/internal/operators/flowable/k1;-><init>(Lio/reactivex/j;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;JIZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/j;->e([Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final f1(Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;-><init>(Lio/reactivex/j;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final f2(JLjava/lang/Object;)Lio/reactivex/i0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/a0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/a0;-><init>(Lio/reactivex/j;JLjava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final f3(Lw2/o;Lw2/o;ZILw2/o;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;",
            "Lw2/o<",
            "-TT;+TV;>;ZI",
            "Lw2/o<",
            "-",
            "Lw2/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lio/reactivex/j<",
            "Lio/reactivex/flowables/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "evictingMapFactory is null"

    .line 4
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;-><init>(Lio/reactivex/j;Lw2/o;Lw2/o;IZLw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final f4(Lio/reactivex/o0;)Lio/reactivex/j;
    .locals 1
    .param p1    # Lio/reactivex/o0;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle;-><init>(Lio/reactivex/j;Lio/reactivex/o0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final f5(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/flowables/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v1, "unit is null"

    .line 2
    invoke-static {p4, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "scheduler is null"

    .line 3
    invoke-static {p5, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    .line 5
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->W8(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1
.end method

.method public final f6(Lw2/g;Lw2/g;Lw2/a;Lw2/g;)Lio/reactivex/disposables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "Lw2/g<",
            "-",
            "Ll3/d;",
            ">;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/subscribers/LambdaSubscriber;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/subscribers/LambdaSubscriber;-><init>(Lw2/g;Lw2/g;Lw2/a;Lw2/g;)V

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-object v0
.end method

.method public final f7(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->g7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final f8(Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "TB;>;>;)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->g8(Ljava/util/concurrent/Callable;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lw2/r;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;)",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/f;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/f;-><init>(Lio/reactivex/j;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final g1(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->i1(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final g2(J)Lio/reactivex/i0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/a0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/flowable/a0;-><init>(Lio/reactivex/j;JLjava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g3(Lw2/o;Z)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+TK;>;Z)",
            "Lio/reactivex/j<",
            "Lio/reactivex/flowables/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->k()Lw2/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lio/reactivex/j;->e3(Lw2/o;Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final g4(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/j;->O3(Ll3/b;Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final g5(ILio/reactivex/h0;)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lio/reactivex/j;->d5(I)Lio/reactivex/flowables/a;

    move-result-object p1

    invoke-static {p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->a9(Lio/reactivex/flowables/a;Lio/reactivex/h0;)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1
.end method

.method public final g6(Lio/reactivex/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/plugins/a;->h0(Lio/reactivex/j;Ll3/c;)Ll3/c;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/j;->h6(Ll3/c;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw v0

    :catch_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public final g7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/h1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/h1;-><init>(Lio/reactivex/j;Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final g8(Ljava/util/concurrent/Callable;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "TB;>;>;I)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "boundaryIndicatorSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier;-><init>(Lio/reactivex/j;Ljava/util/concurrent/Callable;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lio/reactivex/k;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/k;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/k<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/k;

    invoke-interface {p1, p0}, Lio/reactivex/k;->a(Lio/reactivex/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h1(Lw2/o;Z)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;Z)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->i1(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final h3(Ll3/b;Lw2/o;Lw2/o;Lw2/c;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TTRight;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lw2/o<",
            "-TTRight;+",
            "Ll3/b<",
            "TTRightEnd;>;>;",
            "Lw2/c<",
            "-TT;-",
            "Lio/reactivex/j<",
            "TTRight;>;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;-><init>(Lio/reactivex/j;Ll3/b;Lw2/o;Lw2/o;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final h5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->i5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract h6(Ll3/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final h7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/j;->p7(JLjava/util/concurrent/TimeUnit;Ll3/b;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final h8(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TB;>;)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->i8(Ll3/b;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/subscribers/d;

    invoke-direct {v0}, Lio/reactivex/internal/subscribers/d;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final i1(Lw2/o;ZI)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;-><init>(Lio/reactivex/j;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final i3()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/j0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/j0;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final i4(Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/j;->k4(Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final i5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->V8(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1
.end method

.method public final i6(Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .param p1    # Lio/reactivex/h0;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->j6(Lio/reactivex/h0;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final i7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lio/reactivex/j;->p7(JLjava/util/concurrent/TimeUnit;Ll3/b;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final i8(Ll3/b;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TB;>;I)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "boundaryIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;-><init>(Lio/reactivex/j;Ll3/b;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/subscribers/d;

    invoke-direct {v0}, Lio/reactivex/internal/subscribers/d;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final j1(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->k1(Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final j3()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/l0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/l0;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final j4(Lio/reactivex/h0;Z)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->k4(Lio/reactivex/h0;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final j5(Lio/reactivex/h0;)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/j;->c5()Lio/reactivex/flowables/a;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay;->a9(Lio/reactivex/flowables/a;Lio/reactivex/h0;)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lio/reactivex/h0;Z)Lio/reactivex/j;
    .locals 1
    .param p1    # Lio/reactivex/h0;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;-><init>(Lio/reactivex/j;Lio/reactivex/h0;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final j7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Ll3/b;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/reactivex/j;->p7(JLjava/util/concurrent/TimeUnit;Ll3/b;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final j8(Ll3/b;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;",
            "Lw2/o<",
            "-TU;+",
            "Ll3/b<",
            "TV;>;>;)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->k8(Ll3/b;Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lw2/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/j;->l()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lw2/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    check-cast v0, Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 6
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final k1(Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle;-><init>(Lio/reactivex/j;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final k2(Lw2/r;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/d0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/d0;-><init>(Lio/reactivex/j;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final k4(Lio/reactivex/h0;ZI)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            "ZI)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;-><init>(Lio/reactivex/j;Lio/reactivex/h0;ZI)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final k5()Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->c()Lw2/r;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/j;->m5(JLw2/r;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final k6(Ll3/c;)Ll3/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ll3/c<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/j;->c(Ll3/c;)V

    return-object p1
.end method

.method public final k7(JLjava/util/concurrent/TimeUnit;Ll3/b;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/j;->p7(JLjava/util/concurrent/TimeUnit;Ll3/b;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final k8(Ll3/b;Lw2/o;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;",
            "Lw2/o<",
            "-TU;+",
            "Ll3/b<",
            "TV;>;>;I)",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "openingIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/j1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/j1;-><init>(Lio/reactivex/j;Ll3/b;Lw2/o;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final l()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->m(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final l1(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/j;->n1(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final l2(Ljava/lang/Object;)Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/j;->f2(JLjava/lang/Object;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final l4(Ljava/lang/Class;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->l(Ljava/lang/Class;)Lw2/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->k2(Lw2/r;)Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->Y(Ljava/lang/Class;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final l5(J)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->c()Lw2/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->m5(JLw2/r;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final l6(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/d1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/d1;-><init>(Lio/reactivex/j;Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final l7(Ll3/b;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TV;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/j;->q7(Ll3/b;Lw2/o;Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final l8(Ljava/lang/Iterable;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ll3/b<",
            "*>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "others is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFromMany;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFromMany;-><init>(Lio/reactivex/j;Ljava/lang/Iterable;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final m(I)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;-><init>(Lio/reactivex/j;I)V

    return-object v0
.end method

.method public final m1(Lw2/o;Z)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;Z)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->n1(Lw2/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final m2()Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/reactivex/j;->e2(J)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final m4()Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/j;->q4(IZZ)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final m5(JLw2/r;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lw2/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;-><init>(Lio/reactivex/j;JLw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final m6(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->n6(Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final m7(Ll3/b;Lw2/o;Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TV;>;>;",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "firstTimeoutSelector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "other is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/j;->q7(Ll3/b;Lw2/o;Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final m8(Ll3/b;Ll3/b;Ll3/b;Ll3/b;Lw2/j;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TT1;>;",
            "Ll3/b<",
            "TT2;>;",
            "Ll3/b<",
            "TT3;>;",
            "Ll3/b<",
            "TT4;>;",
            "Lw2/j<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p5}, Lio/reactivex/internal/functions/Functions;->A(Lw2/j;)Lw2/o;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 6
    invoke-virtual {p0, v0, p5}, Lio/reactivex/j;->q8([Ll3/b;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final n()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/subscribers/e;

    invoke-direct {v0}, Lio/reactivex/internal/subscribers/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final n1(Lw2/o;ZI)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle;-><init>(Lio/reactivex/j;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final n2()Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/reactivex/j;->g2(J)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

.method public final n4(I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lio/reactivex/j;->q4(IZZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final n5(Lw2/d;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRetryBiPredicate;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRetryBiPredicate;-><init>(Lio/reactivex/j;Lw2/d;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final n6(Lw2/o;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->o6(Lw2/o;IZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final n7(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TV;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v0}, Lio/reactivex/j;->q7(Ll3/b;Lw2/o;Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final n8(Ll3/b;Ll3/b;Ll3/b;Lw2/i;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TT1;>;",
            "Ll3/b<",
            "TT2;>;",
            "Ll3/b<",
            "TT3;>;",
            "Lw2/i<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p4}, Lio/reactivex/internal/functions/Functions;->z(Lw2/i;)Lw2/o;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 5
    invoke-virtual {p0, v0, p4}, Lio/reactivex/j;->q8([Ll3/b;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/subscribers/e;

    invoke-direct {v0}, Lio/reactivex/internal/subscribers/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final o1(Lio/reactivex/g;)Lio/reactivex/j;
    .locals 1
    .param p1    # Lio/reactivex/g;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable;-><init>(Lio/reactivex/j;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final o2(Lw2/o;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final o4(ILw2/a;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, p2}, Lio/reactivex/j;->r4(IZZLw2/a;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final o5(Lw2/r;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/j;->m5(JLw2/r;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method o6(Lw2/o;IZ)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;IZ)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Lx2/m;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Lx2/m;

    invoke-interface {p2}, Lx2/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/flowable/w0;->a(Ljava/lang/Object;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap;-><init>(Lio/reactivex/j;Lw2/o;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final o7(Lw2/o;Lio/reactivex/j;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TV;>;>;",
            "Lio/reactivex/j<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lio/reactivex/j;->q7(Ll3/b;Lw2/o;Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final o8(Ll3/b;Ll3/b;Lw2/h;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TT1;>;",
            "Ll3/b<",
            "TT2;>;",
            "Lw2/h<",
            "-TT;-TT1;-TT2;TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lio/reactivex/internal/functions/Functions;->y(Lw2/h;)Lw2/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ll3/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 4
    invoke-virtual {p0, v0, p3}, Lio/reactivex/j;->q8([Ll3/b;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final p()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/b;-><init>(Ll3/b;)V

    return-object v0
.end method

.method public final p1(Lio/reactivex/w;)Lio/reactivex/j;
    .locals 1
    .param p1    # Lio/reactivex/w;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithMaybe;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatWithMaybe;-><init>(Lio/reactivex/j;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final p2(Lw2/o;I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final p4(IZ)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->q4(IZZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final p5(Lw2/e;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/e;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->v(Lw2/e;)Lw2/r;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/j;->m5(JLw2/r;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final p6(Lw2/o;)Lio/reactivex/a;
    .locals 2
    .param p1    # Lw2/o;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;-><init>(Lio/reactivex/j;Lw2/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final p8(Ll3/b;Lw2/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TU;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;

    invoke-direct {v0, p0, p2, p1}, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;-><init>(Lio/reactivex/j;Lw2/c;Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/c;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/c;-><init>(Lio/reactivex/j;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final q1(Lio/reactivex/o0;)Lio/reactivex/j;
    .locals 1
    .param p1    # Lio/reactivex/o0;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle;-><init>(Lio/reactivex/j;Lio/reactivex/o0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final q2(Lw2/o;Lw2/c;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v4

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->u2(Lw2/o;Lw2/c;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final q3()Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->b()Lw2/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->a(Lw2/r;)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

.method public final q4(IZZ)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;-><init>(Lio/reactivex/j;IZZLw2/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final q5(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Ll3/b<",
            "*>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRetryWhen;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRetryWhen;-><init>(Lio/reactivex/j;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final q6(Lw2/o;)Lio/reactivex/a;
    .locals 2
    .param p1    # Lw2/o;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;-><init>(Lio/reactivex/j;Lw2/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final q8([Ll3/b;Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "*>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "others is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFromMany;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFromMany;-><init>(Lio/reactivex/j;[Ll3/b;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final r()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/d;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/d;-><init>(Ll3/b;)V

    return-object v0
.end method

.method public final r1(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/j;->z0(Ll3/b;Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final r2(Lw2/o;Lw2/c;I)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->u2(Lw2/o;Lw2/c;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final r3(Ll3/b;Lw2/o;Lw2/o;Lw2/c;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "+TTRight;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lw2/o<",
            "-TTRight;+",
            "Ll3/b<",
            "TTRightEnd;>;>;",
            "Lw2/c<",
            "-TT;-TTRight;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableJoin;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableJoin;-><init>(Lio/reactivex/j;Ll3/b;Lw2/o;Lw2/o;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final r4(IZZLw2/a;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Lw2/a;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onOverflow is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacity"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer;-><init>(Lio/reactivex/j;IZZLw2/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final r5(Ll3/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lio/reactivex/subscribers/d;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lio/reactivex/subscribers/d;

    invoke-virtual {p0, p1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/subscribers/d;

    invoke-direct {v0, p1}, Lio/reactivex/subscribers/d;-><init>(Ll3/c;)V

    invoke-virtual {p0, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method

.method public final r6(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->s6(Lw2/o;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/j;->J5()Lio/reactivex/i0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/i0;->i()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final s1(Ljava/lang/Object;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->i(Ljava/lang/Object;)Lw2/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->g(Lw2/r;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final s2(Lw2/o;Lw2/c;Z)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;Z)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v4

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->u2(Lw2/o;Lw2/c;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final s4(JLw2/a;Lio/reactivex/BackpressureOverflowStrategy;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lw2/a;",
            "Lio/reactivex/BackpressureOverflowStrategy;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "strategy is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacity"

    .line 2
    invoke-static {p1, p2, v0}, Lio/reactivex/internal/functions/a;->i(JLjava/lang/String;)J

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;-><init>(Lio/reactivex/j;JLw2/a;Lio/reactivex/BackpressureOverflowStrategy;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final s5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->t5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final s6(Lw2/o;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/j;->o6(Lw2/o;IZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/j;->H5(Ljava/lang/Object;)Lio/reactivex/i0;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/i0;->i()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t1()Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/i0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/o;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/o;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

.method public final t2(Lw2/o;Lw2/c;ZI)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->u2(Lw2/o;Lw2/c;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final t4(Z)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lio/reactivex/j;->q4(IZZ)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final t5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final t6(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .param p1    # Lw2/o;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe;-><init>(Lio/reactivex/j;Lw2/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final t7()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/j;->w7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 0
    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/operators/flowable/h;->a(Ll3/b;)V

    return-void
.end method

.method public final u0(Lio/reactivex/p;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "-TT;+TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "composer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/p;

    invoke-interface {p1, p0}, Lio/reactivex/p;->a(Lio/reactivex/j;)Ll3/b;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final u2(Lw2/o;Lw2/c;ZII)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;ZII)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 5
    invoke-static {p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;->b(Lw2/o;Lw2/c;)Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final u4()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final u5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final u6(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .param p1    # Lw2/o;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe;-><init>(Lio/reactivex/j;Lw2/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final u7(Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/j;->w7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ll3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/flowable/h;->b(Ll3/b;Ll3/c;)V

    return-void
.end method

.method public final v1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->w1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final v2(Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ll3/b<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onNextMapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;-><init>(Lio/reactivex/j;Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/j;->M3(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final v4(Lw2/g;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onDrop is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;-><init>(Lio/reactivex/j;Lw2/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final v5(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/j;->u5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final v6(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .param p1    # Lw2/o;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapSingle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapSingle;-><init>(Lio/reactivex/j;Lw2/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final v7(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/j;->w7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lw2/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->f:Lw2/g;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/operators/flowable/h;->c(Ll3/b;Lw2/g;Lw2/g;Lw2/a;)V

    return-void
.end method

.method public final w1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableDebounceTimed;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final w2(Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;",
            "Lw2/o<",
            "Ljava/lang/Throwable;",
            "+",
            "Ll3/b<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "+TR;>;>;I)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onNextMapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;-><init>(Lio/reactivex/j;Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0, p4}, Lio/reactivex/j;->N3(Ll3/b;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final w4()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final w5(Ll3/b;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sampler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;-><init>(Ll3/b;Ll3/b;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final w6(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .param p1    # Lw2/o;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapSingle;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapSingle;-><init>(Lio/reactivex/j;Lw2/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final w7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lio/reactivex/internal/functions/Functions;->w(Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->H3(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lw2/g;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;I)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->f:Lw2/g;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-static {p0, p1, v0, v1, p2}, Lio/reactivex/internal/operators/flowable/h;->d(Ll3/b;Lw2/g;Lw2/g;Lw2/a;I)V

    return-void
.end method

.method public final x1(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TU;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "debounceIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableDebounce;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDebounce;-><init>(Lio/reactivex/j;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final x2(Lw2/o;Z)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;Z)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final x4(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->n(Ljava/lang/Object;)Lw2/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->y4(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final x5(Ll3/b;Z)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TU;>;Z)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sampler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;-><init>(Ll3/b;Ll3/b;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final x7(Lw2/o;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/o;

    invoke-interface {p1, p0}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final y(Lw2/g;Lw2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/internal/operators/flowable/h;->c(Ll3/b;Lw2/g;Lw2/g;Lw2/a;)V

    return-void
.end method

.method public final y1(Ljava/lang/Object;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/j;->s3(Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/j;->l6(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final y2(Lw2/o;ZI)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/j;->z2(Lw2/o;ZII)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final y4(Lw2/o;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ll3/b<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;-><init>(Lio/reactivex/j;Lw2/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final y5(Ljava/lang/Object;Lw2/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lw2/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "seed is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/j;->A5(Ljava/util/concurrent/Callable;Lw2/c;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final y7()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/subscribers/f;

    invoke-direct {v0}, Lio/reactivex/internal/subscribers/f;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/j;->k6(Ll3/c;)Ll3/c;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final z(Lw2/g;Lw2/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    invoke-static {p0, p1, p2, v0, p3}, Lio/reactivex/internal/operators/flowable/h;->d(Ll3/b;Lw2/g;Lw2/g;Lw2/a;I)V

    return-void
.end method

.method public final z2(Lw2/o;ZII)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;ZII)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Lx2/m;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Lx2/m;

    invoke-interface {p2}, Lx2/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Lio/reactivex/j;->h2()Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/flowable/w0;->a(Ljava/lang/Object;Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v6, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;-><init>(Lio/reactivex/j;Lw2/o;ZII)V

    invoke-static {v6}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final z4(Lw2/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "valueSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorReturn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableOnErrorReturn;-><init>(Lio/reactivex/j;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final z5(Lw2/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "accumulator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/x0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/x0;-><init>(Lio/reactivex/j;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final z7()Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/i0<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/i1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/i1;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

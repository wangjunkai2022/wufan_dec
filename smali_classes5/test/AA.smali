.class public final Ltest/AA;
.super Ljava/lang/Object;
.source "AA.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Ltest/AA;",
        "",
        "",
        "a",
        "",
        "type",
        "b",
        "c",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    new-instance v0, Ltest/AA$Test$1;

    invoke-direct {v0, p0}, Ltest/AA$Test$1;-><init>(Ltest/AA;)V

    const-string v1, "111"

    invoke-static {v1, v0}, Ltest/a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

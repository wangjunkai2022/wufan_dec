.class public final Lcom/squareup/wire/a;
.super Ljava/lang/Object;
.source "Duration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001d\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0086\u0008*\n\u0010\u0006\"\u00020\u00032\u00020\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "",
        "seconds",
        "nano",
        "Ljava/time/Duration;",
        "Lcom/squareup/wire/Duration;",
        "a",
        "Duration",
        "wire-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final a(JJ)Ljava/time/Duration;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    const-string p1, "Duration.ofSeconds(seconds, nano)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

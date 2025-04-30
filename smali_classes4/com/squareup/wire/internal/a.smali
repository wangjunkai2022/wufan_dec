.class public final Lcom/squareup/wire/internal/a;
.super Ljava/lang/Object;
.source "DurationJsonFormatter.kt"

# interfaces
.implements Lcom/squareup/wire/internal/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/i<",
        "Ljava/time/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0014\u0010\u0007\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/squareup/wire/internal/a;",
        "Lcom/squareup/wire/internal/i;",
        "Ljava/time/Duration;",
        "Lcom/squareup/wire/Duration;",
        "value",
        "",
        "d",
        "c",
        "<init>",
        "()V",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/squareup/wire/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/squareup/wire/internal/a;

    invoke-direct {v0}, Lcom/squareup/wire/internal/a;-><init>()V

    sput-object v0, Lcom/squareup/wire/internal/a;->a:Lcom/squareup/wire/internal/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/a;->c(Ljava/lang/String;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/a;->d(Ljava/time/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/time/Duration;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x73

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    .line 1
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    .line 3
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p1

    const-string v0, "Duration.ofSeconds(seconds)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-int/lit8 v1, v1, 0x1

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, "-"

    .line 8
    invoke-static {p1, v9, v4, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    neg-long v2, v2

    :cond_1
    sub-int/2addr v0, v1

    move p1, v0

    :goto_0
    const/16 v1, 0xa

    const/16 v4, 0x9

    if-ge p1, v4, :cond_2

    int-to-long v7, v1

    mul-long v2, v2, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v4, v0, :cond_3

    int-to-long v7, v1

    .line 9
    div-long/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v5, v6, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p1

    const-string v0, "Duration.ofSeconds(seconds, nanos)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public d(Ljava/time/Duration;)Ljava/lang/String;
    .locals 11
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result p1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const-wide/16 v0, 0x8

    const-string v4, "-922337203685477580"

    goto :goto_0

    :cond_0
    neg-long v0, v0

    const-string v4, "-"

    :goto_0
    if-eqz p1, :cond_2

    sub-long/2addr v0, v2

    const v5, 0x3b9aca00

    sub-int p1, v5, p1

    goto :goto_1

    :cond_1
    const-string v4, ""

    :cond_2
    :goto_1
    const-string v5, "java.lang.String.format(this, *args)"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez p1, :cond_3

    new-array p1, v8, [Ljava/lang/Object;

    aput-object v4, p1, v7

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v6

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%ds"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const v9, 0xf4240

    .line 4
    rem-int v9, p1, v9

    const/4 v10, 0x3

    if-nez v9, :cond_4

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v4, v2, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v6

    int-to-long v0, p1

    const-wide/32 v3, 0xf4240

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%d.%03ds"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_4
    rem-int/lit16 v9, p1, 0x3e8

    if-nez v9, :cond_5

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v4, v2, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v6

    int-to-long v0, p1

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%d.%06ds"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-array v9, v10, [Ljava/lang/Object;

    aput-object v4, v9, v7

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v6

    int-to-long v0, p1

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v9, v8

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%d.%09ds"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

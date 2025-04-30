.class public final Lcom/squareup/wire/internal/e;
.super Ljava/lang/Object;
.source "InstantJsonFormatter.kt"

# interfaces
.implements Lcom/squareup/wire/internal/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/i<",
        "Ljava/time/Instant;",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0014\u0010\u0008\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0004\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/squareup/wire/internal/e;",
        "Lcom/squareup/wire/internal/i;",
        "Ljava/time/Instant;",
        "Lcom/squareup/wire/Instant;",
        "value",
        "",
        "d",
        "",
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
.field public static final a:Lcom/squareup/wire/internal/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/squareup/wire/internal/e;

    invoke-direct {v0}, Lcom/squareup/wire/internal/e;-><init>()V

    sput-object v0, Lcom/squareup/wire/internal/e;->a:Lcom/squareup/wire/internal/e;

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
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/e;->c(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/e;->d(Ljava/time/Instant;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/time/Instant;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    const-string v0, "Instant.from(parsed)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Ljava/time/Instant;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISO_INSTANT.format(value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

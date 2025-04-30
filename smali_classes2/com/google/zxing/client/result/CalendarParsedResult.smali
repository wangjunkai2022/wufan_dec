.class public final Lcom/google/zxing/client/result/CalendarParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "CalendarParsedResult.java"


# instance fields
.field private final attendee:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final end:Ljava/lang/String;

.field private final latitude:D

.field private final location:Ljava/lang/String;

.field private final longitude:D

.field private final start:Ljava/lang/String;

.field private final summary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 3
    invoke-static {p2}, Lcom/google/zxing/client/result/CalendarParsedResult;->validateDate(Ljava/lang/CharSequence;)V

    .line 4
    iput-object p1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lcom/google/zxing/client/result/CalendarParsedResult;->validateDate(Ljava/lang/CharSequence;)V

    .line 7
    iput-object p3, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/lang/String;

    .line 9
    :goto_0
    iput-object p4, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendee:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    .line 12
    iput-wide p7, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    .line 13
    iput-wide p9, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    return-void
.end method

.method private static validateDate(Ljava/lang/CharSequence;)V
    .locals 6

    if-eqz p0, :cond_8

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0xf

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 3
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    if-le v0, v3, :cond_8

    .line 5
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_7

    const/16 v3, 0x9

    :goto_2
    if-ge v3, v2, :cond_5

    .line 6
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    if-ne v0, v1, :cond_8

    .line 8
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_6

    goto :goto_3

    .line 9
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 10
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public getAttendee()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendee:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendee:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 7
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    return-wide v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    return-object v0
.end method

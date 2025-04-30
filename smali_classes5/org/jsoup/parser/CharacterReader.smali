.class Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'


# instance fields
.field private final input:[C

.field private final length:I

.field private mark:I

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 3
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 4
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 6
    array-length p1, p1

    iput p1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    return-void
.end method


# virtual methods
.method advance()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method

.method consume()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    .line 2
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method consumeAsString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    sub-int/2addr v1, v0

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 5
    :cond_3
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    sub-int/2addr v1, v0

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 5
    :cond_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    sub-int/2addr v1, v0

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v1, v1, v2

    const/16 v3, 0x30

    if-lt v1, v3, :cond_3

    const/16 v3, 0x39

    if-gt v1, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 7
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_1

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method consumeTo(C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 5
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 7
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method varargs consumeToAny([C)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 2
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x0

    .line 3
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v2, v2, v3

    aget-char v3, p1, v1

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 6
    :cond_2
    :goto_2
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le p1, v0, :cond_3

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    sub-int/2addr p1, v0

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    return-object v1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method current()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    :goto_0
    return v0
.end method

.method isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mark()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method matches(C)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method varargs matchesAny([C)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method matchesDigit()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 4
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method matchesLetter()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method nextIndexOf(C)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 3
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 7

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 6
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    .line 7
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    :goto_2
    if-ge v2, v4, :cond_1

    .line 10
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v6, v6, v2

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-ne v2, v4, :cond_2

    .line 11
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, p1

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method pos()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method rewindToMark()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method unconsume()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method

.class public final Lcom/google/zxing/client/result/URIParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "URIParsedResult.java"


# static fields
.field private static final USER_IN_HOST:Ljava/util/regex/Pattern;


# instance fields
.field private final title:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":/*([^/@]+)@[^/]+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/URIParsedResult;->USER_IN_HOST:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 2
    invoke-static {p1}, Lcom/google/zxing/client/result/URIParsedResult;->massageURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    return-void
.end method

.method private static isColonFollowedByPortNumber(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    const/4 v2, 0x0

    if-gt v1, p1, :cond_1

    return v2

    :cond_1
    :goto_0
    if-ge p1, v1, :cond_4

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    return v0
.end method

.method private static massageURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "http://"

    if-gez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, v0}, Lcom/google/zxing/client/result/URIParsedResult;->isColonFollowedByPortNumber(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isPossiblyMaliciousURI()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/URIParsedResult;->USER_IN_HOST:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

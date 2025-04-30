.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const-string v2, "S:"

    const/16 v3, 0x3b

    .line 4
    invoke-static {v2, p1, v3, v0}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "P:"

    .line 6
    invoke-static {v1, p1, v3, v0}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "T:"

    .line 7
    invoke-static {v4, p1, v3, v0}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "nopass"

    .line 8
    :cond_2
    new-instance v0, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct {v0, p1, v2, v1}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.class public Lcom/join/mgps/Util/d2;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/32 v1, 0xf423f

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u9b45\u529b"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x5f5e0ff

    const-wide v2, 0x40c3880000000000L    # 10000.0

    cmp-long v4, p0, v0

    if-gtz v4, :cond_1

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4e07\u9b45\u529b"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide v0, 0x174876e7ffL

    cmp-long v4, p0, v0

    if-gtz v4, :cond_2

    .line 5
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4ebf\u9b45\u529b"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "1000+\u4ebf\u9b45\u529b"

    :goto_0
    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0xf4240

    if-ge p0, v0, :cond_1

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4e07"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "100\u4e07+"

    :goto_0
    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u70ed\u5ea6"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v1, 0xf4240

    const-string v2, "\u4e07\u70ed\u5ea6"

    const-wide v3, 0x40c3880000000000L    # 10000.0

    if-ge p0, v1, :cond_1

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const v1, 0x989680

    if-ge p0, v1, :cond_2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "999\u4e07+\u70ed\u5ea6"

    :goto_0
    return-object p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v1, 0xf4240

    const-string v2, "\u4e07"

    const-wide v3, 0x40c3880000000000L    # 10000.0

    if-ge p0, v1, :cond_1

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const v1, 0x989680

    if-ge p0, v1, :cond_2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "999\u4e07+"

    :goto_0
    return-object p0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    if-ge p0, v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    const-string v1, "##0.0"

    if-ge p0, v0, :cond_1

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p0, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p0, v2

    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const v0, 0x186a0

    if-ge p0, v0, :cond_2

    .line 6
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "W"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "10W+"

    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static k(D)D
    .locals 13

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, p0, v0

    if-lez v12, :cond_0

    cmpg-double v12, p0, v10

    if-gtz v12, :cond_0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_0

    :cond_0
    cmpl-double v12, p0, v10

    if-lez v12, :cond_1

    cmpg-double v12, p0, v8

    if-gtz v12, :cond_1

    move-wide v0, v10

    goto/16 :goto_0

    :cond_1
    cmpl-double v10, p0, v8

    if-lez v10, :cond_2

    cmpg-double v10, p0, v6

    if-gtz v10, :cond_2

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_0

    :cond_2
    cmpl-double v10, p0, v6

    if-lez v10, :cond_3

    cmpg-double v10, p0, v4

    if-gtz v10, :cond_3

    move-wide v0, v8

    goto :goto_0

    :cond_3
    cmpl-double v8, p0, v4

    if-lez v8, :cond_4

    cmpg-double v8, p0, v2

    if-gtz v8, :cond_4

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    goto :goto_0

    :cond_4
    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    cmpl-double v10, p0, v2

    if-lez v10, :cond_5

    cmpg-double v10, p0, v8

    if-gtz v10, :cond_5

    move-wide v0, v6

    goto :goto_0

    :cond_5
    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v10, p0, v8

    if-lez v10, :cond_6

    cmpg-double v8, p0, v6

    if-gtz v8, :cond_6

    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    goto :goto_0

    :cond_6
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    cmpl-double v10, p0, v6

    if-lez v10, :cond_7

    cmpg-double v6, p0, v8

    if-gtz v6, :cond_7

    move-wide v0, v4

    goto :goto_0

    :cond_7
    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpl-double v6, p0, v8

    if-lez v6, :cond_8

    cmpg-double v6, p0, v4

    if-gtz v6, :cond_8

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    goto :goto_0

    :cond_8
    cmpl-double v6, p0, v4

    if-lez v6, :cond_9

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v6, p0, v4

    if-gtz v6, :cond_9

    move-wide v0, v2

    :cond_9
    :goto_0
    return-wide v0
.end method

.method public static l(D)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    .line 2
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/join/mgps/Util/g2;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 3
    aget-char v3, p0, v0

    int-to-byte v3, v3

    int-to-char v3, v3

    aget-char v4, p0, v0

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    const/16 v3, 0xa

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

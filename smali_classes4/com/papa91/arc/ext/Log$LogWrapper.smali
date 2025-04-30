.class public Lcom/papa91/arc/ext/Log$LogWrapper;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/ext/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogWrapper"
.end annotation


# static fields
.field public static final MAX_MSG_LEN:I = 0x3ff

.field public static final MAX_TAG_LEN:I = 0x17

.field private static final OFF:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/16 v0, 0xa

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static fixTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x5

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->fixTag(Ljava/lang/String;)Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    sub-int v1, p1, v0

    const/16 v2, 0x3ff

    if-le v1, v2, :cond_1

    const/16 v1, 0x3ff

    :cond_1
    add-int/2addr v1, v0

    .line 3
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    :cond_2
    if-lt v1, p1, :cond_3

    return p3

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x7

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

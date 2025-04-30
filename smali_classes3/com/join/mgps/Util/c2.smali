.class public Lcom/join/mgps/Util/c2;
.super Ljava/lang/Object;
.source "StringMinUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0}, Lcom/join/mgps/Util/c2;->a(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/c2;->b(Ljava/lang/String;)I

    move-result p0

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/c2;->b(Ljava/lang/String;)I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

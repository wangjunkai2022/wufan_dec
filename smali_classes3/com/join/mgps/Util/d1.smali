.class public Lcom/join/mgps/Util/d1;
.super Ljava/lang/Object;
.source "NameLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/content/Context;

.field e:Ljava/util/regex/Pattern;

.field f:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/Util/d1;->b:Ljava/lang/String;

    const-string v1, "[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]"

    .line 3
    iput-object v1, p0, Lcom/join/mgps/Util/d1;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/d1;->e:Ljava/util/regex/Pattern;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/Util/d1;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/d1;->f:Ljava/util/regex/Pattern;

    .line 6
    iput p1, p0, Lcom/join/mgps/Util/d1;->a:I

    .line 7
    iput-object p2, p0, Lcom/join/mgps/Util/d1;->d:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/d1;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/d1;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/Util/d1;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/mgps/Util/d1;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p2

    const-string p3, "\u4e0d\u652f\u6301\u8868\u60c5"

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/join/mgps/Util/d1;->a(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/join/mgps/Util/d1;->a(Ljava/lang/String;)I

    move-result p4

    add-int/2addr p3, p4

    add-int p4, p2, p3

    .line 8
    iget p5, p0, Lcom/join/mgps/Util/d1;->a:I

    if-le p4, p5, :cond_4

    sub-int/2addr p5, p2

    const/4 p2, 0x0

    const-string p4, ""

    move-object p6, p4

    :goto_0
    if-lez p5, :cond_3

    .line 9
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/mgps/Util/d1;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-lt p3, v1, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    :cond_1
    add-int/lit8 p5, p5, -0x2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    add-int/lit8 p5, p5, -0x1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-object p6

    :cond_4
    return-object p1
.end method

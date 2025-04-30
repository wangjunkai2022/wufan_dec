.class public Lcom/join/mgps/Util/n;
.super Ljava/lang/Object;
.source "CheckEmojiUtile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/text/InputFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/n$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/n$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/text/InputFilter;
    .locals 0

    .line 1
    new-instance p0, Lcom/join/mgps/Util/n$b;

    invoke-direct {p0}, Lcom/join/mgps/Util/n$b;-><init>()V

    return-object p0
.end method

.method public static c(C)Z
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(C)Z
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-le p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/n;->e(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static g(Landroid/widget/EditText;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/n;->a(Landroid/content/Context;)Landroid/text/InputFilter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/n;->b(Landroid/content/Context;)Landroid/text/InputFilter;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

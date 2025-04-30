.class public Lcom/mob/commons/cc/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/w$b;,
        Lcom/mob/commons/cc/w$a;,
        Lcom/mob/commons/cc/w$d;,
        Lcom/mob/commons/cc/w$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method private static a([Ljava/lang/Object;)Lcom/mob/commons/cc/w$c;
    .locals 3

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/commons/cc/w$c;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2, v1}, Lcom/mob/commons/cc/w$c;-><init>(Ljava/lang/Object;Lcom/mob/commons/cc/w$1;)V

    const/4 v1, 0x1

    .line 5
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 6
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/w$c;->a(Ljava/lang/Object;)Lcom/mob/commons/cc/w$c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Lcom/mob/commons/cc/w$c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/cc/w;->a([Ljava/lang/Object;)Lcom/mob/commons/cc/w$c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([[B)Lcom/mob/commons/cc/w$c;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/mob/commons/cc/w;->a([Ljava/lang/Object;)Lcom/mob/commons/cc/w$c;

    move-result-object p0

    return-object p0
.end method

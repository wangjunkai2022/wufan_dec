.class public Lcom/facebook/common/util/b;
.super Ljava/lang/Object;
.source "HashCodeUtil.java"


# static fields
.field private static final a:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static b(II)I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(III)I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    return p0
.end method

.method public static d(IIII)I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p3

    return p0
.end method

.method public static e(IIIII)I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p3

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p4

    return p0
.end method

.method public static f(IIIIII)I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p3

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p4

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p5

    return p0
.end method

.method public static g(Ljava/lang/Object;)I
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/facebook/common/util/b;->a(I)I

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3
    :goto_1
    invoke-static {p0, v0}, Lcom/facebook/common/util/b;->b(II)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 4
    :goto_2
    invoke-static {p0, p1, v0}, Lcom/facebook/common/util/b;->c(III)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_1
    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_2
    if-nez p3, :cond_3

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 5
    :goto_3
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/common/util/b;->d(IIII)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_1
    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_2
    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    :goto_3
    if-nez p4, :cond_4

    goto :goto_4

    .line 5
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 6
    :goto_4
    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/common/util/b;->e(IIIII)I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v1, p0

    :goto_0
    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v2, p0

    :goto_1
    if-nez p2, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v3, p0

    :goto_2
    if-nez p3, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v4, p0

    :goto_3
    if-nez p4, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    .line 5
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v5, p0

    :goto_4
    if-nez p5, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    .line 6
    :cond_5
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v6, v0

    .line 7
    :goto_5
    invoke-static/range {v1 .. v6}, Lcom/facebook/common/util/b;->f(IIIIII)I

    move-result p0

    return p0
.end method

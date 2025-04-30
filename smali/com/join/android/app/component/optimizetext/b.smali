.class public Lcom/join/android/app/component/optimizetext/b;
.super Ljava/lang/Object;
.source "StaticLayoutManager.java"


# static fields
.field public static final d:I = 0xf

.field public static final e:I = 0x64


# instance fields
.field private a:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    const/16 v0, 0xf

    .line 3
    iput v0, p0, Lcom/join/android/app/component/optimizetext/b;->c:I

    .line 4
    iput-object p1, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;IILandroid/text/TextPaint;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/optimizetext/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-ne v2, p3, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p1, "..."

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v6, "\n\r"

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0x14

    if-gt v3, v6, :cond_2

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-static {v6, v4, v7, p4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v6

    float-to-int v6, v6

    if-ge v6, p2, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, v3, -0x2

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/text/SpannableStringBuilder;IILandroid/text/TextPaint;)V
    .locals 10

    const-string v0, "..."

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/android/app/component/optimizetext/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-ne v4, p3, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 p3, 0x4

    if-le p2, p3, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, p3

    .line 6
    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    .line 8
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 10
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v8, "\n\r"

    .line 12
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/16 v8, 0x14

    if-gt v5, v8, :cond_3

    .line 13
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-static {v8, v6, v9, p4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v8

    float-to-int v8, v8

    if-ge v8, p2, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 15
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v6, v5, -0x2

    .line 17
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 18
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Landroid/text/StaticLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/StaticLayout;

    return-object p1
.end method

.method public e(Lcom/join/android/app/component/optimizetext/c;)V
    .locals 11

    .line 1
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 3
    iget v0, p0, Lcom/join/android/app/component/optimizetext/b;->c:I

    invoke-static {v0}, Lcom/join/android/app/component/optimizetext/a;->s(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v0, "#4A4A4A"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 5
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 7
    invoke-interface {p1}, Lcom/join/android/app/component/optimizetext/c;->b()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-interface {p1}, Lcom/join/android/app/component/optimizetext/c;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/join/android/app/component/optimizetext/a;->g()I

    move-result p1

    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070ca1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, v9}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    invoke-direct {p0, v1, p1, v3, v2}, Lcom/join/android/app/component/optimizetext/b;->c(Landroid/text/SpannableStringBuilder;IILandroid/text/TextPaint;)V

    .line 12
    new-instance v10, Landroid/text/StaticLayout;

    const v5, 0x3f99999a    # 1.2f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 13
    invoke-virtual {v10, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 14
    iget-object p1, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {p1, v9, v10}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public f(Lcom/join/android/app/component/optimizetext/c;I)V
    .locals 10

    .line 1
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 3
    iget v0, p0, Lcom/join/android/app/component/optimizetext/b;->c:I

    invoke-static {v0}, Lcom/join/android/app/component/optimizetext/a;->s(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v0, "#4A4A4A"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 5
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 7
    invoke-interface {p1}, Lcom/join/android/app/component/optimizetext/c;->b()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-interface {p1}, Lcom/join/android/app/component/optimizetext/c;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/join/android/app/component/optimizetext/a;->g()I

    move-result p1

    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070ca1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v3, p1, v0

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {p1, v9}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 11
    invoke-direct {p0, v1, v3, p2, v2}, Lcom/join/android/app/component/optimizetext/b;->c(Landroid/text/SpannableStringBuilder;IILandroid/text/TextPaint;)V

    .line 12
    :cond_0
    new-instance p1, Landroid/text/StaticLayout;

    const v5, 0x3f99999a    # 1.2f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 13
    invoke-virtual {p1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 14
    iget-object p2, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {p2, v9, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public g(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/android/app/component/optimizetext/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/component/optimizetext/a;->g()I

    move-result v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0, p2}, Lcom/join/android/app/component/optimizetext/b;->h(Ljava/util/List;II)V

    return-void
.end method

.method public h(Ljava/util/List;II)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/android/app/component/optimizetext/c;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    .line 1
    new-instance v11, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/text/TextPaint;-><init>(I)V

    .line 2
    iget-object v3, v1, Lcom/join/android/app/component/optimizetext/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v11, Landroid/text/TextPaint;->density:F

    .line 3
    iget v3, v1, Lcom/join/android/app/component/optimizetext/b;->c:I

    invoke-static {v3}, Lcom/join/android/app/component/optimizetext/a;->s(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 5
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_3

    .line 7
    monitor-enter p1

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_2

    .line 8
    :try_start_0
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/android/app/component/optimizetext/c;

    invoke-interface {v3}, Lcom/join/android/app/component/optimizetext/c;->b()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/android/app/component/optimizetext/c;

    invoke-interface {v3}, Lcom/join/android/app/component/optimizetext/c;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {v4, v10}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    move/from16 v9, p2

    .line 11
    invoke-direct {v1, v3, v9, v0, v11}, Lcom/join/android/app/component/optimizetext/b;->b(Ljava/lang/String;IILandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move/from16 v9, p2

    :goto_1
    move-object v4, v3

    .line 12
    new-instance v8, Landroid/text/StaticLayout;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v3, v8

    move-object v5, v11

    move/from16 v6, p2

    move-object v7, v12

    move-object/from16 v19, v8

    move/from16 v8, v16

    move/from16 v9, v17

    move-object v0, v10

    move/from16 v10, v18

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v19

    .line 13
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 14
    iget-object v4, v1, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {v4, v0, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p3

    goto :goto_0

    .line 15
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(I)Lcom/join/android/app/component/optimizetext/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/optimizetext/b;->c:I

    return-object p0
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/optimizetext/b;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-void
.end method

.class public Lcom/join/android/app/common/http/d$m;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/http/d$m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/join/android/app/common/http/d$m$a;Lcom/join/android/app/common/http/d$m$a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/android/app/common/http/d$m$a;->a:I

    .line 2
    iget p0, p0, Lcom/join/android/app/common/http/d$m$a;->b:I

    .line 3
    iget v1, p1, Lcom/join/android/app/common/http/d$m$a;->a:I

    .line 4
    iget p1, p1, Lcom/join/android/app/common/http/d$m$a;->b:I

    if-le v0, v1, :cond_0

    if-le p0, p1, :cond_0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 6
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static b(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_1
    if-gtz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    if-gtz v0, :cond_3

    const-string v0, "mMaxHeight"

    .line 5
    invoke-static {p0, v0}, Lcom/join/android/app/common/http/d$m;->e(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-gtz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 8
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_4
    return v0
.end method

.method private static c(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_1
    if-gtz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    if-gtz v0, :cond_3

    const-string v0, "mMaxWidth"

    .line 5
    invoke-static {p0, v0}, Lcom/join/android/app/common/http/d$m;->e(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-gtz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 8
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_4
    return v0
.end method

.method public static d(Ljava/io/InputStream;)Lcom/join/android/app/common/http/d$m$a;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    new-instance p0, Lcom/join/android/app/common/http/d$m$a;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v1, v0}, Lcom/join/android/app/common/http/d$m$a;-><init>(II)V

    return-object p0
.end method

.method private static e(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const p1, 0x7fffffff

    if-ge p0, p1, :cond_0

    move v0, p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static f(Landroid/view/View;)Lcom/join/android/app/common/http/d$m$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/common/http/d$m$a;

    invoke-direct {v0}, Lcom/join/android/app/common/http/d$m$a;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/http/d$m;->c(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/join/android/app/common/http/d$m$a;->a:I

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/http/d$m;->b(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Lcom/join/android/app/common/http/d$m$a;->b:I

    return-object v0
.end method

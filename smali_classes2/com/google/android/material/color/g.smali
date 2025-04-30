.class public Lcom/google/android/material/color/g;
.super Ljava/lang/Object;
.source "DynamicColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/g$c;,
        Lcom/google/android/material/color/g$d;,
        Lcom/google/android/material/color/g$e;,
        Lcom/google/android/material/color/g$f;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Lcom/google/android/material/color/g$c;

.field private static final c:Lcom/google/android/material/color/g$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/color/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/color/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sget v1, Lcom/google/android/material/R$attr;->dynamicColorThemeOverlay:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/color/g;->a:[I

    .line 2
    new-instance v0, Lcom/google/android/material/color/g$a;

    invoke-direct {v0}, Lcom/google/android/material/color/g$a;-><init>()V

    sput-object v0, Lcom/google/android/material/color/g;->b:Lcom/google/android/material/color/g$c;

    .line 3
    new-instance v1, Lcom/google/android/material/color/g$b;

    invoke-direct {v1}, Lcom/google/android/material/color/g$b;-><init>()V

    sput-object v1, Lcom/google/android/material/color/g;->c:Lcom/google/android/material/color/g$c;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "google"

    .line 5
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hmd global"

    .line 6
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "infinix"

    .line 7
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "infinix mobility limited"

    .line 8
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "itel"

    .line 9
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kyocera"

    .line 10
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lenovo"

    .line 11
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lge"

    .line 12
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "motorola"

    .line 13
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nothing"

    .line 14
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "oneplus"

    .line 15
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "oppo"

    .line 16
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "realme"

    .line 17
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "robolectric"

    .line 18
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "samsung"

    .line 19
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sharp"

    .line 20
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sony"

    .line 21
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tcl"

    .line 22
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tecno"

    .line 23
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tecno mobile limited"

    .line 24
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "vivo"

    .line 25
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xiaomi"

    .line 26
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/material/color/g;->d:Ljava/util/Map;

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "asus"

    .line 29
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "jio"

    .line 30
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/g;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;ILcom/google/android/material/color/g$f;Lcom/google/android/material/color/g$e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/g;->k(Landroid/app/Activity;ILcom/google/android/material/color/g$f;Lcom/google/android/material/color/g$e;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/g;->j(Landroid/app/Activity;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;I)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/h$c;

    invoke-direct {v0}, Lcom/google/android/material/color/h$c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/h$c;->g(I)Lcom/google/android/material/color/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/color/h$c;->d()Lcom/google/android/material/color/h;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/material/color/g;->l(Landroid/app/Activity;Lcom/google/android/material/color/h;)V

    return-void
.end method

.method public static d(Landroid/app/Activity;Lcom/google/android/material/color/g$f;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/g$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/h$c;

    invoke-direct {v0}, Lcom/google/android/material/color/h$c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/h$c;->f(Lcom/google/android/material/color/g$f;)Lcom/google/android/material/color/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/color/h$c;->d()Lcom/google/android/material/color/h;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/material/color/g;->l(Landroid/app/Activity;Lcom/google/android/material/color/h;)V

    return-void
.end method

.method public static e(Landroid/app/Application;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/material/color/h$c;

    invoke-direct {v0}, Lcom/google/android/material/color/h$c;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/h$c;->d()Lcom/google/android/material/color/h;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/color/g;->i(Landroid/app/Application;Lcom/google/android/material/color/h;)V

    return-void
.end method

.method public static f(Landroid/app/Application;I)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/h$c;

    invoke-direct {v0}, Lcom/google/android/material/color/h$c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/h$c;->g(I)Lcom/google/android/material/color/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/color/h$c;->d()Lcom/google/android/material/color/h;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/material/color/g;->i(Landroid/app/Application;Lcom/google/android/material/color/h;)V

    return-void
.end method

.method public static g(Landroid/app/Application;ILcom/google/android/material/color/g$f;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/color/g$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/h$c;

    invoke-direct {v0}, Lcom/google/android/material/color/h$c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/h$c;->g(I)Lcom/google/android/material/color/h$c;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/material/color/h$c;->f(Lcom/google/android/material/color/g$f;)Lcom/google/android/material/color/h$c;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/color/h$c;->d()Lcom/google/android/material/color/h;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/material/color/g;->i(Landroid/app/Application;Lcom/google/android/material/color/h;)V

    return-void
.end method

.method public static h(Landroid/app/Application;Lcom/google/android/material/color/g$f;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/g$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/h$c;

    invoke-direct {v0}, Lcom/google/android/material/color/h$c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/h$c;->f(Lcom/google/android/material/color/g$f;)Lcom/google/android/material/color/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/color/h$c;->d()Lcom/google/android/material/color/h;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/material/color/g;->i(Landroid/app/Application;Lcom/google/android/material/color/h;)V

    return-void
.end method

.method public static i(Landroid/app/Application;Lcom/google/android/material/color/h;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/material/color/g$d;

    invoke-direct {v0, p1}, Lcom/google/android/material/color/g$d;-><init>(Lcom/google/android/material/color/h;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static j(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/material/color/h$c;

    invoke-direct {v0}, Lcom/google/android/material/color/h$c;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/h$c;->d()Lcom/google/android/material/color/h;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/color/g;->l(Landroid/app/Activity;Lcom/google/android/material/color/h;)V

    return-void
.end method

.method private static k(Landroid/app/Activity;ILcom/google/android/material/color/g$f;Lcom/google/android/material/color/g$e;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/color/g$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/color/g$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/material/color/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/google/android/material/color/g;->m(Landroid/content/Context;)I

    move-result p1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/material/color/g$f;->a(Landroid/app/Activity;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/material/color/o;->a(Landroid/content/Context;I)V

    .line 5
    invoke-interface {p3, p0}, Lcom/google/android/material/color/g$e;->a(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public static l(Landroid/app/Activity;Lcom/google/android/material/color/h;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/color/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/color/h;->e()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/color/h;->d()Lcom/google/android/material/color/g$f;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/color/h;->c()Lcom/google/android/material/color/g$e;

    move-result-object p1

    .line 4
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/material/color/g;->k(Landroid/app/Activity;ILcom/google/android/material/color/g$f;Lcom/google/android/material/color/g$e;)V

    return-void
.end method

.method private static m(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/material/color/g;->a:[I

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static n()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1f
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/material/color/g;->d:Ljava/util/Map;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/g$c;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/android/material/color/g;->e:Ljava/util/Map;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/g$c;

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Lcom/google/android/material/color/g$c;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static o(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/material/color/g;->p(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/material/color/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/google/android/material/color/g;->m(Landroid/content/Context;)I

    move-result p1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

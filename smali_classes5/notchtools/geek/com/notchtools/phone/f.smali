.class public Lnotchtools/geek/com/notchtools/phone/f;
.super Lnotchtools/geek/com/notchtools/core/a;
.source "VivoNotchScreen.java"


# static fields
.field private static final c:Ljava/lang/String; = "f"


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnotchtools/geek/com/notchtools/core/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/phone/f;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public c(Landroid/view/Window;)Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_0
    const-string v1, "android.util.FtFeature"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/phone/f;->a:Ljava/lang/Class;

    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/phone/f;->b:Ljava/lang/reflect/Method;

    .line 4
    iget-object v1, p0, Lnotchtools/geek/com/notchtools/phone/f;->a:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    :catchall_0
    return v0
.end method

.method public d(Landroid/view/Window;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnotchtools/geek/com/notchtools/phone/f;->c(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->b(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnotchtools/geek/com/notchtools/phone/f;->c(Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->c(Landroid/view/Window;)Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnotchtools/geek/com/notchtools/phone/f;->c(Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->d(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.class public Lnotchtools/geek/com/notchtools/b;
.super Ljava/lang/Object;
.source "NotchTools.java"

# interfaces
.implements Lnotchtools/geek/com/notchtools/core/b;


# static fields
.field private static d:Lnotchtools/geek/com/notchtools/b; = null

.field public static final e:Ljava/lang/String; = "notch_container"

.field private static final f:I

.field public static final g:I = 0x1c


# instance fields
.field private a:Lnotchtools/geek/com/notchtools/core/b;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lnotchtools/geek/com/notchtools/b;->f:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    return-void
.end method

.method static synthetic h(Lnotchtools/geek/com/notchtools/b;)Lnotchtools/geek/com/notchtools/core/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    return-object p0
.end method

.method static synthetic i(Lnotchtools/geek/com/notchtools/b;Landroid/view/Window;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    return-void
.end method

.method private j(Landroid/view/Window;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Lnotchtools/geek/com/notchtools/b;->f:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_1

    .line 3
    new-instance p1, Lnotchtools/geek/com/notchtools/phone/a;

    invoke-direct {p1}, Lnotchtools/geek/com/notchtools/phone/a;-><init>()V

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    return-void

    :cond_1
    const/16 v0, 0x1c

    if-ge p1, v0, :cond_6

    .line 4
    invoke-static {}, Lnotchtools/geek/com/notchtools/helper/a;->a()Lnotchtools/geek/com/notchtools/helper/a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lnotchtools/geek/com/notchtools/helper/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p1, Lnotchtools/geek/com/notchtools/phone/b;

    invoke-direct {p1}, Lnotchtools/geek/com/notchtools/phone/b;-><init>()V

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lnotchtools/geek/com/notchtools/helper/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Lnotchtools/geek/com/notchtools/phone/c;

    invoke-direct {p1}, Lnotchtools/geek/com/notchtools/phone/c;-><init>()V

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Lnotchtools/geek/com/notchtools/helper/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Lnotchtools/geek/com/notchtools/phone/f;

    invoke-direct {p1}, Lnotchtools/geek/com/notchtools/phone/f;-><init>()V

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Lnotchtools/geek/com/notchtools/helper/a;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    new-instance p1, Lnotchtools/geek/com/notchtools/phone/d;

    invoke-direct {p1}, Lnotchtools/geek/com/notchtools/phone/d;-><init>()V

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    goto :goto_0

    .line 13
    :cond_5
    new-instance p1, Lnotchtools/geek/com/notchtools/phone/a;

    invoke-direct {p1}, Lnotchtools/geek/com/notchtools/phone/a;-><init>()V

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    :goto_0
    return-void

    :cond_6
    if-lt p1, v0, :cond_7

    .line 14
    new-instance p1, Lnotchtools/geek/com/notchtools/phone/e;

    invoke-direct {p1}, Lnotchtools/geek/com/notchtools/phone/e;-><init>()V

    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    :cond_7
    return-void
.end method

.method public static o()Lnotchtools/geek/com/notchtools/b;
    .locals 2

    .line 1
    sget-object v0, Lnotchtools/geek/com/notchtools/b;->d:Lnotchtools/geek/com/notchtools/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lnotchtools/geek/com/notchtools/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lnotchtools/geek/com/notchtools/b;->d:Lnotchtools/geek/com/notchtools/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lnotchtools/geek/com/notchtools/b;

    invoke-direct {v1}, Lnotchtools/geek/com/notchtools/b;-><init>()V

    sput-object v1, Lnotchtools/geek/com/notchtools/b;->d:Lnotchtools/geek/com/notchtools/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lnotchtools/geek/com/notchtools/b;->d:Lnotchtools/geek/com/notchtools/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lnotchtools/geek/com/notchtools/core/b;->a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/b;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public c(Landroid/view/Window;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnotchtools/geek/com/notchtools/b;->b:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lnotchtools/geek/com/notchtools/b;->b:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lnotchtools/geek/com/notchtools/b;->c:Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0, p1}, Lnotchtools/geek/com/notchtools/core/b;->c(Landroid/view/Window;)Z

    move-result p1

    iput-boolean p1, p0, Lnotchtools/geek/com/notchtools/b;->c:Z

    .line 8
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lnotchtools/geek/com/notchtools/b;->c:Z

    return p1
.end method

.method public d(Landroid/view/Window;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Lnotchtools/geek/com/notchtools/core/b;->d(Landroid/view/Window;)I

    move-result p1

    return p1
.end method

.method public e(Landroid/view/Window;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->b(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 1

    .line 1
    new-instance v0, Lnotchtools/geek/com/notchtools/b$a;

    invoke-direct {v0, p0, p1, p2}, Lnotchtools/geek/com/notchtools/b$a;-><init>(Lnotchtools/geek/com/notchtools/b;Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    invoke-static {v0}, Lnotchtools/geek/com/notchtools/helper/d;->p(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lnotchtools/geek/com/notchtools/core/b;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    :cond_1
    return-void
.end method

.method public k(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnotchtools/geek/com/notchtools/b;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public l(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnotchtools/geek/com/notchtools/b;->f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public m(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnotchtools/geek/com/notchtools/b;->b(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public n(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnotchtools/geek/com/notchtools/b;->a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public p(Z)Lnotchtools/geek/com/notchtools/b;
    .locals 0

    .line 1
    sput-boolean p1, Lnotchtools/geek/com/notchtools/helper/b;->b:Z

    return-object p0
.end method

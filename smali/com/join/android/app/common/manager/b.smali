.class public Lcom/join/android/app/common/manager/b;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/manager/b$b;
    }
.end annotation


# static fields
.field public static final h:I = -0x67000000

.field public static i:Z


# instance fields
.field private final a:Lcom/join/android/app/common/manager/b$b;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x13

    if-lt v2, v4, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 5
    fill-array-data v2, :array_0

    .line 6
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 7
    :try_start_0
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/join/android/app/common/manager/b;->b:Z

    const/4 v4, 0x1

    .line 8
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/join/android/app/common/manager/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x4000000

    .line 11
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 12
    iput-boolean v4, p0, Lcom/join/android/app/common/manager/b;->b:Z

    :cond_0
    and-int/lit16 v2, v0, 0x400

    const/16 v5, 0x400

    if-ne v2, v5, :cond_1

    .line 13
    iput-boolean v3, p0, Lcom/join/android/app/common/manager/b;->b:Z

    :cond_1
    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 14
    iput-boolean v4, p0, Lcom/join/android/app/common/manager/b;->c:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    throw p1

    .line 17
    :cond_2
    :goto_0
    new-instance v0, Lcom/join/android/app/common/manager/b$b;

    iget-boolean v2, p0, Lcom/join/android/app/common/manager/b;->b:Z

    iget-boolean v4, p0, Lcom/join/android/app/common/manager/b;->c:Z

    const/4 v5, 0x0

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/join/android/app/common/manager/b$b;-><init>(Landroid/app/Activity;ZZLcom/join/android/app/common/manager/b$a;)V

    iput-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 18
    invoke-virtual {v0}, Lcom/join/android/app/common/manager/b$b;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    iput-boolean v3, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 20
    :cond_3
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    if-eqz v0, :cond_4

    .line 21
    invoke-direct {p0, p1, v1}, Lcom/join/android/app/common/manager/b;->t(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 22
    :cond_4
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    if-eqz v0, :cond_5

    .line 23
    invoke-direct {p0, p1, v1}, Lcom/join/android/app/common/manager/b;->s(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method private s(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    invoke-virtual {p1}, Lcom/join/android/app/common/manager/b$b;->n()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    invoke-virtual {v1}, Lcom/join/android/app/common/manager/b$b;->d()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    .line 4
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    invoke-virtual {v1}, Lcom/join/android/app/common/manager/b$b;->f()I

    move-result v1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x5

    .line 6
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private t(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    invoke-virtual {v0}, Lcom/join/android/app/common/manager/b$b;->l()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    .line 3
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    invoke-virtual {v0}, Lcom/join/android/app/common/manager/b$b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    invoke-virtual {v0}, Lcom/join/android/app/common/manager/b$b;->f()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/join/android/app/common/manager/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->e:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->d:Z

    return v0
.end method

.method public d(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/manager/b;->e:Z

    .line 2
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public i(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public j(ZLandroid/app/Activity;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/join/android/app/common/manager/b;->i:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "setExtraFlags"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 6
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/manager/b;->d:Z

    .line 2
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public o(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->i(F)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->d(F)V

    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->k(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->e(I)V

    return-void
.end method

.method public q(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->l(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->f(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->h(I)V

    return-void
.end method

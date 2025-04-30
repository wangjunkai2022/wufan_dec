.class public final Lcom/google/android/material/transition/platform/n;
.super Lcom/google/android/material/transition/platform/p;
.source "MaterialFade.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/p<",
        "Lcom/google/android/material/transition/platform/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:F = 0.8f

.field private static final e:F = 0.3f

.field private static final f:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final g:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final h:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort2:I

    sput v0, Lcom/google/android/material/transition/platform/n;->f:I

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort1:I

    sput v0, Lcom/google/android/material/transition/platform/n;->g:I

    .line 3
    sget v0, Lcom/google/android/material/R$attr;->motionEasingLinear:I

    sput v0, Lcom/google/android/material/transition/platform/n;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/transition/platform/n;->m()Lcom/google/android/material/transition/platform/d;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/platform/n;->n()Lcom/google/android/material/transition/platform/t;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/p;-><init>(Lcom/google/android/material/transition/platform/t;Lcom/google/android/material/transition/platform/t;)V

    return-void
.end method

.method private static m()Lcom/google/android/material/transition/platform/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/d;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/d;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/d;->e(F)V

    return-object v0
.end method

.method private static n()Lcom/google/android/material/transition/platform/t;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/q;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/q;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/q;->o(Z)V

    const v1, 0x3f4ccccd    # 0.8f

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/q;->l(F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/material/transition/platform/t;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/p;->a(Lcom/google/android/material/transition/platform/t;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/platform/p;->c()V

    return-void
.end method

.method e(Z)Landroid/animation/TimeInterpolator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object p1, Lcom/google/android/material/animation/a;->a:Landroid/animation/TimeInterpolator;

    return-object p1
.end method

.method f(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget p1, Lcom/google/android/material/transition/platform/n;->f:I

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Lcom/google/android/material/transition/platform/n;->g:I

    :goto_0
    return p1
.end method

.method g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/platform/n;->h:I

    return p1
.end method

.method public bridge synthetic h()Lcom/google/android/material/transition/platform/t;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/platform/p;->h()Lcom/google/android/material/transition/platform/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lcom/google/android/material/transition/platform/t;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/platform/p;->i()Lcom/google/android/material/transition/platform/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Lcom/google/android/material/transition/platform/t;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/p;->k(Lcom/google/android/material/transition/platform/t;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic l(Lcom/google/android/material/transition/platform/t;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/p;->l(Lcom/google/android/material/transition/platform/t;)V

    return-void
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/p;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/p;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

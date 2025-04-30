.class public final Lcom/google/android/material/transition/platform/o;
.super Lcom/google/android/material/transition/platform/p;
.source "MaterialFadeThrough.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/p<",
        "Lcom/google/android/material/transition/platform/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:F = 0.92f

.field private static final e:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final f:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/platform/o;->e:I

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/platform/o;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/transition/platform/o;->m()Lcom/google/android/material/transition/platform/e;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/platform/o;->n()Lcom/google/android/material/transition/platform/t;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/p;-><init>(Lcom/google/android/material/transition/platform/t;Lcom/google/android/material/transition/platform/t;)V

    return-void
.end method

.method private static m()Lcom/google/android/material/transition/platform/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/e;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/e;-><init>()V

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

    const v1, 0x3f6b851f    # 0.92f

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

.method f(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/platform/o;->e:I

    return p1
.end method

.method g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/platform/o;->f:I

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

.class public final Lcom/google/android/material/transition/n;
.super Lcom/google/android/material/transition/o;
.source "MaterialFadeThrough.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/o<",
        "Lcom/google/android/material/transition/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final C0:F = 0.92f

.field private static final D0:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final E0:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/n;->D0:I

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/n;->E0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/transition/n;->V()Lcom/google/android/material/transition/e;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/n;->W()Lcom/google/android/material/transition/s;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/o;-><init>(Lcom/google/android/material/transition/s;Lcom/google/android/material/transition/s;)V

    return-void
.end method

.method private static V()Lcom/google/android/material/transition/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/e;

    invoke-direct {v0}, Lcom/google/android/material/transition/e;-><init>()V

    return-object v0
.end method

.method private static W()Lcom/google/android/material/transition/s;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/p;

    invoke-direct {v0}, Lcom/google/android/material/transition/p;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/p;->o(Z)V

    const v1, 0x3f6b851f    # 0.92f

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/p;->l(F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic J(Lcom/google/android/material/transition/s;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/o;->J(Lcom/google/android/material/transition/s;)V

    return-void
.end method

.method public bridge synthetic L()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/o;->L()V

    return-void
.end method

.method O(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/n;->D0:I

    return p1
.end method

.method P(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/n;->E0:I

    return p1
.end method

.method public bridge synthetic Q()Lcom/google/android/material/transition/s;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/o;->Q()Lcom/google/android/material/transition/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic R()Lcom/google/android/material/transition/s;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/o;->R()Lcom/google/android/material/transition/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic T(Lcom/google/android/material/transition/s;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/transition/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/o;->T(Lcom/google/android/material/transition/s;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic U(Lcom/google/android/material/transition/s;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/o;->U(Lcom/google/android/material/transition/s;)V

    return-void
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/o;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/o;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/google/android/material/transition/l;
.super Lcom/google/android/material/transition/o;
.source "MaterialElevationScale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/o<",
        "Lcom/google/android/material/transition/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final D0:F = 0.85f


# instance fields
.field private final C0:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/l;->V(Z)Lcom/google/android/material/transition/p;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/l;->W()Lcom/google/android/material/transition/s;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/o;-><init>(Lcom/google/android/material/transition/s;Lcom/google/android/material/transition/s;)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/transition/l;->C0:Z

    return-void
.end method

.method private static V(Z)Lcom/google/android/material/transition/p;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/p;

    invoke-direct {v0, p0}, Lcom/google/android/material/transition/p;-><init>(Z)V

    const p0, 0x3f59999a    # 0.85f

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/material/transition/p;->m(F)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/material/transition/p;->l(F)V

    return-object v0
.end method

.method private static W()Lcom/google/android/material/transition/s;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/d;

    invoke-direct {v0}, Lcom/google/android/material/transition/d;-><init>()V

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

.method public X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/l;->C0:Z

    return v0
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

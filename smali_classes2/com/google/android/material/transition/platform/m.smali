.class public final Lcom/google/android/material/transition/platform/m;
.super Lcom/google/android/material/transition/platform/p;
.source "MaterialElevationScale.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/p<",
        "Lcom/google/android/material/transition/platform/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:F = 0.85f


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/platform/m;->m(Z)Lcom/google/android/material/transition/platform/q;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/platform/m;->n()Lcom/google/android/material/transition/platform/t;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/p;-><init>(Lcom/google/android/material/transition/platform/t;Lcom/google/android/material/transition/platform/t;)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/m;->d:Z

    return-void
.end method

.method private static m(Z)Lcom/google/android/material/transition/platform/q;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/q;

    invoke-direct {v0, p0}, Lcom/google/android/material/transition/platform/q;-><init>(Z)V

    const p0, 0x3f59999a    # 0.85f

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/material/transition/platform/q;->m(F)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/material/transition/platform/q;->l(F)V

    return-object v0
.end method

.method private static n()Lcom/google/android/material/transition/platform/t;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/d;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/d;-><init>()V

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

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/m;->d:Z

    return v0
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

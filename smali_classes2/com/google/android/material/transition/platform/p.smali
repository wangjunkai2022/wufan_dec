.class abstract Lcom/google/android/material/transition/platform/p;
.super Landroid/transition/Visibility;
.source "MaterialVisibility.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/google/android/material/transition/platform/t;",
        ">",
        "Landroid/transition/Visibility;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/transition/platform/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/material/transition/platform/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/transition/platform/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/material/transition/platform/t;Lcom/google/android/material/transition/platform/t;)V
    .locals 1
    .param p2    # Lcom/google/android/material/transition/platform/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/material/transition/platform/t;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/platform/p;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/transition/platform/p;->a:Lcom/google/android/material/transition/platform/t;

    .line 4
    iput-object p2, p0, Lcom/google/android/material/transition/platform/p;->b:Lcom/google/android/material/transition/platform/t;

    return-void
.end method

.method private static b(Ljava/util/List;Lcom/google/android/material/transition/platform/t;Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/google/android/material/transition/platform/t;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 1
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/transition/platform/t;->b(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/transition/platform/t;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private d(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/material/transition/platform/p;->a:Lcom/google/android/material/transition/platform/t;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/google/android/material/transition/platform/p;->b(Ljava/util/List;Lcom/google/android/material/transition/platform/t;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 4
    iget-object v2, p0, Lcom/google/android/material/transition/platform/p;->b:Lcom/google/android/material/transition/platform/t;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/google/android/material/transition/platform/p;->b(Ljava/util/List;Lcom/google/android/material/transition/platform/t;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 5
    iget-object v2, p0, Lcom/google/android/material/transition/platform/p;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/transition/platform/t;

    .line 6
    invoke-static {v1, v3, p1, p2, p3}, Lcom/google/android/material/transition/platform/p;->b(Ljava/util/List;Lcom/google/android/material/transition/platform/t;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/material/transition/platform/p;->j(Landroid/content/Context;Z)V

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/material/animation/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object v0
.end method

.method private j(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/platform/p;->f(Z)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/platform/s;->q(Landroid/transition/Transition;Landroid/content/Context;I)Z

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/platform/p;->g(Z)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/platform/p;->e(Z)Landroid/animation/TimeInterpolator;

    move-result-object p2

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/material/transition/platform/s;->r(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/transition/platform/t;)V
    .locals 1
    .param p1    # Lcom/google/android/material/transition/platform/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method e(Z)Landroid/animation/TimeInterpolator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object p1, Lcom/google/android/material/animation/a;->b:Landroid/animation/TimeInterpolator;

    return-object p1
.end method

.method f(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public h()Lcom/google/android/material/transition/platform/t;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/p;->a:Lcom/google/android/material/transition/platform/t;

    return-object v0
.end method

.method public i()Lcom/google/android/material/transition/platform/t;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/p;->b:Lcom/google/android/material/transition/platform/t;

    return-object v0
.end method

.method public k(Lcom/google/android/material/transition/platform/t;)Z
    .locals 1
    .param p1    # Lcom/google/android/material/transition/platform/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(Lcom/google/android/material/transition/platform/t;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/p;->b:Lcom/google/android/material/transition/platform/t;

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p3, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transition/platform/p;->d(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transition/platform/p;->d(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

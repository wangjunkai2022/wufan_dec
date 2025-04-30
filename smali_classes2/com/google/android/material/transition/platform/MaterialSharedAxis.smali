.class public final Lcom/google/android/material/transition/platform/MaterialSharedAxis;
.super Lcom/google/android/material/transition/platform/p;
.source "MaterialSharedAxis.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/p<",
        "Lcom/google/android/material/transition/platform/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field private static final i:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final j:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# instance fields
.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->i:I

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->j:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->m(IZ)Lcom/google/android/material/transition/platform/t;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->n()Lcom/google/android/material/transition/platform/t;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/p;-><init>(Lcom/google/android/material/transition/platform/t;Lcom/google/android/material/transition/platform/t;)V

    .line 2
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->d:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->e:Z

    return-void
.end method

.method private static m(IZ)Lcom/google/android/material/transition/platform/t;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1
    new-instance p0, Lcom/google/android/material/transition/platform/q;

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/q;-><init>(Z)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    goto :goto_0

    :cond_2
    const/16 p1, 0x30

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p1, :cond_4

    const p1, 0x800005

    goto :goto_1

    :cond_4
    const p1, 0x800003

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    return-object p0
.end method

.method private static n()Lcom/google/android/material/transition/platform/t;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/e;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/e;-><init>()V

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
    sget p1, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->i:I

    return p1
.end method

.method g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->j:I

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

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->d:I

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

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->e:Z

    return v0
.end method

.class public final Lcom/google/android/material/transition/MaterialSharedAxis;
.super Lcom/google/android/material/transition/o;
.source "MaterialSharedAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/o<",
        "Lcom/google/android/material/transition/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final E0:I = 0x0

.field public static final F0:I = 0x1

.field public static final G0:I = 0x2

.field private static final H0:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final I0:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# instance fields
.field private final C0:I

.field private final D0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/MaterialSharedAxis;->H0:I

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/MaterialSharedAxis;->I0:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/material/transition/MaterialSharedAxis;->V(IZ)Lcom/google/android/material/transition/s;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/MaterialSharedAxis;->W()Lcom/google/android/material/transition/s;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/o;-><init>(Lcom/google/android/material/transition/s;Lcom/google/android/material/transition/s;)V

    .line 2
    iput p1, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->C0:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->D0:Z

    return-void
.end method

.method private static V(IZ)Lcom/google/android/material/transition/s;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1
    new-instance p0, Lcom/google/android/material/transition/p;

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/p;-><init>(Z)V

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
    new-instance p0, Lcom/google/android/material/transition/SlideDistanceProvider;

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    goto :goto_0

    :cond_2
    const/16 p1, 0x30

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(I)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/android/material/transition/SlideDistanceProvider;

    if-eqz p1, :cond_4

    const p1, 0x800005

    goto :goto_1

    :cond_4
    const p1, 0x800003

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(I)V

    return-object p0
.end method

.method private static W()Lcom/google/android/material/transition/s;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/e;

    invoke-direct {v0}, Lcom/google/android/material/transition/e;-><init>()V

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
    sget p1, Lcom/google/android/material/transition/MaterialSharedAxis;->H0:I

    return p1
.end method

.method P(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/MaterialSharedAxis;->I0:I

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

.method public X()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->C0:I

    return v0
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->D0:Z

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

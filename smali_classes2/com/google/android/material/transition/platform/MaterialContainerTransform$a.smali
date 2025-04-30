.class Lcom/google/android/material/transition/platform/MaterialContainerTransform$a;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransform;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$e;

.field final synthetic b:Lcom/google/android/material/transition/platform/MaterialContainerTransform;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Lcom/google/android/material/transition/platform/MaterialContainerTransform$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$a;->b:Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$a;->a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$a;->a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$e;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$e;->a(Lcom/google/android/material/transition/platform/MaterialContainerTransform$e;F)V

    return-void
.end method

.class Lcom/google/android/material/progressindicator/l$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateDisjointAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/l;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/progressindicator/l;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/l$b;->a:Lcom/google/android/material/progressindicator/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l$b;->a:Lcom/google/android/material/progressindicator/l;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/l;->a()V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l$b;->a:Lcom/google/android/material/progressindicator/l;

    iget-object v0, p1, Lcom/google/android/material/progressindicator/l;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

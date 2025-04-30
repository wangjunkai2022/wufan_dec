.class Lcom/google/android/material/circularreveal/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/circularreveal/a;->c(Lcom/google/android/material/circularreveal/b;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/circularreveal/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/circularreveal/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/circularreveal/a$a;->a:Lcom/google/android/material/circularreveal/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/circularreveal/a$a;->a:Lcom/google/android/material/circularreveal/b;

    invoke-interface {p1}, Lcom/google/android/material/circularreveal/b;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/circularreveal/a$a;->a:Lcom/google/android/material/circularreveal/b;

    invoke-interface {p1}, Lcom/google/android/material/circularreveal/b;->a()V

    return-void
.end method

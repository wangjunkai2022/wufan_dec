.class Lcom/google/android/material/transition/platform/l$a;
.super Lcom/google/android/material/transition/platform/r;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/l;->n(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window;

.field final synthetic b:Lcom/google/android/material/transition/platform/l;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/platform/l;Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/l$a;->b:Lcom/google/android/material/transition/platform/l;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/l$a;->a:Landroid/view/Window;

    invoke-direct {p0}, Lcom/google/android/material/transition/platform/r;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/transition/platform/l$a;->a:Landroid/view/Window;

    invoke-static {p1}, Lcom/google/android/material/transition/platform/l;->b(Landroid/view/Window;)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/transition/platform/l$a;->a:Landroid/view/Window;

    invoke-static {p1}, Lcom/google/android/material/transition/platform/l;->a(Landroid/view/Window;)V

    return-void
.end method

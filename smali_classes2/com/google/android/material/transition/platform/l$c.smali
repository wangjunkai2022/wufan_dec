.class Lcom/google/android/material/transition/platform/l$c;
.super Lcom/google/android/material/transition/platform/r;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/l;->o(Landroid/app/Activity;Landroid/view/Window;)V
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
    iput-object p1, p0, Lcom/google/android/material/transition/platform/l$c;->b:Lcom/google/android/material/transition/platform/l;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/l$c;->a:Landroid/view/Window;

    invoke-direct {p0}, Lcom/google/android/material/transition/platform/r;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/transition/platform/l$c;->a:Landroid/view/Window;

    invoke-static {p1}, Lcom/google/android/material/transition/platform/l;->a(Landroid/view/Window;)V

    return-void
.end method

.class public Lcom/google/android/material/transition/platform/l$e;
.super Ljava/lang/Object;
.source "MaterialContainerTransformSharedElementCallback.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/google/android/material/shape/m;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/material/shape/q;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/material/shape/q;

    invoke-interface {p1}, Lcom/google/android/material/shape/q;->getShapeAppearanceModel()Lcom/google/android/material/shape/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.class Lcom/google/android/material/shape/MaterialShapeDrawable$b;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lcom/google/android/material/shape/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/MaterialShapeDrawable;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$b;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iput p2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;
    .locals 2
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/material/shape/k;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/b;

    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$b;->a:F

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/shape/b;-><init>(FLcom/google/android/material/shape/c;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.class public final Lcom/google/android/material/shape/j;
.super Lcom/google/android/material/shape/f;
.source "OffsetEdgeTreatment.java"


# instance fields
.field private final a:Lcom/google/android/material/shape/f;

.field private final b:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/f;F)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/j;->a:Lcom/google/android/material/shape/f;

    .line 3
    iput p2, p0, Lcom/google/android/material/shape/j;->b:F

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/j;->a:Lcom/google/android/material/shape/f;

    invoke-virtual {v0}, Lcom/google/android/material/shape/f;->a()Z

    move-result v0

    return v0
.end method

.method public b(FFFLcom/google/android/material/shape/o;)V
    .locals 2
    .param p4    # Lcom/google/android/material/shape/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/j;->a:Lcom/google/android/material/shape/f;

    iget v1, p0, Lcom/google/android/material/shape/j;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/f;->b(FFFLcom/google/android/material/shape/o;)V

    return-void
.end method

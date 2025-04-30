.class public final Lcom/google/android/material/color/e;
.super Ljava/lang/Object;
.source "ColorRoles.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/material/color/e;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/material/color/e;->b:I

    .line 4
    iput p3, p0, Lcom/google/android/material/color/e;->c:I

    .line 5
    iput p4, p0, Lcom/google/android/material/color/e;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/color/e;->a:I

    return v0
.end method

.method public b()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/color/e;->c:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/color/e;->b:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/color/e;->d:I

    return v0
.end method

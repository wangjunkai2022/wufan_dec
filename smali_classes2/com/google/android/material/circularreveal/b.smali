.class public interface abstract Lcom/google/android/material/circularreveal/b;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealHelper$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/b$d;,
        Lcom/google/android/material/circularreveal/b$b;,
        Lcom/google/android/material/circularreveal/b$c;,
        Lcom/google/android/material/circularreveal/b$e;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCircularRevealScrimColor()I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getRevealInfo()Lcom/google/android/material/circularreveal/b$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCircularRevealScrimColor(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setRevealInfo(Lcom/google/android/material/circularreveal/b$e;)V
    .param p1    # Lcom/google/android/material/circularreveal/b$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

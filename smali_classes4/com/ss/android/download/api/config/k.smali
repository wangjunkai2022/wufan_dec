.class public interface abstract Lcom/ss/android/download/api/config/k;
.super Ljava/lang/Object;
.source "DownloadUIFactory.java"


# virtual methods
.method public abstract a(ILandroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/download/api/download/DownloadModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b(Lcom/ss/android/download/api/model/b;)Landroid/app/Dialog;
    .param p1    # Lcom/ss/android/download/api/model/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

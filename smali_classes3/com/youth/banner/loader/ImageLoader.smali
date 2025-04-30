.class public abstract Lcom/youth/banner/loader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/youth/banner/loader/ImageLoaderInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/youth/banner/loader/ImageLoaderInterface<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createImageView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/youth/banner/loader/ImageLoader;->createImageView(Landroid/content/Context;Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public createImageView(Landroid/content/Context;Ljava/lang/Object;)Landroid/widget/ImageView;
    .locals 0

    .line 2
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

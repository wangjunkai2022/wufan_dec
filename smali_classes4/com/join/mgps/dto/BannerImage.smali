.class public Lcom/join/mgps/dto/BannerImage;
.super Ljava/lang/Object;
.source "BannerImage.java"


# instance fields
.field private container:Landroid/view/View;

.field private imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerImage;->container:Landroid/view/View;

    return-object v0
.end method

.method public getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerImage;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BannerImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContainer(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerImage;->container:Landroid/view/View;

    return-void
.end method

.method public setImageView(Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerImage;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BannerImage;->url:Ljava/lang/String;

    return-void
.end method

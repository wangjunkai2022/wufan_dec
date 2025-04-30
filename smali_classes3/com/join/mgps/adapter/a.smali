.class public Lcom/join/mgps/adapter/a;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "BannerImageAdapter2.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BannerImage;",
            ">;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BannerImage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/a;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/a;->c:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/a;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BannerImage;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/a;->c:Ljava/util/ArrayList;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/BannerImage;

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerImage;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerImage;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    const v1, 0x7f080168

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerImage;->getUrl()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, v1, p2, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    .line 10
    :cond_2
    :goto_1
    new-instance p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object p2, p0, Lcom/join/mgps/adapter/a;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    const-string p2, "http://xxx.com"

    .line 11
    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

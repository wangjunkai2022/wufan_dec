.class public Lcom/join/mgps/adapter/c1;
.super Landroid/widget/BaseAdapter;
.source "GameDetailImagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/c1$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/c1;->e:I

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/c1;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/c1;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/c1;->e:I

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/c1;->a:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/c1;->b:Landroid/view/LayoutInflater;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    .line 12
    iput p2, p0, Lcom/join/mgps/adapter/c1;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/join/mgps/dto/ImageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ImageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/c1;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/c1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ImageInfo;->setSelected(Z)V

    .line 3
    :cond_1
    iput p1, p0, Lcom/join/mgps/adapter/c1;->e:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/c1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ImageInfo;->setSelected(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/c1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/c1;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0304

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/c1$b;

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/adapter/c1$b;-><init>(Lcom/join/mgps/adapter/c1;Lcom/join/mgps/adapter/c1$a;)V

    const v0, 0x7f0906f6

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/c1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906f2

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906f5

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/c1$b;->d:Landroid/widget/ImageView;

    const v0, 0x7f0906fa

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/c1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0907e8

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/c1$b;->e:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/c1$b;

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/c1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isVideo()Z

    move-result v1

    const-string v2, "#4D000000"

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_3

    .line 12
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 17
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 19
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p3, 0x7f080168

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto/16 :goto_8

    .line 24
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 25
    iget v0, p0, Lcom/join/mgps/adapter/c1;->d:I

    if-ne v0, v1, :cond_4

    .line 26
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_3

    .line 27
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 28
    :goto_3
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 29
    :cond_5
    iget v0, p0, Lcom/join/mgps/adapter/c1;->d:I

    if-ne v0, v1, :cond_6

    .line 30
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    .line 31
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 32
    :goto_4
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :goto_5
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget v0, p0, Lcom/join/mgps/adapter/c1;->d:I

    const v2, 0x7f0712ca

    if-ne v0, v1, :cond_8

    .line 35
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    const/16 v5, 0xf

    invoke-static {v0, v1, v3, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->K(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_6

    .line 40
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/c1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 41
    :goto_6
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 42
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_7

    .line 44
    :cond_9
    iget-object v0, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/c1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/c1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 45
    :goto_7
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p1, p3, Lcom/join/mgps/adapter/c1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-object p2
.end method

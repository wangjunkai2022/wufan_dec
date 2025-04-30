.class public Lcom/join/mgps/adapter/e1;
.super Landroid/widget/BaseAdapter;
.source "GameDetailSimilarGameAdapterV1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/e1$b;
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

.field e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/adapter/e1;->e:Z

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/e1;->b:Landroid/view/LayoutInflater;

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

    iput-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/adapter/e1;->e:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/e1;->b:Landroid/view/LayoutInflater;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    .line 12
    iput p2, p0, Lcom/join/mgps/adapter/e1;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/join/mgps/dto/ImageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/adapter/e1;->e:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/e1;->a(I)Lcom/join/mgps/dto/ImageInfo;

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
    iget-object p2, p0, Lcom/join/mgps/adapter/e1;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0240

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/e1$b;

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/adapter/e1$b;-><init>(Lcom/join/mgps/adapter/e1;Lcom/join/mgps/adapter/e1$a;)V

    const v0, 0x7f0906f6

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906f2

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906f5

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/e1$b;->d:Landroid/widget/ImageView;

    const v0, 0x7f091263

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/e1$b;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f090d82

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/e1$b;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f09014c

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/e1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/e1$b;

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/e1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    move-result-object v0

    .line 12
    iget-object v1, p3, Lcom/join/mgps/adapter/e1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isVideo()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v1, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v1, p3, Lcom/join/mgps/adapter/e1$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v1, p3, Lcom/join/mgps/adapter/e1$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    .line 19
    iget-object p3, p3, Lcom/join/mgps/adapter/e1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f080168

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 20
    new-instance p3, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v1, v0}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 21
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    iget v0, p0, Lcom/join/mgps/adapter/e1;->d:I

    const/4 v1, 0x1

    const v4, 0x7f0711cc

    if-ne v0, v1, :cond_5

    .line 24
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-boolean v0, p0, Lcom/join/mgps/adapter/e1;->e:Z

    const v1, 0x7f07117d

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    iget-object v2, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 28
    iget-object v2, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f071110

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 29
    iget-object v2, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_1

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 36
    :goto_1
    iget-object p1, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 37
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/adapter/e1;->e:Z

    if-eqz v0, :cond_7

    .line 38
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 40
    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0712fa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 41
    iget-object v1, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_2

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_2

    .line 47
    :cond_8
    iget-object v0, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/e1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07110e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 48
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/e1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object p1, p3, Lcom/join/mgps/adapter/e1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-object p2
.end method

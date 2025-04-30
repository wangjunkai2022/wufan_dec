.class public Lcom/join/mgps/adapter/n;
.super Landroid/widget/BaseAdapter;
.source "DiscoveryBottomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/n$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/drawee/generic/RoundingParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/n;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/n;->b:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070db7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 5
    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/n;->c:Lcom/facebook/drawee/generic/RoundingParams;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;

    return-object p1
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n;->b:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/n;->a(I)Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/join/mgps/adapter/n;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/n$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/n$a;-><init>(Lcom/join/mgps/adapter/n;)V

    .line 3
    iget-object p3, p0, Lcom/join/mgps/adapter/n;->a:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c02f3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090014

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0}, Lcom/join/mgps/adapter/n$a;->b(Lcom/join/mgps/adapter/n$a;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090016

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/join/mgps/adapter/n$a;->d(Lcom/join/mgps/adapter/n$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f090017

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/join/mgps/adapter/n$a;->f(Lcom/join/mgps/adapter/n$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f090015

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/join/mgps/adapter/n$a;->h(Lcom/join/mgps/adapter/n$a;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/n$a;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 10
    :goto_0
    invoke-static {p2}, Lcom/join/mgps/adapter/n$a;->a(Lcom/join/mgps/adapter/n$a;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;->getIcon_src()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/n;->c:Lcom/facebook/drawee/generic/RoundingParams;

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 11
    invoke-static {p2}, Lcom/join/mgps/adapter/n$a;->c(Lcom/join/mgps/adapter/n$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-static {p2}, Lcom/join/mgps/adapter/n$a;->e(Lcom/join/mgps/adapter/n$a;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eca\u65e5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;->getToday_posts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;->isIs_follow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-static {p2}, Lcom/join/mgps/adapter/n$a;->g(Lcom/join/mgps/adapter/n$a;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {p2}, Lcom/join/mgps/adapter/n$a;->g(Lcom/join/mgps/adapter/n$a;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p3
.end method

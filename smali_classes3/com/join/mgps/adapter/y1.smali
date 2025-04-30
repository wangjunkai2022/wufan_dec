.class public Lcom/join/mgps/adapter/y1;
.super Landroid/widget/BaseAdapter;
.source "GameOLGiftPackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/y1$d;,
        Lcom/join/mgps/adapter/y1$e;,
        Lcom/join/mgps/adapter/y1$c;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/adapter/y1;->c:Ljava/util/List;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/y1;->a:Landroid/view/LayoutInflater;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/y1;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/y1;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/y1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/y1;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/y1;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/y1;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public c(I)Lk1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/a;

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y1;->c:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/y1;->c(I)Lk1/a;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/a;

    .line 2
    invoke-virtual {p1}, Lk1/a;->d()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/y1;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_1

    if-eq p3, v0, :cond_0

    :goto_0
    move-object v3, v2

    move-object v4, v3

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/y1$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/y1$d;-><init>(Lcom/join/mgps/adapter/y1;)V

    .line 3
    iget-object v3, p0, Lcom/join/mgps/adapter/y1;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f0c02ad

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090a39

    .line 4
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$d;->b(Lcom/join/mgps/adapter/y1$d;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0905ee

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$d;->d(Lcom/join/mgps/adapter/y1$d;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v4, 0x7f090a37

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$d;->f(Lcom/join/mgps/adapter/y1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090cac

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$d;->h(Lcom/join/mgps/adapter/y1$d;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v4, 0x7f090a3a

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$d;->j(Lcom/join/mgps/adapter/y1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090011

    .line 9
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$d;->l(Lcom/join/mgps/adapter/y1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f09000f

    .line 10
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$d;->n(Lcom/join/mgps/adapter/y1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090010

    .line 11
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$d;->p(Lcom/join/mgps/adapter/y1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 12
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p2

    move-object p2, v3

    :goto_1
    move-object v3, v2

    goto/16 :goto_3

    .line 13
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/y1$e;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/y1$e;-><init>(Lcom/join/mgps/adapter/y1;)V

    .line 14
    iget-object v3, p0, Lcom/join/mgps/adapter/y1;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f0c02b0

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f091023

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$e;->b(Lcom/join/mgps/adapter/y1$e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 16
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v5, v3

    move-object v3, p2

    move-object p2, v5

    goto :goto_3

    .line 17
    :cond_2
    new-instance p2, Lcom/join/mgps/adapter/y1$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/y1$c;-><init>(Lcom/join/mgps/adapter/y1;)V

    .line 18
    iget-object v3, p0, Lcom/join/mgps/adapter/y1;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f0c02af

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090092

    .line 19
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/y1$c;->b(Lcom/join/mgps/adapter/y1$c;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v2, p2

    move-object p2, v3

    :goto_2
    move-object v3, v4

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_6

    if-eq p3, v1, :cond_5

    if-eq p3, v0, :cond_4

    goto/16 :goto_0

    .line 21
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/y1$d;

    move-object v4, v3

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/y1$e;

    move-object v4, v2

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/y1$c;

    move-object v4, v2

    move-object v2, v3

    goto :goto_2

    :goto_3
    if-eqz p3, :cond_a

    if-eq p3, v1, :cond_9

    if-eq p3, v0, :cond_7

    goto/16 :goto_5

    .line 24
    :cond_7
    iget-object p3, p0, Lcom/join/mgps/adapter/y1;->c:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/a;

    .line 25
    invoke-virtual {p1}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 26
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->a(Lcom/join/mgps/adapter/y1$d;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p3

    const v0, 0x7f0807b1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 27
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->c(Lcom/join/mgps/adapter/y1$d;)Landroid/widget/ImageView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->e(Lcom/join/mgps/adapter/y1$d;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->k(Lcom/join/mgps/adapter/y1$d;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->m(Lcom/join/mgps/adapter/y1$d;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->o(Lcom/join/mgps/adapter/y1$d;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->C(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result p3

    if-nez p3, :cond_8

    .line 33
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->i(Lcom/join/mgps/adapter/y1$d;)Landroid/widget/TextView;

    move-result-object p3

    const-string v0, "\u9886\u53d6"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 34
    :cond_8
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->i(Lcom/join/mgps/adapter/y1$d;)Landroid/widget/TextView;

    move-result-object p3

    const-string v0, "\u67e5\u770b"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_4
    invoke-static {v4}, Lcom/join/mgps/adapter/y1$d;->g(Lcom/join/mgps/adapter/y1$d;)Landroid/widget/RelativeLayout;

    move-result-object p3

    new-instance v0, Lcom/join/mgps/adapter/y1$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/y1$b;-><init>(Lcom/join/mgps/adapter/y1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 36
    :cond_9
    iget-object p3, p0, Lcom/join/mgps/adapter/y1;->c:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/a;

    invoke-virtual {p1}, Lk1/a;->e()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {v3}, Lcom/join/mgps/adapter/y1$e;->a(Lcom/join/mgps/adapter/y1$e;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 38
    :cond_a
    iget-object p3, p0, Lcom/join/mgps/adapter/y1;->c:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/a;

    invoke-virtual {p1}, Lk1/a;->b()Lcom/join/mgps/dto/GameOLHeadAdBean;

    move-result-object p1

    .line 39
    invoke-static {v2}, Lcom/join/mgps/adapter/y1$c;->a(Lcom/join/mgps/adapter/y1$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p3

    const v0, 0x7f080168

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 40
    invoke-static {v2}, Lcom/join/mgps/adapter/y1$c;->a(Lcom/join/mgps/adapter/y1$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p3

    new-instance v0, Lcom/join/mgps/adapter/y1$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/y1$a;-><init>(Lcom/join/mgps/adapter/y1;Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

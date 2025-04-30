.class public Lcom/join/mgps/adapter/g;
.super Landroid/widget/BaseAdapter;
.source "CodesBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/g$c;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/ExtBean;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/g;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/g;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/g;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/g;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/g$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/g$c;-><init>(Lcom/join/mgps/adapter/g;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/g;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c00ee

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09087e

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/g$c;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0905e5

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/g$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0905ed

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/g$c;->c:Landroid/widget/TextView;

    const v0, 0x7f0905ec

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/g$c;->d:Landroid/widget/TextView;

    const v0, 0x7f090db1

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/g$c;->e:Landroid/widget/TextView;

    const v0, 0x7f090db2

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/g$c;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 12
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_begin()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u81f3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/adapter/g;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v0

    const v1, 0x7f080a6e

    const v2, -0x577e7

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 19
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8fc7\u671f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    const v1, -0x767677

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    const v1, 0x7f080a6a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    const-string v3, "\u590d\u5236"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    const-string v3, "\u9886\u53d6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 28
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/g$c;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/adapter/g$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/g$a;-><init>(Lcom/join/mgps/adapter/g;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p2, p2, Lcom/join/mgps/adapter/g$c;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/adapter/g$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/g$b;-><init>(Lcom/join/mgps/adapter/g;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

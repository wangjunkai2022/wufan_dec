.class public Lcom/join/mgps/adapter/h;
.super Landroid/widget/BaseAdapter;
.source "CodesRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/h$c;
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

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/h;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/h;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/h;->c:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/adapter/h;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/h;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h;->c:Ljava/util/List;

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
    .locals 6

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/h$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/h$c;-><init>(Lcom/join/mgps/adapter/h;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/h;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c02ad

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0908cc

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090a39

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0905ee

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->c:Landroid/widget/ImageView;

    const v0, 0x7f090a37

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->d:Landroid/widget/TextView;

    const v0, 0x7f090cac

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f090a3a

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->f:Landroid/widget/TextView;

    const v0, 0x7f090011

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->g:Landroid/widget/TextView;

    const v0, 0x7f09000f

    .line 10
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->h:Landroid/widget/TextView;

    const v0, 0x7f090010

    .line 11
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/h$c;->i:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/h$c;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 15
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f080168

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/h;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 16
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->C(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 23
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->f:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8fc7\u671f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->f:Landroid/widget/TextView;

    const-string v1, "\u590d\u5236"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->f:Landroid/widget/TextView;

    const-string v1, "\u9886\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/h$c;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/adapter/h$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/h$a;-><init>(Lcom/join/mgps/adapter/h;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p2, p2, Lcom/join/mgps/adapter/h$c;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/adapter/h$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/h$b;-><init>(Lcom/join/mgps/adapter/h;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

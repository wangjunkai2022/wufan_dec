.class public Lcom/join/mgps/adapter/s0;
.super Landroid/widget/BaseAdapter;
.source "GamDetialGiftMoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/s0$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/s0;->c:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/s0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/s0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/s0;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s0;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/s0;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/s0;->b:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s0;->b:Ljava/util/List;

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
    .locals 4

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/s0;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0296

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/s0$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/s0$b;-><init>(Lcom/join/mgps/adapter/s0;)V

    const v0, 0x7f0902eb

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/s0$b;->c:Landroid/widget/TextView;

    const v0, 0x7f090c02

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/s0$b;->b:Landroid/widget/TextView;

    const v0, 0x7f09100f

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/s0$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0905d8

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/s0$b;->d:Landroid/widget/Button;

    const v0, 0x7f090c58

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p3, Lcom/join/mgps/adapter/s0$b;->e:Landroid/widget/ProgressBar;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/s0$b;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/s0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/s0$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    move-result v0

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 15
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 16
    iget-object v1, p3, Lcom/join/mgps/adapter/s0$b;->d:Landroid/widget/Button;

    const-string v2, "\u67e5\u770b"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 17
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/s0$b;->d:Landroid/widget/Button;

    const-string v2, "\u9886\u53d6"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_3
    iget-object v1, p3, Lcom/join/mgps/adapter/s0$b;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5269\u4f59"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v1, p3, Lcom/join/mgps/adapter/s0$b;->e:Landroid/widget/ProgressBar;

    rsub-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 20
    iget-object v0, p3, Lcom/join/mgps/adapter/s0$b;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u793c\u5305\u5185\u5bb9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p3, Lcom/join/mgps/adapter/s0$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p3, p3, Lcom/join/mgps/adapter/s0$b;->d:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/adapter/s0$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/s0$a;-><init>(Lcom/join/mgps/adapter/s0;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

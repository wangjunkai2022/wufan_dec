.class public Lcom/join/mgps/adapter/s2;
.super Landroid/widget/BaseAdapter;
.source "MGInformationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/s2$b;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/ExtBean;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
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
    iput-object p1, p0, Lcom/join/mgps/adapter/s2;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;",
            "Lcom/join/mgps/dto/ExtBean;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/s2;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/s2;->c:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/adapter/s2;->a:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/s2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/s2;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s2;->c:Ljava/util/List;

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
    new-instance p2, Lcom/join/mgps/adapter/s2$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/s2$b;-><init>(Lcom/join/mgps/adapter/s2;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/s2;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c02d7

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09069d

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/s2$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0910c0

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/s2$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0910b1

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/s2$b;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/s2$b;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/s2;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/InformationListDataBean;

    .line 9
    iget-object v1, p2, Lcom/join/mgps/adapter/s2$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/adapter/s2;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080168

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v1, p2, Lcom/join/mgps/adapter/s2$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getMaterial()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/adapter/s2;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 11
    iget-object v1, p2, Lcom/join/mgps/adapter/s2$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p2, Lcom/join/mgps/adapter/s2$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getPraise()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p2, Lcom/join/mgps/adapter/s2$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/adapter/s2$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/adapter/s2$a;-><init>(Lcom/join/mgps/adapter/s2;Lcom/join/mgps/dto/InformationListDataBean;I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

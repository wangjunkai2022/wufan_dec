.class public Lcom/join/mgps/adapter/t0;
.super Landroid/widget/BaseAdapter;
.source "GamdetialInformationStrategyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/t0$d;,
        Lcom/join/mgps/adapter/t0$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/t0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/t0$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/t0$d;-><init>(Lcom/join/mgps/adapter/t0;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c046c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09087d

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    invoke-virtual {v3, p3, p3, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f090761

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, p2, Lcom/join/mgps/adapter/t0$d;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/join/mgps/adapter/t0$d;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f090c7b

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/t0$d;->a:Landroid/widget/TextView;

    const v1, 0x7f090a33

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/t0$d;->g:Landroid/widget/TextView;

    const v1, 0x7f090764

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/t0$d;->e:Landroid/widget/TextView;

    const v1, 0x7f090c98

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/t0$d;->b:Landroid/widget/TextView;

    const v1, 0x7f09124b

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/t0$d;->c:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/t0$d;

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/t0;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x8

    if-lez v1, :cond_1

    .line 18
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-static {v1, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 19
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_1
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getCommit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getView()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTimes()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/c;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "#8dbbec"

    .line 27
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RecommendInfomationBean;->setType_color(Ljava/lang/String;)V

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    iget-object v1, p2, Lcom/join/mgps/adapter/t0$d;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object p3, p2, Lcom/join/mgps/adapter/t0$d;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object p2, p2, Lcom/join/mgps/adapter/t0$d;->g:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 32
    :cond_3
    iget-object p1, p2, Lcom/join/mgps/adapter/t0$d;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-object v0
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/join/mgps/adapter/t0;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendInfomationBean;

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0141

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/join/mgps/adapter/t0$c;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/t0$c;-><init>(Lcom/join/mgps/adapter/t0;Landroid/view/View;)V

    const v0, 0x7f090764

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/t0$c;->f:Landroid/widget/TextView;

    const v0, 0x7f090708

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/t0$c;->g:Landroid/widget/TextView;

    const v0, 0x7f090a33

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/t0$c;->h:Landroid/widget/TextView;

    const v0, 0x7f090c7b

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/t0$c;->c:Landroid/widget/TextView;

    const v0, 0x7f090c98

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/t0$c;->d:Landroid/widget/TextView;

    const v0, 0x7f09124b

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/t0$c;->e:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/t0$c;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    .line 12
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "#8dbbec"

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RecommendInfomationBean;->setType_color(Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x8

    const-string v2, ""

    if-eqz v0, :cond_3

    .line 16
    :try_start_1
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getCommit()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getView()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTimes()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/c;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p3, Lcom/join/mgps/adapter/t0$c;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p3, p3, Lcom/join/mgps/adapter/t0$c;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/t0;->f(Landroid/widget/RelativeLayout;Lcom/join/mgps/dto/RecommendInfomationBean;)V

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPost_id()I

    move-result p1

    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/t0;->h(Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private f(Landroid/widget/RelativeLayout;Lcom/join/mgps/dto/RecommendInfomationBean;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->c:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/t0;->e()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/t0;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    new-array v8, v7, [I

    .line 5
    fill-array-data v8, :array_0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    .line 6
    aget v1, v8, v9

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v9, v1, :cond_1

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v9

    add-int/lit8 v5, v9, 0x0

    move-object v1, p0

    move v3, v9

    move-object v6, v0

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/t0;->g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;I[Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x7f090745
        0x7f090746
        0x7f090747
    .end array-data
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t0;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->b:Ljava/util/List;

    return-object v0
.end method

.method e()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07064e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->c:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/t0;->e()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/t0;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/join/mgps/adapter/t0;->c:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    if-lez p2, :cond_1

    .line 6
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12
    sget-object p2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 13
    new-instance p2, Lcom/join/mgps/adapter/t0$a;

    invoke-direct {p2, p0, p4, p5}, Lcom/join/mgps/adapter/t0$a;-><init>(Lcom/join/mgps/adapter/t0;I[Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->b:Ljava/util/List;

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

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/t0;->getItemViewType(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/t0;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RecommendInfomationBean;

    const/4 v2, 0x1

    const-string v3, "Strategy"

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "222"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/t0;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "111"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/t0;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public h(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/t0$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/t0$b;-><init>(Lcom/join/mgps/adapter/t0;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

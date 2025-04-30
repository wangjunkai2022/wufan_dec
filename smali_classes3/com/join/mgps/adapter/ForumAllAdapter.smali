.class public Lcom/join/mgps/adapter/ForumAllAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumAllAdapter$d;,
        Lcom/join/mgps/adapter/ForumAllAdapter$c;,
        Lcom/join/mgps/adapter/ForumAllAdapter$f;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e;,
        Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumAllAdapter$e;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout$LayoutParams;

.field d:Lcom/join/mgps/adapter/ForumAllAdapter$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumAllAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumAllAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c03f2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090a46

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f09050a

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f09050d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->d:Landroid/widget/TextView;

    .line 7
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f090506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->m:Landroid/widget/TextView;

    .line 8
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f09052e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->e:Landroid/widget/TextView;

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f090526

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->f:Landroid/widget/TextView;

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f090509

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->g:Landroid/widget/TextView;

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f090503

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->i:Landroid/widget/LinearLayout;

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f0904fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->j:Landroid/widget/LinearLayout;

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f0904f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->k:Landroid/widget/LinearLayout;

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f090501

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->l:Landroid/widget/RelativeLayout;

    .line 15
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f09052d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->n:Landroid/widget/TextView;

    .line 16
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    const v1, 0x7f090507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumAllAdapter$e$d;

    if-nez p1, :cond_1

    return-object p2

    .line 19
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumAllAdapter$e$d;->a:Lcom/join/mgps/dto/ForumBean;

    iget-object v1, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    invoke-direct {p0, v0, v1, p3}, Lcom/join/mgps/adapter/ForumAllAdapter;->d(Lcom/join/mgps/dto/ForumBean;Landroid/view/View;Lcom/join/mgps/adapter/ForumAllAdapter$c;)V

    .line 24
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumAllAdapter$e$d;->a:Lcom/join/mgps/dto/ForumBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean;->is_follow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    const-string v1, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 27
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    const v1, -0x575758

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 28
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    const v1, 0x7f080304

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 29
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    const-string v1, "\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 31
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 32
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    const v1, 0x7f080309

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 33
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumAllAdapter$e$d;->a:Lcom/join/mgps/dto/ForumBean;

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->g(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private b(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method private d(Lcom/join/mgps/dto/ForumBean;Landroid/view/View;Lcom/join/mgps/adapter/ForumAllAdapter$c;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getUsers()I

    move-result v1

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getPosts()I

    move-result v1

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getFollow_count()I

    move-result v1

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->h(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getIcon_src()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 12
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->h(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_3

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumAllAdapter$e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumAllAdapter$e;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public f(Lcom/join/mgps/adapter/ForumAllAdapter$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->d:Lcom/join/mgps/adapter/ForumAllAdapter$d;

    return-void
.end method

.method public g(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumAllAdapter$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumAllAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumAllAdapter;Lcom/join/mgps/dto/ForumBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumAllAdapter$e;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumAllAdapter$e;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumAllAdapter$e;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumAllAdapter$e;->b()Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;->FORUM_ITEM:Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumAllAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method h(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumAllAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumAllAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumAllAdapter;Lcom/join/mgps/dto/ForumBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

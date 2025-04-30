.class public Lcom/join/mgps/adapter/r0;
.super Landroid/widget/BaseAdapter;
.source "FriendMsgRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/r0$a;,
        Lcom/join/mgps/adapter/r0$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:Lcom/join/mgps/adapter/r0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/r0;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/r0;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/r0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/r0;->g(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/r0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/r0;->i(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/r0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/r0;->h(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic g(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/r0;->c:Lcom/join/mgps/adapter/r0$a;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/r0$a;->k(Lcom/join/mgps/dto/FriendBean;)V

    :cond_0
    return-void
.end method

.method private synthetic h(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/r0;->c:Lcom/join/mgps/adapter/r0$a;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/r0$a;->r(Lcom/join/mgps/dto/FriendBean;)V

    :cond_0
    return-void
.end method

.method private synthetic i(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/r0;->c:Lcom/join/mgps/adapter/r0$a;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/r0$a;->w(Lcom/join/mgps/dto/FriendBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(I)Lcom/join/mgps/dto/FriendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/FriendBean;

    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r0;->a:Ljava/util/List;

    return-object v0
.end method

.method public f()Lcom/join/mgps/adapter/r0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r0;->c:Lcom/join/mgps/adapter/r0$a;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/r0;->d(I)Lcom/join/mgps/dto/FriendBean;

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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/r0$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/r0$b;-><init>(Lcom/join/mgps/adapter/r0;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/r0;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c02fa

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f090126

    .line 3
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/r0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090acd

    .line 4
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/r0$b;->b:Landroid/widget/TextView;

    const v1, 0x7f090a98

    .line 5
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/r0$b;->c:Landroid/widget/TextView;

    const v1, 0x7f09032e

    .line 6
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/r0$b;->d:Landroid/widget/TextView;

    const v1, 0x7f09003a

    .line 7
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/r0$b;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/r0$b;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/r0;->d(I)Lcom/join/mgps/dto/FriendBean;

    move-result-object p1

    .line 11
    iget-object v1, p2, Lcom/join/mgps/adapter/r0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    iget-object v1, p2, Lcom/join/mgps/adapter/r0$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p2, Lcom/join/mgps/adapter/r0$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRequestIfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f080b5a

    .line 15
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    iget-object v1, p2, Lcom/join/mgps/adapter/r0$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p2, Lcom/join/mgps/adapter/r0$b;->e:Landroid/widget/TextView;

    const v1, 0x7f080b47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p2, Lcom/join/mgps/adapter/r0$b;->e:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    const-string v0, "#FF1E2025"

    .line 19
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    iget-object v0, p2, Lcom/join/mgps/adapter/r0$b;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p2, Lcom/join/mgps/adapter/r0$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/r0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 22
    iget-object v0, p2, Lcom/join/mgps/adapter/r0$b;->e:Landroid/widget/TextView;

    const-string v1, "#FFB5CBD5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u63a5\u53d7"

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "\u5df2\u63a5\u53d7"

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "\u5df2\u62d2\u7edd"

    goto :goto_2

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-string v0, "\u5df2\u8fc7\u671f"

    goto :goto_2

    :cond_5
    const-string v0, ""

    .line 27
    :goto_2
    iget-object v1, p2, Lcom/join/mgps/adapter/r0$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p2, Lcom/join/mgps/adapter/r0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/adapter/o0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/o0;-><init>(Lcom/join/mgps/adapter/r0;Lcom/join/mgps/dto/FriendBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p2, Lcom/join/mgps/adapter/r0$b;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/adapter/q0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/q0;-><init>(Lcom/join/mgps/adapter/r0;Lcom/join/mgps/dto/FriendBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    move-result v0

    if-nez v0, :cond_6

    .line 31
    iget-object p2, p2, Lcom/join/mgps/adapter/r0$b;->e:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/adapter/p0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/p0;-><init>(Lcom/join/mgps/adapter/r0;Lcom/join/mgps/dto/FriendBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 32
    :cond_6
    iget-object p1, p2, Lcom/join/mgps/adapter/r0$b;->e:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-object p3
.end method

.method public j(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r0;->a:Ljava/util/List;

    return-void
.end method

.method public k(Lcom/join/mgps/adapter/r0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r0;->c:Lcom/join/mgps/adapter/r0$a;

    return-void
.end method

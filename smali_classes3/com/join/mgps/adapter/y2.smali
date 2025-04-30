.class public Lcom/join/mgps/adapter/y2;
.super Landroid/widget/BaseAdapter;
.source "MemberFunAdapter1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/y2$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/y2;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/y2;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/y2;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/y2;Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/y2;->c(Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "?"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&game_id="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/adapter/y2;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?game_id="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/adapter/y2;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/y2;->b:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(I)Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y2;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/y2;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y2;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/y2;->b(I)Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;

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

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/y2$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/y2$a;-><init>(Lcom/join/mgps/adapter/y2;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/y2;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c035a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090acd

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/y2$a;->a:Landroid/widget/TextView;

    const v0, 0x7f09067e

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/y2$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/y2$a;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/y2;->b(I)Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/y2;->b(I)Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;

    move-result-object p1

    .line 10
    iget-object v0, p2, Lcom/join/mgps/adapter/y2$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p2, Lcom/join/mgps/adapter/y2$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;->getPic()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    new-instance p2, Lcom/join/mgps/adapter/x2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x2;-><init>(Lcom/join/mgps/adapter/y2;Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

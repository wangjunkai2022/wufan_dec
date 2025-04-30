.class Lcom/join/mgps/adapter/m5$a;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m5;->y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field final synthetic d:Lcom/join/mgps/adapter/m5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m5;Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5$a;->d:Lcom/join/mgps/adapter/m5;

    iput-object p2, p0, Lcom/join/mgps/adapter/m5$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/adapter/m5$a;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/join/mgps/adapter/m5$a;->c:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/join/mgps/adapter/m5$a;->a:Landroid/content/Context;

    const-class p4, Lcom/join/mgps/activity/ImagePagerActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/m5$a;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m5$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/m5$a;->b:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p2, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p5, p0, Lcom/join/mgps/adapter/m5$a;->c:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    if-nez p3, :cond_1

    .line 6
    new-instance p1, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    invoke-direct {p1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 7
    iget-object p3, p0, Lcom/join/mgps/adapter/m5$a;->c:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->n(Ljava/lang/String;)V

    .line 8
    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/join/mgps/adapter/m5$a;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/adapter/FullScreenActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_1

    :cond_1
    const-string p4, "image_urls"

    .line 10
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "image_index"

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    iget-object p2, p0, Lcom/join/mgps/adapter/m5$a;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

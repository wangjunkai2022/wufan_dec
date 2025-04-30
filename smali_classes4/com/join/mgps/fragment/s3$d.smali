.class Lcom/join/mgps/fragment/s3$d;
.super Ljava/lang/Object;
.source "PaPaBannerListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/s3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/s3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/s3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/s3$d;->a:Lcom/join/mgps/fragment/s3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/dto/AppBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBean;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s3$d;->a:Lcom/join/mgps/fragment/s3;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/s3;->V(Lcom/join/mgps/dto/AppBean;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/dto/CollectionInfo;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionInfo;

    .line 6
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "4"

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionInfo;->getCollection_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/s3$d;->a:Lcom/join/mgps/fragment/s3;

    invoke-static {v1}, Lcom/join/mgps/fragment/s3;->N(Lcom/join/mgps/fragment/s3;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameHeadAd$SubInfo;

    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/s3$d;->a:Lcom/join/mgps/fragment/s3;

    invoke-static {v1}, Lcom/join/mgps/fragment/s3;->N(Lcom/join/mgps/fragment/s3;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_2
    :goto_0
    return-void
.end method

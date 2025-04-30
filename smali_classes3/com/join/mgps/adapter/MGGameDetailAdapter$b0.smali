.class Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoData;->getSub()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;->a:Ljava/util/List;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoData;->getSub()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoData;->getSub()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoBean;

    .line 6
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getJump_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.class Lcom/join/mgps/adapter/MGGameDetailAdapter$p;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->S(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameDetialStrategyTag;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GameDetialStrategyTag;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->a:Lcom/join/mgps/dto/GameDetialStrategyTag;

    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/dto/DetialIntentBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->a:Lcom/join/mgps/dto/GameDetialStrategyTag;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_id()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetialIntentBean;->setStartegyTab(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetialIntentBean;->setStrategyTags(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->Z0(Landroid/content/Context;)Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;->a(Lcom/join/mgps/dto/DetialIntentBean;)Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

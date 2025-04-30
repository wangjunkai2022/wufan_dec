.class Lcom/join/mgps/adapter/w4$a;
.super Ljava/lang/Object;
.source "RankingItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/w4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/w4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/w4;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/w4$a;->c:Lcom/join/mgps/adapter/w4;

    iput-object p2, p0, Lcom/join/mgps/adapter/w4$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    iput p3, p0, Lcom/join/mgps/adapter/w4$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/w4$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/w4$a;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->a(Lcom/join/mgps/adapter/w4;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home"

    goto :goto_0

    :cond_0
    const-string v0, "ranking"

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/w4$a;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v1}, Lcom/join/mgps/adapter/w4;->b(Lcom/join/mgps/adapter/w4;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    iget-object v2, p0, Lcom/join/mgps/adapter/w4$a;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v2}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/psk/eventmodule/StatFactory$Companion;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/StatFactory;

    move-result-object v7

    new-instance v8, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;

    sget-object v9, Lcom/psk/eventmodule/Event;->click:Lcom/psk/eventmodule/Event;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/psk/eventmodule/StatFactory$SpmData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/adapter/w4$a;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "wufun"

    const-string v4, "ranking"

    move-object v1, v11

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/psk/eventmodule/StatFactory$SpmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v5

    iget-object v1, p0, Lcom/join/mgps/adapter/w4$a;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v6

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;-><init>(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    .line 8
    invoke-virtual {v7, v8}, Lcom/psk/eventmodule/StatFactory;->sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-ranking-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/join/mgps/adapter/w4$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 13
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/w4$a;->c:Lcom/join/mgps/adapter/w4;

    invoke-static {v0}, Lcom/join/mgps/adapter/w4;->c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_2
    return-void
.end method

.class Lcom/join/mgps/activity/f2$c;
.super Ljava/lang/Object;
.source "PapaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/f2;->i1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/VipPopData;

.field final synthetic b:Lcom/join/mgps/activity/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/f2;Lcom/join/mgps/dto/VipPopData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    iput-object p2, p0, Lcom/join/mgps/activity/f2$c;->a:Lcom/join/mgps/dto/VipPopData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->a:Lcom/join/mgps/dto/VipPopData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/VipPopData;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v0

    const-string v1, "http://www.baidu.com"

    const/16 v2, 0x309

    if-ne v0, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->P(Lcom/join/mgps/activity/f2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v0

    const/16 v2, 0x378

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->P(Lcom/join/mgps/activity/f2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_2

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->P(Lcom/join/mgps/activity/f2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goVip(Landroid/content/Context;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    invoke-static {v1}, Lcom/join/mgps/activity/f2;->P(Lcom/join/mgps/activity/f2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :goto_0
    return-void
.end method

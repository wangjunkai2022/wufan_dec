.class Lcom/join/mgps/activity/GamePaiWeiActivty$m;
.super Ljava/lang/Object;
.source "GamePaiWeiActivty.java"

# interfaces
.implements Lcom/join/mgps/customview/AutoScrollViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->I(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->u(Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->l(Lcom/join/mgps/activity/GamePaiWeiActivty;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

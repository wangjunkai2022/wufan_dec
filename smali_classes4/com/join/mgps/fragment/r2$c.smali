.class Lcom/join/mgps/fragment/r2$c;
.super Ljava/lang/Object;
.source "GameOlNoOpenTestFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r2;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/r2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/r2$c;->a:Lcom/join/mgps/fragment/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/r2$c;->a:Lcom/join/mgps/fragment/r2;

    iget-object p1, p1, Lcom/join/mgps/fragment/r2;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p3, p1, :cond_2

    if-gez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/r2$c;->a:Lcom/join/mgps/fragment/r2;

    iget-object p1, p1, Lcom/join/mgps/fragment/r2;->l:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/a;

    .line 3
    invoke-virtual {p1}, Lk1/a;->d()I

    move-result p2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/r2$c;->a:Lcom/join/mgps/fragment/r2;

    iget-object p2, p2, Lcom/join/mgps/fragment/r2;->l:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk1/a;

    invoke-virtual {p2}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GameOLNoOpenTestBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/r2$c;->a:Lcom/join/mgps/fragment/r2;

    invoke-static {p3}, Lcom/join/mgps/fragment/r2;->P(Lcom/join/mgps/fragment/r2;)Landroid/app/Activity;

    move-result-object p3

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_2
    :goto_0
    return-void
.end method

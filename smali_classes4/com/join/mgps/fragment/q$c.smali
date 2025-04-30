.class Lcom/join/mgps/fragment/q$c;
.super Ljava/lang/Object;
.source "CollectionModuleFourFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/q;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q$c;->a:Lcom/join/mgps/fragment/q;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/q$c;->a:Lcom/join/mgps/fragment/q;

    invoke-static {p1}, Lcom/join/mgps/fragment/q;->O(Lcom/join/mgps/fragment/q;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p3, p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/q$c;->a:Lcom/join/mgps/fragment/q;

    invoke-static {p1}, Lcom/join/mgps/fragment/q;->O(Lcom/join/mgps/fragment/q;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/q$c;->a:Lcom/join/mgps/fragment/q;

    invoke-static {p1}, Lcom/join/mgps/fragment/q;->O(Lcom/join/mgps/fragment/q;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/q$c;->a:Lcom/join/mgps/fragment/q;

    invoke-static {p3}, Lcom/join/mgps/fragment/q;->P(Lcom/join/mgps/fragment/q;)Landroid/content/Context;

    move-result-object p3

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 7
    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_1
    :goto_0
    return-void
.end method

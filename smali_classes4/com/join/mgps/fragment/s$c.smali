.class Lcom/join/mgps/fragment/s$c;
.super Ljava/lang/Object;
.source "CollectionModuleTwoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/s;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/s;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/s$c;->a:Lcom/join/mgps/fragment/s;

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

    add-int/lit8 p3, p3, -0x1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/s$c;->a:Lcom/join/mgps/fragment/s;

    invoke-static {p1}, Lcom/join/mgps/fragment/s;->O(Lcom/join/mgps/fragment/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/s$c;->a:Lcom/join/mgps/fragment/s;

    invoke-static {p1}, Lcom/join/mgps/fragment/s;->O(Lcom/join/mgps/fragment/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/s$c;->a:Lcom/join/mgps/fragment/s;

    invoke-static {p3}, Lcom/join/mgps/fragment/s;->P(Lcom/join/mgps/fragment/s;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_1
    :goto_0
    return-void
.end method

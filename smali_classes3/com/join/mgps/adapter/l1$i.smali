.class Lcom/join/mgps/adapter/l1$i;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$i;->b:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$i;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$i;->b:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/adapter/l1$i;->a:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/adapter/l1$i;->b:Lcom/join/mgps/adapter/l1;

    invoke-static {p2}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

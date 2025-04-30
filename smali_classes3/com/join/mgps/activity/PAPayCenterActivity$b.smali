.class Lcom/join/mgps/activity/PAPayCenterActivity$b;
.super Ljava/lang/Object;
.source "PAPayCenterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PAPayCenterActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PAPayCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PAPayCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$b;->a:Lcom/join/mgps/activity/PAPayCenterActivity;

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "click position"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    add-int/lit8 p3, p3, -0x2

    if-gez p3, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$b;->a:Lcom/join/mgps/activity/PAPayCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/PAPayCenterActivity;->k:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayHistoryInfo;

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/PAPayCenterActivity$b;->a:Lcom/join/mgps/activity/PAPayCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/PAPayCenterActivity;->j:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/activity/PapayPayDetialActivity_;->E0(Landroid/content/Context;)Lcom/join/mgps/activity/PapayPayDetialActivity_$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/PapayPayDetialActivity_$b;->a(Lcom/join/mgps/dto/PapayHistoryInfo;)Lcom/join/mgps/activity/PapayPayDetialActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

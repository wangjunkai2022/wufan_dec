.class Lcom/join/mgps/adapter/s2$a;
.super Ljava/lang/Object;
.source "MGInformationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/s2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/InformationListDataBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/s2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/s2;Lcom/join/mgps/dto/InformationListDataBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/s2$a;->c:Lcom/join/mgps/adapter/s2;

    iput-object p2, p0, Lcom/join/mgps/adapter/s2$a;->a:Lcom/join/mgps/dto/InformationListDataBean;

    iput p3, p0, Lcom/join/mgps/adapter/s2$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/s2$a;->c:Lcom/join/mgps/adapter/s2;

    invoke-static {p1}, Lcom/join/mgps/adapter/s2;->a(Lcom/join/mgps/adapter/s2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2_;->M1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/s2$a;->a:Lcom/join/mgps/dto/InformationListDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;->c(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/s2$a;->a:Lcom/join/mgps/dto/InformationListDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;->d(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/s2$a;->c:Lcom/join/mgps/adapter/s2;

    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    iput-object v0, p1, Lcom/join/mgps/adapter/s2;->a:Lcom/join/mgps/dto/ExtBean;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/s2$a;->c:Lcom/join/mgps/adapter/s2;

    iget-object p1, p1, Lcom/join/mgps/adapter/s2;->a:Lcom/join/mgps/dto/ExtBean;

    sget-object v0, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/s2$a;->c:Lcom/join/mgps/adapter/s2;

    invoke-static {p1}, Lcom/join/mgps/adapter/s2;->a(Lcom/join/mgps/adapter/s2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/adapter/s2$a;->c:Lcom/join/mgps/adapter/s2;

    iget-object p1, p1, Lcom/join/mgps/adapter/s2;->a:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/adapter/s2$a;->c:Lcom/join/mgps/adapter/s2;

    iget-object p1, p1, Lcom/join/mgps/adapter/s2;->a:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/join/mgps/adapter/s2$a;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/s2$a;->c:Lcom/join/mgps/adapter/s2;

    invoke-static {p1}, Lcom/join/mgps/adapter/s2;->a(Lcom/join/mgps/adapter/s2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    const-string v4, "article"

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->D2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

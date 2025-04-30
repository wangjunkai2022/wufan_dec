.class Lcom/join/mgps/adapter/p5$a;
.super Ljava/lang/Object;
.source "SimulatorAreaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/p5;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

.field final synthetic b:Lcom/join/mgps/adapter/p5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p5;Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p5$a;->b:Lcom/join/mgps/adapter/p5;

    iput-object p2, p0, Lcom/join/mgps/adapter/p5$a;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/p5$a;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/p5$a;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/p5$a;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/p5$a;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/p5$a;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/p5$a;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/p5$a;->b:Lcom/join/mgps/adapter/p5;

    invoke-static {v1}, Lcom/join/mgps/adapter/p5;->a(Lcom/join/mgps/adapter/p5;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

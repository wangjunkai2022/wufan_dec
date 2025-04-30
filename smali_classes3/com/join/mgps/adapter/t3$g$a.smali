.class Lcom/join/mgps/adapter/t3$g$a;
.super Ljava/lang/Object;
.source "PaPaStandAloneV2Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t3$g;->d(Lcom/join/mgps/adapter/t3$h;Lcom/join/mgps/dto/StandAloneListBean$ListBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/StandAloneListBean$ListBean;

.field final synthetic b:Lcom/join/mgps/adapter/t3$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t3$g;Lcom/join/mgps/dto/StandAloneListBean$ListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t3$g$a;->b:Lcom/join/mgps/adapter/t3$g;

    iput-object p2, p0, Lcom/join/mgps/adapter/t3$g$a;->a:Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/t3$g$a;->b:Lcom/join/mgps/adapter/t3$g;

    invoke-static {p1}, Lcom/join/mgps/adapter/t3$g;->a(Lcom/join/mgps/adapter/t3$g;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/PaPaBannerListActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->e(I)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->a(Z)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->b(Z)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/t3$g$a;->a:Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->c(Ljava/lang/String;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/t3$g$a;->a:Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->d(Ljava/lang/String;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

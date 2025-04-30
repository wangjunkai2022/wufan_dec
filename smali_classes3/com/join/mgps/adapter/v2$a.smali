.class Lcom/join/mgps/adapter/v2$a;
.super Ljava/lang/Object;
.source "ManageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/v2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/v2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v2$a;->a:Lcom/join/mgps/adapter/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$a;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_;->r1(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/v2$a;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {v0}, Lcom/join/mgps/adapter/v2;->a(Lcom/join/mgps/adapter/v2;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$a;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/b;->z(Z)V

    return-void
.end method

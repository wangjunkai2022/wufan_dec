.class Lcom/join/mgps/adapter/r1$z0$a;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r1$z0;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/r1$z0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1$z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$z0$a;->a:Lcom/join/mgps/adapter/r1$z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yijianjineng"

    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/p;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$z0$a;->a:Lcom/join/mgps/adapter/r1$z0;

    iget-object v0, v0, Lcom/join/mgps/adapter/r1$z0;->a:Lcom/join/mgps/adapter/r1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u4e00\u952e\u6280\u80fd"

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/adapter/r1;->r(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

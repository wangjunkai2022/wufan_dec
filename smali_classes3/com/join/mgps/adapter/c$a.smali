.class Lcom/join/mgps/adapter/c$a;
.super Ljava/lang/Object;
.source "ChoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/c;->l(Lcom/join/mgps/adapter/c$n;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/c$i0;

.field final synthetic b:Lcom/join/mgps/adapter/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$a;->b:Lcom/join/mgps/adapter/c;

    iput-object p2, p0, Lcom/join/mgps/adapter/c$a;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/c$a;->b:Lcom/join/mgps/adapter/c;

    iget-object v0, p0, Lcom/join/mgps/adapter/c$a;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/c;->j(Lcom/join/mgps/dto/BannerBean;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/c$a;->b:Lcom/join/mgps/adapter/c;

    invoke-static {p1}, Lcom/join/mgps/adapter/c;->a(Lcom/join/mgps/adapter/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/adapter/c$a;->b:Lcom/join/mgps/adapter/c;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/c;->a(Lcom/join/mgps/adapter/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/adapter/c$a;->a:Lcom/join/mgps/adapter/c$i0;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/c$a;->a:Lcom/join/mgps/adapter/c$i0;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/adapter/c$i0;->e()Ljava/lang/String;

    move-result-object v4

    const-string v3, "todayButton"

    const-string v5, "\u7cbe\u9009\u4e13\u9898"

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->c2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

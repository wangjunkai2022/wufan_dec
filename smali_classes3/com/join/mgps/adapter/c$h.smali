.class Lcom/join/mgps/adapter/c$h;
.super Ljava/lang/Object;
.source "ChoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/c;->z(Lcom/join/mgps/adapter/c$f0;I)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/c$h;->b:Lcom/join/mgps/adapter/c;

    iput-object p2, p0, Lcom/join/mgps/adapter/c$h;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/c$h;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/c$h;->b:Lcom/join/mgps/adapter/c;

    iget-object v0, p0, Lcom/join/mgps/adapter/c$h;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/c$h;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/c$h;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getSp_tpl_two_position()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/c$h;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v3}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/join/mgps/adapter/c;->h(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/c$h;->b:Lcom/join/mgps/adapter/c;

    invoke-static {p1}, Lcom/join/mgps/adapter/c;->a(Lcom/join/mgps/adapter/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/adapter/c$h;->b:Lcom/join/mgps/adapter/c;

    .line 4
    invoke-static {p1}, Lcom/join/mgps/adapter/c;->a(Lcom/join/mgps/adapter/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/adapter/c$h;->a:Lcom/join/mgps/adapter/c$i0;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/c$h;->a:Lcom/join/mgps/adapter/c$i0;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/c$i0;->e()Ljava/lang/String;

    move-result-object v4

    const-string v3, "adButton"

    const-string v5, "\u5e7f\u544a\u8d5e\u52a9"

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->c2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

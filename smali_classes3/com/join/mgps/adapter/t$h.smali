.class Lcom/join/mgps/adapter/t$h;
.super Ljava/lang/Object;
.source "FightAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/db/tables/FightMainTable;

.field final synthetic b:Lcom/join/mgps/adapter/t;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t;Lcom/join/mgps/db/tables/FightMainTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t$h;->b:Lcom/join/mgps/adapter/t;

    iput-object p2, p0, Lcom/join/mgps/adapter/t$h;->a:Lcom/join/mgps/db/tables/FightMainTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/t$h;->a:Lcom/join/mgps/db/tables/FightMainTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getJump_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/t$h;->a:Lcom/join/mgps/db/tables/FightMainTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/t$h;->a:Lcom/join/mgps/db/tables/FightMainTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/t$h;->a:Lcom/join/mgps/db/tables/FightMainTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/t$h;->a:Lcom/join/mgps/db/tables/FightMainTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/t$h;->b:Lcom/join/mgps/adapter/t;

    invoke-static {v1}, Lcom/join/mgps/adapter/t;->b(Lcom/join/mgps/adapter/t;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

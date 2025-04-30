.class Lcom/join/mgps/adapter/n2$a$a;
.super Ljava/lang/Object;
.source "HotVoucherAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/n2$a;->a(Lcom/join/mgps/dto/AccountVoucherGameBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AccountVoucherGameBean;

.field final synthetic b:Lcom/join/mgps/adapter/n2$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/n2$a;Lcom/join/mgps/dto/AccountVoucherGameBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a$a;->b:Lcom/join/mgps/adapter/n2$a;

    iput-object p2, p0, Lcom/join/mgps/adapter/n2$a$a;->a:Lcom/join/mgps/dto/AccountVoucherGameBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/adapter/n2$a$a;->b:Lcom/join/mgps/adapter/n2$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/n2$a;->g:Lcom/join/mgps/adapter/n2;

    invoke-static {p1}, Lcom/join/mgps/adapter/n2;->a(Lcom/join/mgps/adapter/n2;)Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/adapter/n2$a$a;->a:Lcom/join/mgps/dto/AccountVoucherGameBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/n2$a$a;->a:Lcom/join/mgps/dto/AccountVoucherGameBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getGame_tpl()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/n2$a$a;->a:Lcom/join/mgps/dto/AccountVoucherGameBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v4

    iget-object p1, p0, Lcom/join/mgps/adapter/n2$a$a;->a:Lcom/join/mgps/dto/AccountVoucherGameBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

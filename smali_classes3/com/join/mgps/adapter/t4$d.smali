.class Lcom/join/mgps/adapter/t4$d;
.super Ljava/lang/Object;
.source "PapaMainV2Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t4;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field final synthetic b:Lcom/join/mgps/adapter/t4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$d;->b:Lcom/join/mgps/adapter/t4;

    iput-object p2, p0, Lcom/join/mgps/adapter/t4$d;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/t4$d;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/t4$d;->b:Lcom/join/mgps/adapter/t4;

    invoke-static {v1}, Lcom/join/mgps/adapter/t4;->m(Lcom/join/mgps/adapter/t4;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/t4$d;->b:Lcom/join/mgps/adapter/t4;

    iget-object v0, p0, Lcom/join/mgps/adapter/t4$d;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/t4;->n(Lcom/join/mgps/adapter/t4;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/t4$d;->b:Lcom/join/mgps/adapter/t4;

    iget-object v0, p0, Lcom/join/mgps/adapter/t4$d;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/t4;->p(Lcom/join/mgps/adapter/t4;Ljava/lang/String;)V

    return-void
.end method

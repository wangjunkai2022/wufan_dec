.class public final synthetic Lcom/join/mgps/adapter/c6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/e6;

.field public final synthetic b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/c6;->a:Lcom/join/mgps/adapter/e6;

    iput-object p2, p0, Lcom/join/mgps/adapter/c6;->b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    iput-object p3, p0, Lcom/join/mgps/adapter/c6;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/join/mgps/adapter/c6;->a:Lcom/join/mgps/adapter/e6;

    iget-object v1, p0, Lcom/join/mgps/adapter/c6;->b:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    iget-object v2, p0, Lcom/join/mgps/adapter/c6;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/adapter/e6;->c(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

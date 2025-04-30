.class public final synthetic Lcom/join/mgps/adapter/w5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/x5;

.field public final synthetic b:Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/x5;Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/w5;->a:Lcom/join/mgps/adapter/x5;

    iput-object p2, p0, Lcom/join/mgps/adapter/w5;->b:Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/w5;->a:Lcom/join/mgps/adapter/x5;

    iget-object v1, p0, Lcom/join/mgps/adapter/w5;->b:Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/x5;->a(Lcom/join/mgps/adapter/x5;Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;Landroid/view/View;)V

    return-void
.end method

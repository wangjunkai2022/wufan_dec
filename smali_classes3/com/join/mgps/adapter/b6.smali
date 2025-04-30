.class public final synthetic Lcom/join/mgps/adapter/b6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/e6;

.field public final synthetic b:Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/b6;->a:Lcom/join/mgps/adapter/e6;

    iput-object p2, p0, Lcom/join/mgps/adapter/b6;->b:Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/b6;->a:Lcom/join/mgps/adapter/e6;

    iget-object v1, p0, Lcom/join/mgps/adapter/b6;->b:Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/e6;->a(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;Landroid/view/View;)V

    return-void
.end method

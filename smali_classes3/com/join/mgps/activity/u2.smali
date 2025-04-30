.class public final synthetic Lcom/join/mgps/activity/u2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/SimulatorExitPlayActivity;

.field public final synthetic b:Lcom/join/mgps/dto/AppBeanMain;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/u2;->a:Lcom/join/mgps/activity/SimulatorExitPlayActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/u2;->b:Lcom/join/mgps/dto/AppBeanMain;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/u2;->a:Lcom/join/mgps/activity/SimulatorExitPlayActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/u2;->b:Lcom/join/mgps/dto/AppBeanMain;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->D0(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V

    return-void
.end method

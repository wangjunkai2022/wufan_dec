.class Lcom/join/mgps/activity/l0$n;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/l0;->G0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$n;->a:Lcom/join/mgps/activity/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l0$n;->a:Lcom/join/mgps/activity/l0;

    iget-object v0, v0, Lcom/join/mgps/activity/l0;->G:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/l0$n;->a:Lcom/join/mgps/activity/l0;

    iget-object v0, v0, Lcom/join/mgps/activity/l0;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

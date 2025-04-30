.class Lcom/join/mgps/activity/l0$s;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt.java"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/l0;->b1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/l0$s;->a:Lcom/join/mgps/activity/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l0$s;->a:Lcom/join/mgps/activity/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u4e91\u5b58\u6863"

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/l0;->h0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

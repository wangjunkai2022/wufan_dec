.class Lcom/join/mgps/activity/GameMainActivityv2$c;
.super Ljava/lang/Object;
.source "GameMainActivityv2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivityv2;->r(Lcom/join/mgps/dto/GameMainDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameMainPostBean;

.field final synthetic b:Lcom/join/mgps/activity/GameMainActivityv2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivityv2;Lcom/join/mgps/dto/GameMainPostBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$c;->b:Lcom/join/mgps/activity/GameMainActivityv2;

    iput-object p2, p0, Lcom/join/mgps/activity/GameMainActivityv2$c;->a:Lcom/join/mgps/dto/GameMainPostBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2$c;->b:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2$c;->a:Lcom/join/mgps/dto/GameMainPostBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainPostBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

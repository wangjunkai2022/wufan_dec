.class Lcom/papa91/activity/EmuBaseActivity$27;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Lcom/papa91/view/DragProgressView$OnProduceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$27;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProduce()V
    .locals 2

    const-string v0, "FCProduceBanner"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->sendStatEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

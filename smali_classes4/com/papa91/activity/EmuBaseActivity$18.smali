.class Lcom/papa91/activity/EmuBaseActivity$18;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->creatFrameLayout()V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$18;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$18;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->raseVipToMgsim(I)V

    return-void
.end method

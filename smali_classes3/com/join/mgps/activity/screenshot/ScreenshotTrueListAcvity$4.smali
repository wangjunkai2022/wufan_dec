.class Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$4;
.super Ljava/lang/Object;
.source "ScreenshotTrueListAcvity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->ChangIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->access$000(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

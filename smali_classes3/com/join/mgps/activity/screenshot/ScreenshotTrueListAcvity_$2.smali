.class Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$2;
.super Ljava/lang/Object;
.source "ScreenshotTrueListAcvity_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;

    invoke-virtual {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->back()V

    return-void
.end method

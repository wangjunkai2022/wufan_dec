.class Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$2;
.super Ljava/lang/Object;
.source "PlugDownDialogAcitivity_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;

    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->ok()V

    return-void
.end method

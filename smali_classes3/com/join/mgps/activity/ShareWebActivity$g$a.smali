.class Lcom/join/mgps/activity/ShareWebActivity$g$a;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$g;->a(Lcom/tbruyelle/rxpermissions2/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$a;->b:Lcom/join/mgps/activity/ShareWebActivity$g;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$g$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$a;->b:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$a;->b:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g$a;->b:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$g$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->E0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g$a;->b:Lcom/join/mgps/activity/ShareWebActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->R0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

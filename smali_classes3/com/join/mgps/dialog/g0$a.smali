.class Lcom/join/mgps/dialog/g0$a;
.super Ljava/lang/Object;
.source "DownloadPathSetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/g0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0$a;->a:Lcom/join/mgps/dialog/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v0, "12410"

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/g0$a;->a:Lcom/join/mgps/dialog/g0;

    invoke-static {v1}, Lcom/join/mgps/dialog/g0;->a(Lcom/join/mgps/dialog/g0;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.class Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$a;
.super Ljava/lang/Object;
.source "DownloadChoiceUrlDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$a;->a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$a;->a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

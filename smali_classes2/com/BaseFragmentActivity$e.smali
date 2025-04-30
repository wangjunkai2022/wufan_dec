.class Lcom/BaseFragmentActivity$e;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/d$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->showDownLoadVersionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/d;

.field final synthetic b:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;Lcom/join/mgps/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$e;->b:Lcom/BaseFragmentActivity;

    iput-object p2, p0, Lcom/BaseFragmentActivity$e;->a:Lcom/join/mgps/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseFragmentActivity$e;->a:Lcom/join/mgps/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

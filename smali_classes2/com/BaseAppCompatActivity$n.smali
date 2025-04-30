.class Lcom/BaseAppCompatActivity$n;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/d$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->showDownLoadVersionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/d;

.field final synthetic b:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;Lcom/join/mgps/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$n;->b:Lcom/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/BaseAppCompatActivity$n;->a:Lcom/join/mgps/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity$n;->a:Lcom/join/mgps/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

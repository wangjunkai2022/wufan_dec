.class Lcom/BaseAppCompatActivity$k;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$k;->a:Lcom/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity$k;->a:Lcom/BaseAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/BaseAppCompatActivity;->onNetworkChanged(I)V

    return-void
.end method

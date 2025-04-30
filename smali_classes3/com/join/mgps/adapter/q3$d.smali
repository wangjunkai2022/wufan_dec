.class Lcom/join/mgps/adapter/q3$d;
.super Ljava/lang/Object;
.source "NowWufunAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/q3;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/q3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/q3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q3$d;->a:Lcom/join/mgps/adapter/q3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.intent.nowwufun.everdaytab"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$d;->a:Lcom/join/mgps/adapter/q3;

    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
